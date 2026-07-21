// ################################################################################
// Part of PowerShell module : GenXdev.Helpers.Physics
// Original cmdlet filename  : Get-ProjectileRangeByInitialSpeedAndAngle.cs
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
Calculates the range of a projectile.
.DESCRIPTION
Uses the formula R = (v² sin(2θ)) / g for ideal projectile motion.
.EXAMPLE
```powershell
Get-ProjectileRangeByInitialSpeedAndAngle -InitialSpeedInMetersPerSecond 20 -AngleInDegrees 45 -As ""feet""
```

Calculates the range using the projectile motion formula.
.EXAMPLE
```powershell
Get-ProjectileRangeByInitialSpeedAndAngle 30 30
```

Calculates the range with positional parameters.
")]
    [Cmdlet(VerbsCommon.Get, "ProjectileRangeByInitialSpeedAndAngle")]
    [OutputType(typeof(double))]
    public class GetProjectileRangeByInitialSpeedAndAngleCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Initial speed in m/s
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 0,
            HelpMessage = "Initial speed in m/s"
        )]
        public double InitialSpeedInMetersPerSecond { get; set; }

        /// <summary>
        /// Launch angle in degrees
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 1,
            HelpMessage = "Launch angle in degrees"
        )]
        public double AngleInDegrees { get; set; }

        /// <summary>
        /// Gravity in m/s²
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 2,
            HelpMessage = "Gravity in m/s² (default: 9.81)"
        )]
        public double GravityInMetersPerSecondSquared { get; set; } = 9.81;

        /// <summary>
        /// Output unit for range
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 3,
            HelpMessage = "Output unit for range"
        )]
        [ValidateSet("meters", "kilometers", "centimeters", "millimeters", "feet", "inches", "miles", "yards")]
        public string As { get; set; } = "meters";

        /// <summary>
        /// Begin processing - initialization logic
        /// </summary>
        protected override void BeginProcessing()
        {
        }

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            // Convert angle from degrees to radians
            double thetaRad = AngleInDegrees * Math.PI / 180;

            // Calculate range using R = (v² sin(2θ)) / g
            double range = (InitialSpeedInMetersPerSecond * InitialSpeedInMetersPerSecond * Math.Sin(2 * thetaRad)) / GravityInMetersPerSecondSquared;

            // Convert the unit using PowerShell function
            string script = $"GenXdev\\Convert-PhysicsUnit -Value {range} -FromUnit 'meters' -ToUnit '{As}'";
            var results = InvokeCommand.InvokeScript(script);

            // Extract the result from the script invocation
            object result = results[0].BaseObject;

            // Write the result
            WriteObject(result);
        }

        /// <summary>
        /// End processing - cleanup logic
        /// </summary>
        protected override void EndProcessing()
        {
        }
    }
}