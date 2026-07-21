// ################################################################################
// Part of PowerShell module : GenXdev.Helpers.Physics
// Original cmdlet filename  : Get-WaveSpeedByFrequencyAndWavelength.cs
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

namespace GenXdev.Helpers.Physics
{
    [System.ComponentModel.Description(@"
.SYNOPSIS
Calculates wave speed.
.DESCRIPTION
Uses v = f λ.
.EXAMPLE
```powershell
Get-WaveSpeedByFrequencyAndWavelength -FrequencyInHertz 440 -WavelengthInMeters 0.78 -As ""km/h""
```

Calculates wave speed using v = f * λ.
.EXAMPLE
```powershell
Get-WaveSpeedByFrequencyAndWavelength 1000 0.34
```

Calculates wave speed with positional parameters.
")]
    [Cmdlet(VerbsCommon.Get, "WaveSpeedByFrequencyAndWavelength")]
    [OutputType(typeof(double))]
    public class GetWaveSpeedByFrequencyAndWavelengthCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Frequency in Hz
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 0,
            HelpMessage = "Frequency in Hz"
        )]
        public double FrequencyInHertz { get; set; }

        /// <summary>
        /// Wavelength in meters
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 1,
            HelpMessage = "Wavelength in meters"
        )]
        public double WavelengthInMeters { get; set; }

        /// <summary>
        /// Output unit for speed
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 2,
            HelpMessage = "Output unit for speed"
        )]
        [ValidateSet("m/s", "km/h", "mph", "ft/s")]
        public string As { get; set; } = "m/s";

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            // Calculate wave speed using v = f * λ
            double speed = FrequencyInHertz * WavelengthInMeters;

            // Convert the unit using PowerShell function
            string script = $"GenXdev\\Convert-PhysicsUnit -Value {speed} -FromUnit 'm/s' -ToUnit '{As}'";
            var results = InvokeCommand.InvokeScript(script);

            // Extract the result from the script invocation
            object result = results[0].BaseObject;

            // Write the result
            WriteObject(result);
        }
    }
}