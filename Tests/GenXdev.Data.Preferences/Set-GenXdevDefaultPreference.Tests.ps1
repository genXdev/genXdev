Pester\Describe 'Set-GenXdevDefaultPreference' {

    Pester\BeforeAll {
        GenXdev\Remove-GenXdevPreference -Name 'TestDefault' -RemoveDefault
    }

    Pester\AfterAll {
        GenXdev\Remove-GenXdevPreference -Name 'TestDefault' -RemoveDefault
    }

    Pester\It 'Should store default preference value' {
        GenXdev\Set-GenXdevDefaultPreference -Name 'TestDefault' -Value 'DefaultValue'
        $result = GenXdev\Get-GenXdevPreference -Name 'TestDefault'
        $result | Pester\Should -Be 'DefaultValue'
    }

    Pester\It 'Should sync across instances' {
        GenXdev\Set-GenXdevDefaultPreference -Name 'TestDefault' -Value 'SyncedValue'
        # Note: In a real test environment, you might need to verify this across different PS sessions
        $result = GenXdev\Get-GenXdevPreference -Name 'TestDefault'
        $result | Pester\Should -Be 'SyncedValue'
    }

    Pester\It 'Should handle null value by removing preference' {
        GenXdev\Set-GenXdevDefaultPreference -Name 'TestDefault' -Value 'DefaultValue'
        GenXdev\Set-GenXdevDefaultPreference -Name 'TestDefault' -Value $null
        $result = GenXdev\Get-GenXdevPreference -Name 'TestDefault'
        $result | Pester\Should -BeNullOrEmpty
    }
}