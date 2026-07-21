// ################################################################################
// Part of PowerShell module : GenXdev.Helpers.Physics
// Original cmdlet filename  : Get-SoundTravelDistanceByTime.cs
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
Calculates the distance sound travels in a given time.
.DESCRIPTION
Uses the formula distance = speed * time, with default speed of sound in air.
.EXAMPLE
```powershell
Get-SoundTravelDistanceByTime -TimeInSeconds 5 -Medium ""water"" -As ""kilometers""
```

Calculates how far sound travels in water over 5 seconds and converts the result to kilometers.
.EXAMPLE
```powershell
Get-SoundTravelDistanceByTime 10 -SpeedOfSoundInMetersPerSecond 1480
```

Calculates the distance using a specific speed of sound.
")]
    [Cmdlet(VerbsCommon.Get, "SoundTravelDistanceByTime")]
    [OutputType(typeof(double))]
    public class GetSoundTravelDistanceByTimeCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// The time in seconds
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 0,
            HelpMessage = "The time in seconds")]
        public double TimeInSeconds { get; set; }

        /// <summary>
        /// Speed of sound in m/s (default: 343)
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 1,
            ParameterSetName = "BySpeed",
            HelpMessage = "Speed of sound in m/s (default: 343)")]
        public double SpeedOfSoundInMetersPerSecond { get; set; } = 343;

        /// <summary>
        /// The medium through which sound travels
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 1,
            ParameterSetName = "ByMedium",
            HelpMessage = "The medium through which sound travels")]
        [ValidateSet("air", "water", "seawater", "steel", "glass", "lead", "gold", "copper", "rubber", "vacuum", "helium", "co2", "methane")]
        public string Medium { get; set; }

        /// <summary>
        /// The unit for the output distance
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 2,
            HelpMessage = "The unit for the output distance")]
        [ValidateSet("meters", "kilometers", "centimeters", "millimeters", "feet", "inches", "miles", "yards")]
        public string As { get; set; } = "meters";

        /// <summary>
        /// Begin processing - set speed based on medium if specified
        /// </summary>
        protected override void BeginProcessing()
        {
            // Check if using ByMedium parameter set
            if (this.ParameterSetName == "ByMedium")
            {
                // Set speed based on medium
                switch (this.Medium)
                {
                    case "air":
                        this.SpeedOfSoundInMetersPerSecond = 343;
                        break;
                    case "water":
                        this.SpeedOfSoundInMetersPerSecond = 1480;
                        break;
                    case "seawater":
                        this.SpeedOfSoundInMetersPerSecond = 1530;
                        break;
                    case "steel":
                        this.SpeedOfSoundInMetersPerSecond = 5960;
                        break;
                    case "glass":
                        this.SpeedOfSoundInMetersPerSecond = 4540;
                        break;
                    case "lead":
                        this.SpeedOfSoundInMetersPerSecond = 1210;
                        break;
                    case "gold":
                        this.SpeedOfSoundInMetersPerSecond = 3240;
                        break;
                    case "copper":
                        this.SpeedOfSoundInMetersPerSecond = 4600;
                        break;
                    case "rubber":
                        this.SpeedOfSoundInMetersPerSecond = 60;
                        break;
                    case "vacuum":
                        this.SpeedOfSoundInMetersPerSecond = 0;
                        break;
                    case "helium":
                        this.SpeedOfSoundInMetersPerSecond = 965;
                        break;
                    case "co2":
                        this.SpeedOfSoundInMetersPerSecond = 259;
                        break;
                    case "methane":
                        this.SpeedOfSoundInMetersPerSecond = 430;
                        break;
                }

                // Write verbose message about speed being used
                this.WriteVerbose($"Using speed of sound in {this.Medium}: {this.SpeedOfSoundInMetersPerSecond} m/s");
            }
        }

        /// <summary>
        /// Process record - calculate distance and convert units
        /// </summary>
        protected override void ProcessRecord()
        {
            // Calculate distance using formula: distance = speed * time
            double distance = this.SpeedOfSoundInMetersPerSecond * this.TimeInSeconds;

            // Use InvokeCommand to call the unit conversion function for exact compatibility
            var scriptBlock = ScriptBlock.Create("param($Value, $FromUnit, $ToUnit) GenXdev\\Convert-PhysicsUnit -Value $Value -FromUnit $FromUnit -ToUnit $ToUnit");
            var results = scriptBlock.Invoke(distance, "meters", this.As);

            // Output the result
            this.WriteObject(results[0]);
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