// ################################################################################
// Part of PowerShell module : GenXdev.Data.KeyValueStore
// Original cmdlet filename  : Sync-KeyValueStore.cs
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
Synchronizes local and OneDrive key-value store JSON files.
.DESCRIPTION
Performs two-way synchronization between local and OneDrive shadow JSON files using a last-modified timestamp strategy. Records are merged based on their last modification time, with newer versions taking precedence.
.EXAMPLE
```powershell
Sync-KeyValueStore
```

.EXAMPLE
```powershell
Sync-KeyValueStore -SynchronizationKey ""UserSettings""
```
")]
    [Cmdlet(VerbsData.Sync, "KeyValueStore")]
    public class SyncKeyValueStoreCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Identifies the synchronization scope for the operation
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 0,
            HelpMessage = "Key to identify synchronization scope")]
        public string SynchronizationKey { get; set; } = "Local";

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
            WriteVerbose($"Starting key-value store sync with key: {SynchronizationKey}");
        }

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            SyncKeyValueStore(SynchronizationKey, DatabasePath);
        }

        /// <summary>
        /// End processing - cleanup logic
        /// </summary>
        protected override void EndProcessing()
        {
            WriteVerbose("Sync operation completed");
        }
    }
}