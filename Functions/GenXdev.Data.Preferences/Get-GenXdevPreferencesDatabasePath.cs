// ################################################################################
// Part of PowerShell module : GenXdev.Data.Preferences
// Original cmdlet filename  : Get-GenXdevPreferencesDatabasePath.cs
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
Gets the configured database path for preference data files used in
GenXdev.Data operations.
.DESCRIPTION
* Retrieves the global database path used by the GenXdev.Data module for
  various preference storage and data operations.
* Checks Global variables first (unless SkipSession is specified), then
  falls back to persistent preferences, and finally uses system defaults.
.EXAMPLE
```powershell
Get-GenXdevPreferencesDatabasePath
```

Retrieves the database path from Global variables or preferences.
.EXAMPLE
```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

Skips the session variable and uses persistent preferences.
.EXAMPLE
```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

Clears the session setting before retrieving the path.
")]
    [Cmdlet(VerbsCommon.Get, "GenXdevPreferencesDatabasePath")]
    [OutputType(typeof(string))]
    public class GetGenXdevPreferencesDatabasePathCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Optional database path override
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 0,
            HelpMessage = "Optional database path override"
        )]
        [Alias("DatabasePath")]
        public string PreferencesDatabasePath { get; set; }

        /// <summary>
        /// Use alternative settings stored in session for Data preferences like Language, Database paths, etc
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
        /// Dont use alternative settings stored in session for Data preferences like Language, Database paths, etc
        /// </summary>
        [Parameter(
            Mandatory = false,
            HelpMessage = "Dont use alternative settings stored in session for Data preferences like Language, Database paths, etc"
        )]
        [Alias("FromPreferences")]
        public SwitchParameter SkipSession { get; set; }

        /// <summary>
        /// Begin processing - initialization logic
        /// </summary>
        protected override void BeginProcessing()
        {
        }

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            WriteObject(GetPreferencesDatabasePath(PreferencesDatabasePath, SessionOnly.ToBool(), ClearSession.ToBool(), SkipSession.ToBool()));
        }

        /// <summary>
        /// End processing - cleanup logic
        /// </summary>
        protected override void EndProcessing()
        {
        }
    }
}