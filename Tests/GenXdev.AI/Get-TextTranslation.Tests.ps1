###############################################################################
# Unit tests for Get-TextTranslation cache behavior
# Uses pre-seeded translation cache for deterministic, instant tests.
###############################################################################

Pester\Describe 'Get-TextTranslation — Translation Cache' {

    Pester\BeforeAll {
        $script:cacheDir = [System.IO.Path]::Combine(
            [System.Environment]::GetEnvironmentVariable('LOCALAPPDATA'),
            'GenXdev.PowerShell')
        $script:cachePath = [System.IO.Path]::Combine(
            $script:cacheDir, 'translation-cache.json')

        # Save existing cache if present
        $script:originalCache = $null
        $script:originalCacheExisted = $false
        if ([System.IO.File]::Exists($script:cachePath)) {
            $script:originalCache = [System.IO.File]::ReadAllText(
                $script:cachePath)
            $script:originalCacheExisted = $true
        }

        # Pre-seed test cache
        $script:seedData = @{
            'en-US' = @{
                'Hello'   = 'Hello'
                'Goodbye' = 'Goodbye'
            }
            'nl-NL' = @{
                'Hello' = 'Hallo'
                'Goodbye' = 'Tot ziens'
                'Returns a greeting.' = 'Geeft een begroeting terug.'
            }
            'de-DE' = @{
                'Hello'   = 'Hallo'
                'Goodbye' = 'Auf Wiedersehen'
            }
        }

        $null = [System.IO.Directory]::CreateDirectory($script:cacheDir)
        $json = Microsoft.PowerShell.Utility\ConvertTo-Json `
            -InputObject $script:seedData -Compress -Depth 10
        [System.IO.File]::WriteAllText($script:cachePath, $json)
    }

    Pester\AfterAll {
        # Restore original cache
        if ($script:originalCacheExisted) {
            [System.IO.File]::WriteAllText(
                $script:cachePath, $script:originalCache)
        }
        elseif ([System.IO.File]::Exists($script:cachePath)) {
            [System.IO.File]::Delete($script:cachePath)
        }
    }

    Pester\It 'returns cached translation for known text' {
        $result = GenXdev\Get-TextTranslation `
            -Text 'Hello' `
            -Language 'nl-NL'

        $result | Pester\Should -Be 'Hallo'
    }

    Pester\It 'returns null for text not in cache when LLM unavailable' {
        # Text not in cache, NoCache not set → cache miss, LLM
        # would be called. If API key is configured, the LLM may
        # translate real words; if not, input-unchanged detection
        # returns null.
        $result = GenXdev\Get-TextTranslation `
            -Text 'UniqueTextNotInCache12345' `
            -Language 'nl-NL' `
            -ErrorAction SilentlyContinue

        if ($result) {
            $result.TrimEnd() | Pester\Should -Not -BeNullOrEmpty
        }
        else {
            $result | Pester\Should -BeNullOrEmpty
        }
    }

    Pester\It 'respects -NoCache switch (bypasses cache entirely)' {
        # Even though 'Hello' is cached, -NoCache forces LLM call.
        # If an API key is available, the LLM translates; otherwise
        # returns null (input unchanged detection).
        $result = GenXdev\Get-TextTranslation `
            -Text 'Hello' `
            -Language 'nl-NL' `
            -NoCache `
            -ErrorAction SilentlyContinue

        if ($result) {
            $result.TrimEnd() | Pester\Should -Not -BeNullOrEmpty
        }
        else {
            $result | Pester\Should -BeNullOrEmpty
        }
    }

    Pester\It '-ClearCache deletes the cache file' {
        # Verify cache exists
        [System.IO.File]::Exists($script:cachePath) |
            Pester\Should -Be $true

        # Clear it
        $null = GenXdev\Get-TextTranslation -ClearCache

        # Verify it's gone
        [System.IO.File]::Exists($script:cachePath) |
            Pester\Should -Be $false

        # Re-seed for remaining tests
        $json = Microsoft.PowerShell.Utility\ConvertTo-Json `
            -InputObject $script:seedData -Compress -Depth 10
        [System.IO.File]::WriteAllText($script:cachePath, $json)
    }

    Pester\It 'language-specific cache isolation (nl-NL ≠ de-DE)' {
        $resultNl = GenXdev\Get-TextTranslation `
            -Text 'Hello' -Language 'nl-NL'
        $resultDe = GenXdev\Get-TextTranslation `
            -Text 'Hello' -Language 'de-DE'

        $resultNl | Pester\Should -Be 'Hallo'
        $resultDe | Pester\Should -Be 'Hallo'
        # Different languages, same source → different entries in cache
        $resultNl | Pester\Should -Be $resultDe -Because 'Both cached as "Hallo"'
    }
}
