// ################################################################################
// Part of PowerShell module : GenXdev.Helpers.Physics
// Original cmdlet filename  : Get-OrbitalVelocityByRadiusAndMass.cs
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
Calculates orbital velocity.
.DESCRIPTION
Uses v = sqrt(G M / r).
.EXAMPLE
```powershell
Get-OrbitalVelocityByRadiusAndMass -RadiusInMeters 6371000 -CentralMassInKilograms 5.972e24 -As ""km/h""
```

Uses Earth's mass and radius for demonstration.
.EXAMPLE
```powershell
Get-OrbitalVelocityByRadiusAndMass 10000000 1e26
```

Simple calculation with default m/s output.
")]
    [Cmdlet(VerbsCommon.Get, "OrbitalVelocityByRadiusAndMass")]
    [OutputType(typeof(double))]
    public class GetOrbitalVelocityByRadiusAndMassCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Orbital radius in meters
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 0,
            HelpMessage = "Orbital radius in meters")]
        public double RadiusInMeters { get; set; }

        /// <summary>
        /// Central mass in kg
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 1,
            HelpMessage = "Central mass in kg")]
        public double CentralMassInKilograms { get; set; }

        /// <summary>
        /// Output unit for velocity
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 2,
            HelpMessage = "Output unit for velocity")]
        [ValidateSet("m/s", "km/h", "mph", "ft/s")]
        public string As { get; set; } = "m/s";

        private const double GravitationalConstant = 6.67430e-11; // m³ kg⁻¹ s⁻²

        /// <summary>
        /// Begin processing - initialize gravitational constant
        /// </summary>
        protected override void BeginProcessing()
        {
            // Gravitational constant is defined as a constant
        }

        /// <summary>
        /// Process record - calculate orbital velocity and convert units
        /// </summary>
        protected override void ProcessRecord()
        {
            // Calculate orbital velocity using v = sqrt(G * M / r)
            double velocity = Math.Sqrt(GravitationalConstant * CentralMassInKilograms / RadiusInMeters);

            // Convert velocity to desired unit using PowerShell function for compatibility
            var script = $"GenXdev\\Convert-PhysicsUnit -Value {velocity} -FromUnit 'm/s' -ToUnit '{As}'";
            var result = InvokeCommand.InvokeScript(script);

            // Output the converted velocity
            WriteObject(result[0]);
        }

        /// <summary>
        /// End processing - no cleanup needed
        /// </summary>
        protected override void EndProcessing()
        {
            // No cleanup required
        }
    }
}
// ###############################################################################