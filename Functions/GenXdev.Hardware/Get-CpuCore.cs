// ################################################################################
// Part of PowerShell module : GenXdev.Hardware
// Original cmdlet filename  : Get-CpuCore.cs
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



using System.Management;
using System.Management.Automation;

namespace GenXdev.Hardware
{
    [System.ComponentModel.Description(@"
.SYNOPSIS
Calculates and returns the total number of logical CPU cores in the system.
.DESCRIPTION
Queries the system hardware through Windows Management Instrumentation (WMI) to determine the total number of logical CPU cores. The function accounts for hyperthreading by multiplying the physical core count by 2.
.EXAMPLE
```powershell
Get-CpuCore
```

Gets the total number of logical CPU cores.
")]
    [Cmdlet(VerbsCommon.Get, "CpuCore")]
    [OutputType(typeof(int))]
    public class GetCpuCoreCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Initialize counter for tracking total physical cores
        /// </summary>
        private int totalPhysicalCores = 0;

        /// <summary>
        /// Begin processing - initialization logic
        /// </summary>
        protected override void BeginProcessing()
        {
            WriteVerbose("Initializing CPU core count calculation");
        }

        /// <summary>
        /// Process record - main cmdlet logic for calculating CPU cores
        /// </summary>
        protected override void ProcessRecord()
        {
            // Query physical processors through WMI
            var searcher = new ManagementObjectSearcher("SELECT * FROM Win32_Processor");
            var processors = searcher.Get();

            WriteVerbose($"Retrieved {processors.Count} physical processors");

            // Sum cores from each processor
            foreach (ManagementObject processor in processors)
            {
                int cores = (int)(uint)processor["NumberOfCores"];
                totalPhysicalCores += cores;
                WriteVerbose($"Added {cores} cores from processor");
            }

            // Account for hyperthreading
            int logicalCores = totalPhysicalCores * 2;
            WriteVerbose($"Final count: {logicalCores} logical cores");

            WriteObject(logicalCores);
        }

        /// <summary>
        /// End processing - cleanup logic (empty for this cmdlet)
        /// </summary>
        protected override void EndProcessing()
        {
            // No cleanup needed
        }
    }
}