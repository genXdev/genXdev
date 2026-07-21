// ################################################################################
// Part of PowerShell module : GenXdev.Helpers.Physics
// Original cmdlet filename  : Get-BuoyantForceByDisplacedVolumeAndDensity.cs
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
Calculates buoyant force.
.DESCRIPTION
Uses F = ρ V g.
")]
    [Cmdlet(VerbsCommon.Get, "BuoyantForceByDisplacedVolumeAndDensity")]
    [OutputType(typeof(double))]
    public class GetBuoyantForceByDisplacedVolumeAndDensityCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Displaced volume in m³
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 0,
            HelpMessage = "Displaced volume in m³"
        )]
        public double DisplacedVolumeInCubicMeters { get; set; }

        /// <summary>
        /// Fluid density in kg/m³
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 1,
            HelpMessage = "Fluid density in kg/m³"
        )]
        public double FluidDensityInKilogramsPerCubicMeter { get; set; }

        /// <summary>
        /// Gravity in m/s² (default: 9.81)
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 2,
            HelpMessage = "Gravity in m/s² (default: 9.81)"
        )]
        public double GravityInMetersPerSecondSquared { get; set; } = 9.81;

        /// <summary>
        /// Output unit for force
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 3,
            HelpMessage = "Output unit for force"
        )]
        [ValidateSet("newtons", "poundforce")]
        public string As { get; set; } = "newtons";

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            // Calculate the buoyant force using F = ρ V g
            double force = FluidDensityInKilogramsPerCubicMeter * DisplacedVolumeInCubicMeters * GravityInMetersPerSecondSquared;

            // Convert the force to the desired unit using the existing PowerShell function
            var scriptBlock = ScriptBlock.Create($"GenXdev\\Convert-PhysicsUnit -Value {force} -FromUnit 'newtons' -ToUnit '{As}'");
            var results = scriptBlock.Invoke();

            // Output the converted result
            WriteObject(results[0]);
        }
    }
}
// ###############################################################################