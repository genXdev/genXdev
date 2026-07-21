// ################################################################################
// Part of PowerShell module : GenXdev.Data.Preferences
// Original cmdlet filename  : Remove-GenXdevPreference.cs
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

namespace GenXdev.Data.Preferences
{
    [System.ComponentModel.Description(@"
.SYNOPSIS
Removes a preference value from the GenXdev preferences store.
.DESCRIPTION
* Removes a preference value from the local store and optionally from the
  default store.
* Provides two parameter sets - one for local removal only and another for
  removing from both local and default stores.
* Ensures proper synchronization when modifying the default store.
.EXAMPLE
```powershell
Remove-GenXdevPreference -Name ""Theme""
```

Removes the ""Theme"" preference from the local store only.
.EXAMPLE
```powershell
removePreference ""Theme"" -RemoveDefault
```

Removes the ""Theme"" preference from both local and default stores.
")]
    [Cmdlet(VerbsCommon.Remove, "GenXdevPreference")]
    [Alias("removePreference")]
    public class RemoveGenXdevPreferenceCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// The name of the preference to remove
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 0,
            ValueFromPipeline = true,
            ValueFromPipelineByPropertyName = true,
            HelpMessage = "The name of the preference to remove"
        )]
        [ValidateNotNullOrEmpty]
        public string Name { get; set; }

        /// <summary>
        /// Switch to also remove the preference from defaults
        /// </summary>
        [Parameter(
            Mandatory = false,
            ParameterSetName = "All",
            HelpMessage = "Switch to also remove the preference from defaults"
        )]
        public SwitchParameter RemoveDefault { get; set; }

        /// <summary>
        /// Use alternative settings stored in session for Data preferences like Language,
        /// Database paths, etc
        /// </summary>
        [Parameter(
            Mandatory = false,
            HelpMessage = "Use alternative settings stored in session for Data preferences like Language, Database paths, etc"
        )]
        public SwitchParameter SessionOnly { get; set; }

        /// <summary>
        /// Clear the session setting (Global variable) before retrieving
        /// </summary>
        [Parameter(
            Mandatory = false,
            HelpMessage = "Clear the session setting (Global variable) before retrieving"
        )]
        public SwitchParameter ClearSession { get; set; }

        /// <summary>
        /// Database path for preference data files.
        /// Alias: DatabasePath
        /// </summary>
        [Parameter(
            Mandatory = false,
            HelpMessage = "Database path for preference data files"
        )]
        [Alias("DatabasePath")]
        public string PreferencesDatabasePath { get; set; }

        /// <summary>
        /// Dont use alternative settings stored in session for Data preferences like
        /// Language, Database paths, etc
        /// </summary>
        [Parameter(
            Mandatory = false,
            HelpMessage = "Dont use alternative settings stored in session for Data preferences like Language, Database paths, etc"
        )]
        public SwitchParameter SkipSession { get; set; }

        protected override void BeginProcessing()
        {
        }

        protected override void ProcessRecord()
        {
            RemoveGenXdevPreference(Name, RemoveDefault.ToBool(), PreferencesDatabasePath, SessionOnly.ToBool(), ClearSession.ToBool(), SkipSession.ToBool());
        }

        protected override void EndProcessing()
        {
        }
    }
}