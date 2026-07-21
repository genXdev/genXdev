// ################################################################################
// Part of PowerShell module : GenXdev.FileSystem
// Original cmdlet filename  : Set-LocationParent.cs
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

namespace GenXdev.FileSystem
{
    [System.ComponentModel.Description(@"
.SYNOPSIS
Changes the current location to the parent directory and lists its contents.
.DESCRIPTION
* Navigates up one directory level in the file system hierarchy.
* Displays the contents of the new current directory.
* Provides a convenient '..' alias for quick directory navigation.
.EXAMPLE
```powershell
Set-LocationParent
```

Changes to the parent directory and lists its contents.
.EXAMPLE
```powershell
..
```

Uses the alias to change to the parent directory.
")]
    [Cmdlet(VerbsCommon.Set, "LocationParent", SupportsShouldProcess = true)]
    [Alias("..")]
    [OutputType(typeof(PSObject))]
    public class SetLocationParentCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Begin processing - initialization logic
        /// </summary>
        protected override void BeginProcessing()
        {
            WriteVerbose("Changing location to parent directory");
        }

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            // Get current location
            var currentLocation = SessionState.Path.CurrentLocation;
            // Check if we can move up before attempting
            var parent = Path.GetDirectoryName(currentLocation.Path);
            if (parent != null)
            {
                // Prepare target description for ShouldProcess
                var target = $"from '{currentLocation}' to '{parent}'";
                // Only navigate if ShouldProcess returns true
                if (ShouldProcess(target, "Change location"))
                {
                    // Navigate up one directory level
                    SessionState.Path.SetLocation("..");
                }
            }
            else
            {
                WriteVerbose("Cannot go up further - at root level");
            }
            // Show contents of the new current directory
            var results = InvokeCommand.InvokeScript("Get-ChildItem");
            WriteObject(results, true);
        }

        /// <summary>
        /// End processing - cleanup logic
        /// </summary>
        protected override void EndProcessing()
        {
            // No cleanup needed
        }
    }
}