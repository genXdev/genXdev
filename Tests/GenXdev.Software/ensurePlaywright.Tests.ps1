###############################################################################
# Part of PowerShell module : GenXdev.Webbrowser.Playwright
# Original cmdlet filename  : ensurePlaywright.Tests.ps1
# Original author           : René Vaessen / GenXdev
# Version                   : 3.26.2026
###############################################################################

Pester\BeforeAll {
}

Pester\Describe "ensurePlaywright" {

    Pester\It "Should be defined as a function" {
        Microsoft.PowerShell.Core\Get-Command ensurePlaywright `
            -ErrorAction SilentlyContinue |
            Pester\Should -Not -BeNullOrEmpty
    }

    Pester\It "Should accept ForceConsent switch parameter" {
        $cmd = Microsoft.PowerShell.Core\Get-Command ensurePlaywright
        $cmd.Parameters['ForceConsent'] |
            Pester\Should -Not -BeNullOrEmpty
        $cmd.Parameters['ForceConsent'].ParameterType.Name |
            Pester\Should -Be 'SwitchParameter'
    }

    Pester\It "Should accept ConsentToThirdPartySoftwareInstallation switch parameter" {
        $cmd = Microsoft.PowerShell.Core\Get-Command ensurePlaywright
        $cmd.Parameters['ConsentToThirdPartySoftwareInstallation'] |
            Pester\Should -Not -BeNullOrEmpty
        $cmd.Parameters['ConsentToThirdPartySoftwareInstallation'].ParameterType.Name |
            Pester\Should -Be 'SwitchParameter'
    }

    Pester\It "Should be idempotent — calling twice should not throw" {
        # This test verifies idempotency: calling ensurePlaywright multiple
        # times should succeed without errors because it skips already-loaded
        # assemblies and already-installed browser binaries.
        # Use ConsentToThirdPartySoftwareInstallation to auto-consent
        # and set the persistent preference, bypassing the interactive prompt.
        {
            GenXdev\ensurePlaywright -ConsentToThirdPartySoftwareInstallation `
                -ErrorAction Stop
            GenXdev\ensurePlaywright -ConsentToThirdPartySoftwareInstallation `
                -ErrorAction Stop
        } | Pester\Should -Not -Throw
    }

    Pester\It "Should have Microsoft.Playwright assembly loaded after execution" {
        # After ensurePlaywright runs, the Microsoft.Playwright assembly
        # should be present in the current AppDomain.
        GenXdev\ensurePlaywright -ConsentToThirdPartySoftwareInstallation `
            -ErrorAction Stop

        $assembly = [System.AppDomain]::CurrentDomain.GetAssemblies() |
            Microsoft.PowerShell.Core\Where-Object {
                $PSItem.GetName().Name -eq 'Microsoft.Playwright'
            }

        $assembly | Pester\Should -Not -BeNullOrEmpty
    }
}
