// ################################################################################
// Part of PowerShell module : GenXdev.Data.Preferences
// Original cmdlet filename  : Get-GenXdevPreferenceNames.cs
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
Gets all preference names from session storage and database stores.
.DESCRIPTION
* Retrieves a unique list of preference names by combining keys from
  session storage (global variables) and both the local and default
  preference stores.
* Respects session management parameters to control which sources are
  queried.
.EXAMPLE
```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath ""C:\Data\prefs.db""
```

Returns a sorted array of unique preference names from session storage and
both stores using the specified database path.
.EXAMPLE
```powershell
getPreferenceNames -SessionOnly
```

Returns only preference names from session storage.
.EXAMPLE
```powershell
getPreferenceNames -SkipSession
```

Returns only preference names from database stores.
")]
    [Cmdlet(VerbsCommon.Get, "GenXdevPreferenceNames")]
    [Alias("getPreferenceNames")]
    [OutputType(typeof(string[]))]
    public class GetGenXdevPreferenceNamesCommand : PSGenXdevCmdlet
    {
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
        /// Database path for preference data files
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
        [Alias("FromPreferences")]
        public SwitchParameter SkipSession { get; set; }

        protected override void BeginProcessing()
        {
        }

        protected override void ProcessRecord()
        {
            var names = GetGenXdevPreferenceNames(PreferencesDatabasePath, SessionOnly.ToBool(), ClearSession.ToBool(), SkipSession.ToBool());
            foreach (var name in names)
            {
                WriteObject(name);
            }
        }

        protected override void EndProcessing()
        {
        }
    }
}