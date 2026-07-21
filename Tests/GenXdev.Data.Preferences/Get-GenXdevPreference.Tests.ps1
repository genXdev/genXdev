Pester\Describe 'Get-GenXdevPreference' {

    Pester\BeforeAll {

        Microsoft.PowerShell.Utility\Write-Verbose 'Setting up test environment'
        GenXdev\Remove-GenXdevPreference -Name 'TestPref1' -RemoveDefault
        GenXdev\Remove-GenXdevPreference -Name 'TestPref2' -RemoveDefault
        GenXdev\Set-GenXdevPreference -Name 'TestPref1' -Value 'LocalValue'
        GenXdev\Set-GenXdevDefaultPreference -Name 'TestPref2' -Value 'DefaultValue'
    }

    Pester\AfterAll {
        # Clean-up
        GenXdev\Remove-GenXdevPreference -Name 'TestPref1' -RemoveDefault
        GenXdev\Remove-GenXdevPreference -Name 'TestPref2' -RemoveDefault
    }

    Pester\It 'Should retrieve local preference value' {
        $result = GenXdev\Get-GenXdevPreference -Name 'TestPref1'
        $result | Pester\Should -Be 'LocalValue'
    }

    Pester\It 'Should fall back to default value when local not found' {
        $result = GenXdev\Get-GenXdevPreference -Name 'TestPref2'
        $result | Pester\Should -Be 'DefaultValue'
    }

    Pester\It 'Should return specified default when preference not found' {
        $result = GenXdev\Get-GenXdevPreference -Name 'NonExistent' -DefaultValue 'Fallback'
        $result | Pester\Should -Be 'Fallback'
    }

    Pester\It 'Should handle null default value' {
        $result = GenXdev\Get-GenXdevPreference -Name 'NonExistent'
        $result | Pester\Should -BeNullOrEmpty
    }

    Pester\It 'Should work on a different preferences set when setting a different database path in session once' {

        $testFile = (GenXdev\Expand-Path ([IO.Path]::GetTempFileName()) -DeleteExistingFile -CreateDirectory)

        GenXdev\Set-GenXdevPreferencesDatabasePath $testFile -SessionOnly

        $result = GenXdev\Get-GenXdevPreference -Name 'TestPref1'
        $result | Pester\Should -Not -Be 'LocalValue'

        GenXdev\Set-GenXdevPreference -Name 'TestPref1' -Value 'DifferentValue'

        $result = GenXdev\Get-GenXdevPreference -Name 'TestPref1'
        $result | Pester\Should -Be 'DifferentValue'

        GenXdev\Set-GenXdevPreferencesDatabasePath -ClearSession

        $result = GenXdev\Get-GenXdevPreference -Name 'TestPref1'
        $result | Pester\Should -Be 'LocalValue'

        $result = GenXdev\Get-GenXdevPreference -Name 'TestPref2'
        $result | Pester\Should -Be 'DefaultValue'

        $result = GenXdev\Get-GenXdevPreference -Name 'NonExistent' -DefaultValue 'Fallback'
        $result | Pester\Should -Be 'Fallback'

        $result = GenXdev\Get-GenXdevPreference -Name 'NonExistent'
        $result | Pester\Should -BeNullOrEmpty
    }
}