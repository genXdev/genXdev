// ################################################################################
// Part of PowerShell module : GenXdev.Helpers.Physics
// Original cmdlet filename  : Get-ApparentSizeAtArmLength.cs
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
Calculates the apparent size of an object at arm's length.
.DESCRIPTION
Computes the apparent size using small angle approximation.
.EXAMPLE
```powershell
Get-ApparentSizeAtArmLength -DistanceInMeters 10 -SizeInMeters 1 -As ""centimeters""
```

Calculates the apparent size of a 1 meter object at 10 meters distance.
.EXAMPLE
```powershell
Get-ApparentSizeAtArmLength 10 1
```

Calculates the apparent size using positional parameters.
")]
    [Cmdlet(VerbsCommon.Get, "ApparentSizeAtArmLength")]
    [OutputType(typeof(double))]
    public class GetApparentSizeAtArmLengthCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// The distance to the object in meters
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 0,
            HelpMessage = "The distance to the object in meters")]
        public double DistanceInMeters { get; set; }

        /// <summary>
        /// The actual size of the object in meters
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 1,
            HelpMessage = "The actual size of the object in meters")]
        public double SizeInMeters { get; set; }

        /// <summary>
        /// The arm length in meters (default: 0.7)
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 2,
            HelpMessage = "The arm length in meters (default: 0.7)")]
        public double ArmLengthInMeters { get; set; } = 0.7;

        /// <summary>
        /// The unit for the output size
        /// </summary>
        [Parameter(
            Mandatory = false,
            Position = 3,
            HelpMessage = "The unit for the output size")]
        [ValidateSet("millimeters", "centimeters", "meters", "inches", "feet")]
        public string As { get; set; } = "millimeters";

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            // Check if distance is valid
            if (DistanceInMeters <= 0)
            {
                // Create error record matching PowerShell behavior
                var exception = new ArgumentException("DistanceInMeters must be greater than zero.");
                var errorRecord = new ErrorRecord(exception, "InvalidDistance", ErrorCategory.InvalidArgument, DistanceInMeters);
                ThrowTerminatingError(errorRecord);
            }

            // Calculate angular size in radians
            double angularSize = SizeInMeters / DistanceInMeters;

            // Calculate apparent size in meters
            double apparentSizeMeters = angularSize * ArmLengthInMeters;

            // Convert to desired unit using the existing Convert-PhysicsUnit cmdlet
            var script = $"GenXdev\\Convert-PhysicsUnit -Value {apparentSizeMeters} -FromUnit 'meters' -ToUnit '{As}'";
            var results = InvokeCommand.InvokeScript(script);

            // Output the result
            WriteObject(results[0].BaseObject);
        }
    }
}
// ###############################################################################