// ################################################################################
// Part of PowerShell module : GenXdev.Data.KeyValueStore
// Original cmdlet filename  : Get-KeyValueStoreNames.cs
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
Retrieves the names of available key-value stores.
.DESCRIPTION
* Scans the key-value store directory for JSON files and extracts unique
  store names based on the specified synchronization key pattern.
* Ensures the store directory exists and synchronizes non-local stores if
  necessary.
.EXAMPLE
```powershell
Get-KeyValueStoreNames
```

Retrieves all store names from the default location.
.EXAMPLE
```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

Retrieves store names for the 'Local' synchronization scope.
.EXAMPLE
```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Retrieves all store names from a custom database path using the alias.
")]
    [Cmdlet(VerbsCommon.Get, "KeyValueStoreNames")]
    [OutputType(typeof(string))]
    [Alias("getstorenames")]
    public class GetKeyValueStoreNamesCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Key to identify synchronization scope, defaults to all ('%').
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 0,
            HelpMessage = "Key to identify synchronization scope, defaults to all")]
        public string SynchronizationKey { get; set; } = "%";

        /// <summary>
        /// Database path for key-value store data files.
        /// </summary>
        [Parameter(
            Mandatory = false,
            HelpMessage = "Database path for key-value store data files")]
        public string DatabasePath { get; set; }

        private string basePath;

        /// <summary>
        /// Begin processing - initialization logic
        /// </summary>
        protected override void BeginProcessing()
        {
            // Check if database path is provided, otherwise use default
            basePath = string.IsNullOrWhiteSpace(DatabasePath) ? GetGenXdevAppDataPath("KeyValueStore") : DatabasePath;

            // Output verbose message for store directory path
            WriteVerbose($"Using KeyValueStore directory: {basePath}");
        }

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            var names = GetKeyValueStoreNames(SynchronizationKey, DatabasePath);
            foreach (var name in names)
            {
                WriteObject(name);
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