Pester\Describe 'Set-GenXdevPreference' {

    Pester\BeforeAll {
        GenXdev\Remove-GenXdevPreference -Name 'Theme' -RemoveDefault
    }

    Pester\AfterAll {
        GenXdev\Remove-GenXdevPreference -Name 'Theme' -RemoveDefault
    }

    Pester\It 'Should store preference value locally' {
        GenXdev\Set-GenXdevPreference -Name 'Theme' -Value 'Dark'
        $result = GenXdev\Get-GenXdevPreference -Name 'Theme'
        $result | Pester\Should -Be 'Dark'
    }

    Pester\It 'Should update existing preference' {
        GenXdev\Set-GenXdevPreference -Name 'Theme' -Value 'Light'
        GenXdev\Set-GenXdevPreference -Name 'Theme' -Value 'Dark'
        $result = GenXdev\Get-GenXdevPreference -Name 'Theme'
        $result | Pester\Should -Be 'Dark'
    }

    Pester\It 'Should remove preference when value is null' {
        GenXdev\Set-GenXdevPreference -Name 'Theme' -Value 'Dark'
        GenXdev\Set-GenXdevPreference -Name 'Theme' -Value $null
        $result = GenXdev\Get-GenXdevPreference -Name 'Theme' -DefaultValue 'Default'
        $result | Pester\Should -Be 'Default'
    }
}