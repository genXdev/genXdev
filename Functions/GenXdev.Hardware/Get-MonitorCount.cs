// ################################################################################
// Part of PowerShell module : GenXdev.Hardware
// Original cmdlet filename  : Get-MonitorCount.cs
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

namespace GenXdev.Hardware
{
    [System.ComponentModel.Description(@"
.SYNOPSIS
Gets the total number of display monitors connected to the system.
.DESCRIPTION
* Uses the Windows Presentation Foundation (WPF) Screen helper class to
  accurately determine the number of physical display monitors currently
  connected to the system.
* This includes both active and detected but disabled monitors.
.EXAMPLE
```powershell
Get-MonitorCount
```

Returns the total number of connected monitors (e.g. 2).
.EXAMPLE
```powershell
$screens = Get-MonitorCount -Verbose
```

Returns monitor count with verbose output showing detection process.
")]
    [Cmdlet(VerbsCommon.Get, "MonitorCount")]
    [OutputType(typeof(int))]
    public class GetMonitorCountCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Begin processing - initialization logic
        /// </summary>
        protected override void BeginProcessing()
        {
            WriteVerbose("Starting monitor detection using WpfScreenHelper.Screen");
        }

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            // Get the count of all connected screens using Windows Forms Screen class
            int screenCount = Screen.AllScreens.Length;

            WriteVerbose($"Detected {screenCount} physical monitor(s) connected");

            // Return the total number of monitors found
            WriteObject(screenCount);
        }

        /// <summary>
        /// End processing - cleanup logic
        /// </summary>
        protected override void EndProcessing()
        {
        }
    }
}