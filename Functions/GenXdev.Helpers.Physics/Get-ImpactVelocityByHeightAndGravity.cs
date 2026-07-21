// ################################################################################
// Part of PowerShell module : GenXdev.Helpers.Physics
// Original cmdlet filename  : Get-ImpactVelocityByHeightAndGravity.cs
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
Calculates impact velocity from height.
.DESCRIPTION
Uses v = sqrt(2 g h) ignoring air resistance.
.EXAMPLE
```powershell
Get-ImpactVelocityByHeightAndGravity -HeightInMeters 100 -As ""km/h""
```

Calculates impact velocity for a 100 meter fall and outputs in km/h.
.EXAMPLE
```powershell
Get-ImpactVelocityByHeightAndGravity 50
```

Calculates impact velocity for a 50 meter fall using default units.
")]
    [Cmdlet(VerbsCommon.Get, "ImpactVelocityByHeightAndGravity")]
    [OutputType(typeof(double))]
    public class GetImpactVelocityByHeightAndGravityCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Height in meters
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 0,
            HelpMessage = "Height in meters")]
        public double HeightInMeters { get; set; }

        /// <summary>
        /// Gravity in m/s²
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 1,
            HelpMessage = "Gravity in m/s². Default 9.81.")]
        public double GravityInMetersPerSecondSquared { get; set; } = 9.81;

        /// <summary>
        /// Output unit for velocity
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 2,
            HelpMessage = "Output unit for velocity. Default 'm/s'.")]
        [ValidateSet("m/s", "km/h", "mph", "ft/s")]
        public string As { get; set; } = "m/s";

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            // Calculate impact velocity using v = sqrt(2 g h)
            double velocity = Math.Sqrt(2 * GravityInMetersPerSecondSquared * HeightInMeters);

            // Convert velocity to desired unit using GenXdev\\Convert-PhysicsUnit
            var script = $"GenXdev\\Convert-PhysicsUnit -Value {velocity} -FromUnit 'm/s' -ToUnit '{As}'";
            var results = InvokeCommand.InvokeScript(script);

            // Output the converted velocity value
            if (results != null && results.Count > 0)
            {
                WriteObject(results[0]);
            }
        }
    }
}