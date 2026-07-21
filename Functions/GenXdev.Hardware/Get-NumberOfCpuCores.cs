// ################################################################################
// Part of PowerShell module : GenXdev.Hardware
// Original cmdlet filename  : Get-NumberOfCpuCores.cs
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
Queries the system hardware through Windows Management Instrumentation (WMI) to determine the total number of logical CPU cores. The cmdlet accounts for hyperthreading by multiplying the physical core count by 2. This information is useful for optimizing parallel processing tasks and understanding system capabilities.
.EXAMPLE
```powershell
$cores = Get-NumberOfCpuCores
Write-Host ""System has $cores logical CPU cores available""
```

Retrieves the total number of logical CPU cores available on the system.
")]
    [Cmdlet(VerbsCommon.Get, "NumberOfCpuCores")]
    [OutputType(typeof(int))]
    public class GetNumberOfCpuCoresCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Begin processing - initialization logic
        /// </summary>
        protected override void BeginProcessing()
        {
            // Initialize counter for tracking total physical cores across all CPUs
            WriteVerbose("Starting CPU core count calculation");
        }

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            // Query all physical processors through WMI
            var searcher = new ManagementObjectSearcher("SELECT NumberOfCores FROM Win32_Processor");
            var processors = searcher.Get();

            WriteVerbose($"Found {processors.Count} physical processors");

            // Initialize counter for tracking total physical cores across all CPUs
            int totalPhysicalCores = 0;

            // Sum up the number of cores from each physical processor
            foreach (ManagementObject processor in processors)
            {
                int cores = (int)(uint)processor["NumberOfCores"];
                totalPhysicalCores += cores;
                WriteVerbose($"Added {cores} cores from processor");
            }

            // Calculate logical cores (assuming hyperthreading doubles the count)
            int logicalCores = totalPhysicalCores * 2;
            WriteVerbose($"Calculated {logicalCores} total logical cores");

            // Output the result
            WriteObject(logicalCores);
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