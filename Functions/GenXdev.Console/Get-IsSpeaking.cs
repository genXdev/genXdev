// ################################################################################
// Part of PowerShell module : GenXdev.Console
// Original cmdlet filename  : Get-IsSpeaking.cs
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

namespace GenXdev.Console
{
    [System.ComponentModel.Description(@"
.SYNOPSIS
Returns true if the text-to-speech engine is speaking.
.DESCRIPTION
Checks the state of both the default and customized speech synthesizers to determine if either is currently speaking. Returns true if speech is in progress, false otherwise.
.EXAMPLE
```powershell
Get-IsSpeaking
```

Returns true if the text-to-speech engine is speaking.

.EXAMPLE
```powershell
iss
```

Returns true if the text-to-speech engine is speaking (using alias).
")]
    [Cmdlet(VerbsCommon.Get, "IsSpeaking")]
    [Alias("iss")]
    [OutputType(typeof(System.Boolean))]
    public class GetIsSpeakingCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Begin processing - initialization logic
        /// </summary>
        protected override void BeginProcessing()
        {
            WriteVerbose("Checking speech synthesizer states...");
        }

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            try
            {
                // Execute the same PowerShell logic to maintain exact compatibility
                var results = InvokeCommand.InvokeScript(
                    "([GenXdev.Helpers.Misc]::Speech.IsSpeaking) -or " +
                    "([GenXdev.Helpers.Misc]::SpeechCustomized.IsSpeaking)");

                // Return the boolean result
                WriteObject(results[0].BaseObject);
            }
            catch (Exception ex)
            {
                // Return false if unable to check speech state, matching original behavior
                WriteVerbose("Failed to check speech state: " + ex.Message);
                WriteObject(false);
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