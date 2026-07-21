Pester\Describe 'Sync-KeyValueStore' {

    Pester\BeforeAll {
        Microsoft.PowerShell.Utility\Write-Verbose 'Setting up test environment'
        GenXdev\Remove-KeyFromStore -StoreName 'TestStore' -KeyName 'SyncKey' -SynchronizationKey 'TestSync'
        GenXdev\Remove-KeyFromStore -StoreName 'TestStore' -KeyName 'LocalKey' -SynchronizationKey 'Local'
    }

    Pester\AfterAll {

        GenXdev\Remove-KeyFromStore -StoreName 'TestStore' -KeyName 'SyncKey' -SynchronizationKey 'TestSync'
        GenXdev\Remove-KeyFromStore -StoreName 'TestStore' -KeyName 'LocalKey' -SynchronizationKey 'Local'
    }

    Pester\It 'Should sync between local and shadow databases' {
        GenXdev\Set-ValueByKeyInStore -StoreName 'TestStore' -KeyName 'SyncKey' -Value 'SyncValue' -SynchronizationKey 'TestSync'
        GenXdev\Sync-KeyValueStore -SynchronizationKey 'TestSync'

        # Check shadow database
        $shadowValue = GenXdev\Get-ValueByKeyFromStore -StoreName 'TestStore' -KeyName 'SyncKey' -SynchronizationKey 'TestSync'
        $shadowValue | Pester\Should -Be 'SyncValue'
    }

    Pester\It 'Should not sync Local synchronization key' {
        GenXdev\Set-ValueByKeyInStore -StoreName 'TestStore' -KeyName 'LocalKey' -Value 'LocalValue' -SynchronizationKey 'Local'
        GenXdev\Sync-KeyValueStore -SynchronizationKey 'Local'

        # Local sync Should not create shadow entry
        $shadowValue = GenXdev\Get-ValueByKeyFromStore -StoreName 'TestStore' -KeyName 'LocalKey' -SynchronizationKey 'Local'
        $shadowValue | Pester\Should -Be 'LocalValue'
    }
}