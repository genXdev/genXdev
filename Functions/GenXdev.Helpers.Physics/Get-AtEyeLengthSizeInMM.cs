// ################################################################################
// Part of PowerShell module : GenXdev.Helpers.Physics
// Original cmdlet filename  : Get-AtEyeLengthSizeInMM.cs
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
Calculates the apparent size in mm of an object at arm's length.
.DESCRIPTION
Computes the size an object would appear to be if viewed at average adult arm's length (approximately 0.7 meters), given its actual size and distance. The calculation uses the small angle approximation for angular size.
.EXAMPLE
```powershell
Get-AtEyeLengthSizeInMM -DistanceInMeters 10 -SizeInMeters 1
```

Calculates the apparent size at arm's length for an object 1 meter in size at 10 meters distance.
")]
    [Cmdlet(VerbsCommon.Get, "AtEyeLengthSizeInMM")]
    [OutputType(typeof(double))]
    public class GetAtEyeLengthSizeInMMCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// The distance to the object in meters.
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 0,
            HelpMessage = "The distance to the object in meters.")]
        [ValidateNotNull]
        public double DistanceInMeters { get; set; }

        /// <summary>
        /// The actual size of the object in meters.
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 1,
            HelpMessage = "The actual size of the object in meters.")]
        [ValidateNotNull]
        public double SizeInMeters { get; set; }

        /// <summary>
        /// The arm's length distance in meters. Default value is 0.7.
        /// </summary>
        [Parameter(
            Mandatory = false,
            HelpMessage = "The arm's length distance in meters. Default value is 0.7.")]
        public double EyeToArmLengthInMeters { get; set; } = 0.7;

        /// <summary>
        /// Begin processing - initialization logic
        /// </summary>
        protected override void BeginProcessing()
        {
            WriteVerbose("Starting calculation of apparent size at arm's length");
        }

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            // Validate input parameters
            if (DistanceInMeters <= 0)
            {
                // Create error record matching PowerShell behavior
                var errorRecord = new ErrorRecord(
                    new ArgumentException("DistanceInMeters must be greater than zero."),
                    "InvalidDistance",
                    ErrorCategory.InvalidArgument,
                    DistanceInMeters);
                WriteError(errorRecord);
                return;
            }

            // Calculate angular size (in radians, small angle approximation)
            double angularSize = SizeInMeters / DistanceInMeters;

            // Apparent size at arm's length in meters
            double apparentSizeMeters = angularSize * EyeToArmLengthInMeters;

            // Convert to mm
            double apparentSizeMM = apparentSizeMeters * 1000;

            WriteObject(apparentSizeMM);
        }

        /// <summary>
        /// End processing - cleanup logic
        /// </summary>
        protected override void EndProcessing()
        {
            // No cleanup needed
        }
    }
}