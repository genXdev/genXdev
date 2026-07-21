// ################################################################################
// Part of PowerShell module : GenXdev.Hardware
// Original cmdlet filename  : Get-HasCapableGpu.cs
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
Determines if a CUDA-capable GPU with sufficient memory is present.
.DESCRIPTION
Checks the system for CUDA-compatible GPUs with at least 4GB of video RAM. It uses Windows Management Instrumentation (WMI) to query installed video controllers and verify their memory capacity. This check is essential for AI workloads that require significant GPU memory.
.EXAMPLE
```powershell
$hasGpu = Get-HasCapableGpu
Write-Host ""System has capable GPU: $hasGpu""
```

Checks if the system has a CUDA-capable GPU with sufficient memory.
")]
    [Cmdlet(VerbsCommon.Get, "HasCapableGpu")]
    [OutputType(typeof(bool))]
    public class GetHasCapableGpuCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Begin processing - initialization logic
        /// </summary>
        protected override void BeginProcessing()
        {
            WriteVerbose("Starting GPU capability verification");
        }

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            // Define minimum required GPU memory (4GB in bytes)
            ulong requiredMemory = 1024UL * 1024UL * 1024UL * 4UL;

            // Query system for video controllers meeting memory requirement
            using (var searcher = new ManagementObjectSearcher("SELECT * FROM Win32_VideoController"))
            {
                var controllers = searcher.Get();
                int capableGpuCount = 0;

                foreach (ManagementObject controller in controllers)
                {
                    var adapterRam = controller["AdapterRAM"] as ulong?;
                    if (adapterRam.HasValue && adapterRam.Value >= requiredMemory)
                    {
                        capableGpuCount++;
                    }
                }

                // Output number of capable GPUs found for debugging
                WriteVerbose($"Detected {capableGpuCount} GPUs with 4GB+ RAM");

                // Return true if at least one capable GPU was found
                WriteObject(capableGpuCount > 0);
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