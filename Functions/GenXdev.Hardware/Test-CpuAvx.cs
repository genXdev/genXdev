// ################################################################################
// Part of PowerShell module : GenXdev.Hardware
// Original cmdlet filename  : Test-CpuAvx.cs
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
using System.Runtime.InteropServices;

namespace GenXdev.Hardware
{
    [System.ComponentModel.Description(@"
.SYNOPSIS
Tests whether the CPU supports AVX and AVX2 instruction sets.
.DESCRIPTION
* Checks if the processor supports AVX and AVX2 instruction sets using
  Windows API (kernel32.dll IsProcessorFeaturePresent).
* Returns an object with AVX and AVX2 boolean properties.
* Useful for determining hardware compatibility for AI/ML workloads.
.EXAMPLE
```powershell
Test-CpuAvx
```

Checks CPU instruction set support and returns AVX/AVX2 availability.
")]
    [Cmdlet(VerbsDiagnostic.Test, "CpuAvx")]
    public class TestCpuAvxCommand : Cmdlet
    {
        // Windows PF flags
        private const uint PF_AVX_INSTRUCTIONS_AVAILABLE = 12;
        private const uint PF_AVX2_INSTRUCTIONS_AVAILABLE = 13;

        [DllImport("kernel32.dll")]
        private static extern bool IsProcessorFeaturePresent(uint feature);

        protected override void ProcessRecord()
        {
            bool avx  = IsProcessorFeaturePresent(PF_AVX_INSTRUCTIONS_AVAILABLE);
            bool avx2 = IsProcessorFeaturePresent(PF_AVX2_INSTRUCTIONS_AVAILABLE);

            WriteObject(new
            {
                AVX  = avx,
                AVX2 = avx2
            });
        }
    }
}
