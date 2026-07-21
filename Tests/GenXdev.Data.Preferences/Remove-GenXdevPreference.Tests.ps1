Pester\Describe 'Remove-GenXdevPreference' {

    Pester\BeforeAll {
        GenXdev\Remove-GenXdevPreference -Name 'TestPref1' -RemoveDefault
    }

    Pester\AfterAll {
        GenXdev\Remove-GenXdevPreference -Name 'TestPref1' -RemoveDefault
    }

    Pester\BeforeEach {
        Microsoft.PowerShell.Utility\Write-Verbose 'Setting up test data'
        GenXdev\Remove-GenXdevPreference -Name 'TestPref1' -RemoveDefault
        GenXdev\Set-GenXdevPreference -Name 'TestPref1' -Value 'LocalValue'
        GenXdev\Set-GenXdevDefaultPreference -Name 'TestPref1' -Value 'DefaultValue'
    }

    Pester\It 'Should remove local preference' {
        GenXdev\Remove-GenXdevPreference -Name 'TestPref1'
        $result = GenXdev\Get-GenXdevPreference -Name 'TestPref1'
        $result | Pester\Should -Be 'DefaultValue' # Falls back to default
    }

    Pester\It 'Should remove both local and default preferences with -RemoveDefault' {
        GenXdev\Remove-GenXdevPreference -Name 'TestPref1' -RemoveDefault
        $result = GenXdev\Get-GenXdevPreference -Name 'TestPref1'
        $result | Pester\Should -BeNullOrEmpty
    }

    Pester\It 'Should not error when removing non-existent preference' {
        { GenXdev\Remove-GenXdevPreference -Name 'NonExistent' } | Pester\Should -Not -Throw
    }
}