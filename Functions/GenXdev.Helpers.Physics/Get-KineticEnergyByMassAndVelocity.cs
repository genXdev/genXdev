// ################################################################################
// Part of PowerShell module : GenXdev.Helpers.Physics
// Original cmdlet filename  : Get-KineticEnergyByMassAndVelocity.cs
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
Calculates kinetic energy.
.DESCRIPTION
Uses KE = 1/2 m v².
.EXAMPLE
```powershell
Get-KineticEnergyByMassAndVelocity -MassInKilograms 10 -VelocityInMetersPerSecond 5 -As ""calories""
```

Calculates kinetic energy for a 10kg mass moving at 5 m/s and outputs in calories.
.EXAMPLE
```powershell
Get-KineticEnergyByMassAndVelocity 5 10
```

Calculates kinetic energy for a 5kg mass moving at 10 m/s using positional parameters.
")]
    [Cmdlet(VerbsCommon.Get, "KineticEnergyByMassAndVelocity")]
    [OutputType(typeof(double))]
    public class GetKineticEnergyByMassAndVelocityCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Mass in kg
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 0,
            HelpMessage = "Mass in kg")]
        public double MassInKilograms { get; set; }

        /// <summary>
        /// Velocity in m/s
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 1,
            HelpMessage = "Velocity in m/s")]
        public double VelocityInMetersPerSecond { get; set; }

        /// <summary>
        /// Output unit for energy
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 2,
            HelpMessage = "Output unit for energy")]
        [ValidateSet("joules", "calories", "kilowatthours")]
        public string As { get; set; } = "joules";

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            // Calculate kinetic energy using KE = 1/2 m v²
            double energy = 0.5 * MassInKilograms * VelocityInMetersPerSecond * VelocityInMetersPerSecond;

            // Convert energy to desired unit using GenXdev\\Convert-PhysicsUnit
            var script = $"GenXdev\\Convert-PhysicsUnit -Value {energy} -FromUnit 'joules' -ToUnit '{As}'";
            var results = InvokeCommand.InvokeScript(script);

            // Output the converted energy value
            if (results != null && results.Count > 0)
            {
                WriteObject(results[0]);
            }
        }
    }
}