// ################################################################################
// Part of PowerShell module : GenXdev.Windows
// Original cmdlet filename  : Set-MonitorPowerOn.cs
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
using GenXdev.Helpers;

namespace GenXdev.Windows
{
    [System.ComponentModel.Description(@"
.SYNOPSIS
Turns the monitor power on.
.DESCRIPTION
Uses the Windows API through GenXdev.Helpers.WindowObj to wake up the monitor from sleep/power off state. This is useful for automation scripts that need to ensure the monitor is powered on.
.EXAMPLE
```powershell
Set-MonitorPowerOn
```

Turns the monitor power on.

.EXAMPLE
```powershell
wake-monitor
```

Turns the monitor power on using an alias.
")]
    [Cmdlet(VerbsCommon.Set, "MonitorPowerOn")]
    [Alias("wakemonitor", "monitoroff")]
    [OutputType(typeof(void))]
    public class SetMonitorPowerOnCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Begin processing - initialization logic
        /// </summary>
        protected override void BeginProcessing()
        {
            WriteVerbose("Attempting to wake monitor from sleep/power off state");
        }

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            // only proceed if ShouldProcess approves the action
            if (ShouldProcess("Monitor", "Power On"))
            {
                // call the windows api through our helper class to wake the monitor
                WindowObj.WakeMonitor();
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