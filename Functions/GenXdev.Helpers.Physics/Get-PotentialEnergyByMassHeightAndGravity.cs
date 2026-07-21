// ################################################################################
// Part of PowerShell module : GenXdev.Helpers.Physics
// Original cmdlet filename  : Get-PotentialEnergyByMassHeightAndGravity.cs
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
Calculates gravitational potential energy.
.DESCRIPTION
Uses PE = m g h.
.EXAMPLE
```powershell
Get-PotentialEnergyByMassHeightAndGravity -MassInKilograms 10 -HeightInMeters 5 -As ""calories""
```

Calculates the gravitational potential energy for a 10kg mass at a height of 5 meters, outputting the result in calories.
.EXAMPLE
```powershell
Get-PotentialEnergyByMassHeightAndGravity 5 10
```

Demonstrates using positional parameters to calculate potential energy.
")]
    [Cmdlet(VerbsCommon.Get, "PotentialEnergyByMassHeightAndGravity")]
    [OutputType(typeof(double))]
    public class GetPotentialEnergyByMassHeightAndGravityCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Mass in kg
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 0,
            HelpMessage = "Mass in kg"
        )]
        public double MassInKilograms { get; set; }

        /// <summary>
        /// Height in meters
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 1,
            HelpMessage = "Height in meters"
        )]
        public double HeightInMeters { get; set; }

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
        /// Output unit for energy
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 3,
            HelpMessage = "Output unit for energy"
        )]
        [ValidateSet("joules", "calories", "kilowatthours")]
        public string As { get; set; } = "joules";

        protected override void ProcessRecord()
        {
            // Calculate the potential energy in joules
            double energy = MassInKilograms * GravityInMetersPerSecondSquared * HeightInMeters;

            // Convert the energy to the desired unit using the PowerShell function
            var results = InvokeCommand.InvokeScript(
                $"GenXdev\\Convert-PhysicsUnit -Value {energy} -FromUnit 'joules' -ToUnit '{As}'"
            );

            // Output the result
            WriteObject(results[0]);
        }
    }
}