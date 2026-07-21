// ################################################################################
// Part of PowerShell module : GenXdev.Data.KeyValueStore
// Original cmdlet filename  : Get-StoreKeys.cs
// Original author           : René Vaessen / GenXdev
// Version                   : 3.26.2026
// ################################################################################
// Copyright (c) 2026 René Vaessen / GenXdev
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ################################################################################



using System.Management.Automation;

namespace GenXdev.Data.KeyValueStore
{
    [System.ComponentModel.Description(@"
.SYNOPSIS
Retrieves all key names for a given key-value store.
.DESCRIPTION
* Queries the KeyValueStore JSON file to retrieve all active (non-deleted)
  keys for a specified store.
* Can optionally filter by synchronization scope.
* Automatically initializes the directory structure if not found and
  handles synchronization for non-local stores.
.EXAMPLE
```powershell
Get-StoreKeys -StoreName ""ApplicationSettings"" -SynchronizationKey ""Local""
```

Retrieves all keys from the ApplicationSettings store for Local scope.
.EXAMPLE
```powershell
getkeys AppSettings
```

Retrieves keys using the alias.
")]
    [Cmdlet(VerbsCommon.Get, "StoreKeys")]
    [Alias("getkeys")]
    [OutputType(typeof(string))]
    public class GetStoreKeysCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// The name of the key-value store to query
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 0,
            HelpMessage = "Name of the store whose keys should be retrieved")]
        [ValidateNotNullOrEmpty]
        public string StoreName { get; set; }

        /// <summary>
        /// Optional scope identifier for synchronization
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 1,
            HelpMessage = "Key to identify synchronization scope, defaults to all")]
        public string SynchronizationKey { get; set; } = "%";

        /// <summary>
        /// Database path for key-value store data files
        /// </summary>
        [Parameter(
            Mandatory = false,
            HelpMessage = "Database path for key-value store data files")]
        public string DatabasePath { get; set; }

        /// <summary>
        /// Begin processing - initialization logic
        /// </summary>
        protected override void BeginProcessing()
        {
            WriteVerbose($"Initializing Get-StoreKeys for store: {StoreName}");
        }

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            var keys = GetStoreKeys(StoreName, SynchronizationKey, DatabasePath);
            foreach (var key in keys)
            {
                WriteObject(key);
            }
        }

        /// <summary>
        /// End processing - cleanup logic
        /// </summary>
        protected override void EndProcessing()
        {
        }
    }
}