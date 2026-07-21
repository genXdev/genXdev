// ################################################################################
// Part of PowerShell module : GenXdev.Data.KeyValueStore
// Original cmdlet filename  : Get-ValueByKeyFromStore.cs
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
Retrieves a value from a JSON-based key-value store.
.DESCRIPTION
* Retrieves a value for a specified key from a JSON file-based key-value
  store.
* Supports optional default values and synchronization across different
  scopes.
* Provides automatic directory initialization and synchronization.
.EXAMPLE
```powershell
Get-ValueByKeyFromStore -StoreName ""AppSettings"" -KeyName ""Theme"" -DefaultValue ""Dark""
```

Retrieves the ""Theme"" value from ""AppSettings"", returning ""Dark"" if not
found.
.EXAMPLE
```powershell
getvalue AppSettings Theme
```

Uses the 'getvalue' alias to retrieve a value.
")]
    [Cmdlet(VerbsCommon.Get, "ValueByKeyFromStore")]
    [Alias("getvalue")]
    [OutputType(typeof(string))]
    public class GetValueByKeyFromStoreCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// The name of the key-value store to query
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 0,
            HelpMessage = "Name of the store to retrieve the key from"
        )]
        public string StoreName { get; set; }

        /// <summary>
        /// The key whose value should be retrieved
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 1,
            HelpMessage = "Key to retrieve from the specified store"
        )]
        public string KeyName { get; set; }

        /// <summary>
        /// Optional default value to return if the key is not found
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 2,
            HelpMessage = "A optional default value"
        )]
        public string DefaultValue { get; set; }

        /// <summary>
        /// Optional key to identify synchronization scope
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 3,
            HelpMessage = "Key to identify synchronization scope"
        )]
        public string SynchronizationKey { get; set; } = "Local";

        /// <summary>
        /// Database path for key-value store data files
        /// </summary>
        [Parameter(
            Mandatory = false,
            HelpMessage = "Database path for key-value store data files"
        )]
        public string DatabasePath { get; set; }

        /// <summary>
        /// Process the request to retrieve the value
        /// </summary>
        protected override void ProcessRecord()
        {
            WriteObject(GetValueByKeyFromStore(StoreName, KeyName, DefaultValue, SynchronizationKey, DatabasePath));
        }
    }
}