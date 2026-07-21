// ################################################################################
// Part of PowerShell module : GenXdev.Helpers.Physics
// Original cmdlet filename  : Get-CentripetalAccelerationByVelocityAndRadius.cs
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
Calculates centripetal acceleration.
.DESCRIPTION
Uses a = v² / r.
.EXAMPLE
```powershell
Get-CentripetalAccelerationByVelocityAndRadius -VelocityInMetersPerSecond 10 -RadiusInMeters 5 -As ""g""
```

Calculates centripetal acceleration for velocity 10 m/s and radius 5 m, output in g units.
.EXAMPLE
```powershell
Get-CentripetalAccelerationByVelocityAndRadius 20 10
```

Calculates centripetal acceleration for velocity 20 m/s and radius 10 m using positional parameters.
")]
    [Cmdlet(VerbsCommon.Get, "CentripetalAccelerationByVelocityAndRadius")]
    [OutputType(typeof(double))]
    public class GetCentripetalAccelerationByVelocityAndRadiusCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Velocity in m/s
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 0,
            HelpMessage = "Velocity in m/s")]
        public double VelocityInMetersPerSecond { get; set; }

        /// <summary>
        /// Radius in meters
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 1,
            HelpMessage = "Radius in meters")]
        public double RadiusInMeters { get; set; }

        /// <summary>
        /// Output unit for acceleration
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 2,
            HelpMessage = "Output unit for acceleration")]
        [ValidateSet("m/s²", "g")]
        public string As { get; set; } = "m/s²";

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            // Calculate centripetal acceleration using a = v² / r
            double acceleration = (VelocityInMetersPerSecond * VelocityInMetersPerSecond) / RadiusInMeters;

            // Convert acceleration to desired unit using GenXdev\\Convert-PhysicsUnit
            var script = $"GenXdev\\Convert-PhysicsUnit -Value {acceleration} -FromUnit 'm/s²' -ToUnit '{As}'";
            var results = InvokeCommand.InvokeScript(script);

            // Output the converted acceleration value
            if (results != null && results.Count > 0)
            {
                WriteObject(results[0]);
            }
        }
    }
}