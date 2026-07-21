// ################################################################################
// Part of PowerShell module : GenXdev.Data.Preferences
// Original cmdlet filename  : Set-GenXdevPreferencesDatabasePath.cs
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
Sets the database path for preferences used in GenXdev.Data operations.
.DESCRIPTION
* Configures the global database path used by the GenXdev.Data module for
  various preference storage and data operations.
* Settings are stored in the current session (using Global variables) and
  can be cleared from the session (using -ClearSession).
.EXAMPLE
```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath ""C:\Data\Preferences.db""
```

Sets the database path in the current session (Global variable).
.EXAMPLE
```powershell
Set-GenXdevPreferencesDatabasePath ""C:\MyPreferences.db""
```

Sets the database path using positional parameter.
.EXAMPLE
```powershell
Set-GenXdevPreferencesDatabasePath ""C:\TempPrefs.db"" -SessionOnly
```

Sets the path only for the current session without persisting.
.EXAMPLE
```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Clears the Global variable for the database path.
")]
    [Cmdlet(VerbsCommon.Set, "GenXdevPreferencesDatabasePath")]
    public class SetGenXdevPreferencesDatabasePathCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// A database path where preference data files are located
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 0,
            HelpMessage = "A database path where preference data files are located"
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
        [Alias("FromPreferences")]
        public SwitchParameter SkipSession { get; set; }

        /// <summary>
        /// When specified, stores the setting only in the current session (Global
        /// variable) without persisting to preferences
        /// </summary>
        [Parameter(
            Mandatory = false,
            HelpMessage = "When specified, stores the setting only in the current session (Global variable) without persisting to preferences"
        )]
        public SwitchParameter SessionOnly { get; set; }

        /// <summary>
        /// When specified, clears only the session setting (Global variable) without
        /// affecting persistent preferences
        /// </summary>
        [Parameter(
            Mandatory = false,
            HelpMessage = "When specified, clears only the session setting (Global variable) without affecting persistent preferences"
        )]
        public SwitchParameter ClearSession { get; set; }

        /// <summary>
        /// Begin processing - validate parameters and expand path if needed
        /// </summary>
        protected override void BeginProcessing()
        {
            if ((!ClearSession.ToBool()) &&
                string.IsNullOrWhiteSpace(PreferencesDatabasePath))
            {
                var errorRecord = new ErrorRecord(
                    new ArgumentException("PreferencesDatabasePath parameter is required when not using -ClearSession"),
                    "MissingPreferencesDatabasePath",
                    ErrorCategory.InvalidArgument,
                    null);
                ThrowTerminatingError(errorRecord);
            }
        }

        /// <summary>
        /// Process record - handle clearing or setting the global variable
        /// </summary>
        protected override void ProcessRecord()
        {
            SetPreferencesDatabasePath(PreferencesDatabasePath, SkipSession.ToBool(), SessionOnly.ToBool(), ClearSession.ToBool());
        }

        /// <summary>
        /// End processing - no cleanup needed
        /// </summary>
        protected override void EndProcessing()
        {
        }
    }
}