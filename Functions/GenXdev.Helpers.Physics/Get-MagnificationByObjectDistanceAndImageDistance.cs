// ################################################################################
// Part of PowerShell module : GenXdev.Helpers.Physics
// Original cmdlet filename  : Get-MagnificationByObjectDistanceAndImageDistance.cs
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
Calculates magnification for a lens.
.DESCRIPTION
Uses m = - (image distance / object distance).
.EXAMPLE
```powershell
Get-MagnificationByObjectDistanceAndImageDistance -ObjectDistanceInMeters 0.5 -ImageDistanceInMeters 1
```

Calculates magnification with object distance 0.5m and image distance 1m.
.EXAMPLE
```powershell
Get-MagnificationByObjectDistanceAndImageDistance 0.3 0.6
```

Calculates magnification using positional parameters.
")]
    [Cmdlet(VerbsCommon.Get, "MagnificationByObjectDistanceAndImageDistance")]
    [OutputType(typeof(double))]
    public class GetMagnificationByObjectDistanceAndImageDistanceCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Object distance in meters
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 0,
            HelpMessage = "Object distance in meters")]
        public double ObjectDistanceInMeters { get; set; }

        /// <summary>
        /// Image distance in meters
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 1,
            HelpMessage = "Image distance in meters")]
        public double ImageDistanceInMeters { get; set; }

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            // Calculate magnification using the formula m = - (image distance / object distance)
            double magnification = -(ImageDistanceInMeters / ObjectDistanceInMeters);

            // Round to 4 decimal places and output the result
            WriteObject(System.Math.Round(magnification, 4));
        }
    }
}
// ###############################################################################