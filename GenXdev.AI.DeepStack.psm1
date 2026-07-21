<##############################################################################
Part of PowerShell module : GenXdev.AI.DeepStack
Original cmdlet filename  : Compare-ImageFaces.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Compares faces in two different images and returns their similarity using
DeepStack.

.DESCRIPTION
This function compares faces between two images to determine similarity. It
uses a local DeepStack face match API running on a configurable port and
returns a similarity score between 0.0 and 1.0. This is typically used for
matching identity documents with pictures of a person or verifying if two
photos show the same person.

.PARAMETER ImagePath1
The local path to the first image file to compare. This parameter accepts any
valid file path that can be resolved by the system.

.PARAMETER ImagePath2
The local path to the second image file to compare. This parameter accepts any
valid file path that can be resolved by the system.

.PARAMETER ContainerName
The name for the Docker container. This allows multiple DeepStack instances
or custom naming conventions. Default is "deepstack_face_recognition".

.PARAMETER VolumeName
The name for the Docker volume for persistent storage. This ensures face data
persists between container restarts. Default is "deepstack_face_data".

.PARAMETER ServicePort
The port number for the DeepStack service. Must be between 1 and 65535.
Default is 5000.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check. Must be between 10
and 300 seconds. Default is 60.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts. Must be between 1 and 10
seconds. Default is 3.

.PARAMETER ImageName
Custom Docker image name to use instead of the default DeepStack image. This
allows using custom or updated DeepStack images.

.PARAMETER NoDockerInitialize
Skip Docker initialization when this switch is used. This is typically used
when already called by parent function to avoid duplicate initialization.

.PARAMETER Force
Force rebuild of Docker container and remove existing data when this switch
is used. This is useful for troubleshooting or updating the DeepStack image.

.PARAMETER UseGPU
Use GPU-accelerated version when this switch is used. This requires an
NVIDIA GPU with proper Docker GPU support configured.

.EXAMPLE
Compare-ImageFaces -ImagePath1 "C:\Users\YourName\photo1.jpg" `
                   -ImagePath2 "C:\Users\YourName\photo2.jpg"

Compares faces between two images using default settings.

.EXAMPLE
comparefaces "C:\docs\id_photo.jpg" "C:\photos\person.jpg" -UseGPU

Compares faces using GPU acceleration for identity verification with alias and
positional parameters.

.NOTES
DeepStack API Documentation: POST /v1/vision/face/match endpoint for face
comparison.
Example: curl -X POST -F "image1=@person1.jpg" -F "image2=@person2.jpg"
http://localhost:5000/v1/vision/face/match
#>
function Compare-ImageFaces {

    [CmdletBinding()]
    [OutputType([System.Collections.Hashtable])]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [Alias('comparefaces')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $true,
            HelpMessage = 'The local path to the first image file to compare'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImagePath1,
        [Parameter(
            Position = 1,
            Mandatory = $true,
            HelpMessage = 'The local path to the second image file to compare'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImagePath2,
        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'deepstack_face_recognition',
        [Parameter(
            Position = 3,
            Mandatory = $false,
            HelpMessage = ('The name for the Docker volume for persistent ' +
                'storage')
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'deepstack_face_data',
        [Parameter(
            Position = 4,
            Mandatory = $false,
            HelpMessage = 'The port number for the DeepStack service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 5000,
        [Parameter(
            Position = 5,
            Mandatory = $false,
            HelpMessage = ('Maximum time in seconds to wait for service ' +
                'health check')
        )]
        [ValidateRange(10, 300)]
        [int] $HealthCheckTimeout = 60,
        [Parameter(
            Position = 6,
            Mandatory = $false,
            HelpMessage = ('Interval in seconds between health check ' +
                'attempts')
        )]
        [ValidateRange(1, 10)]
        [int] $HealthCheckInterval = 3,
        [Parameter(
            Position = 7,
            Mandatory = $false,
            HelpMessage = 'Custom Docker image name to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImageName,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Skip Docker initialization (used when already ' +
                'called by parent function)')
        )]
        [switch] $NoDockerInitialize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force rebuild of Docker container and remove ' +
                'existing data')
        )]
        [Alias('ForceRebuild')]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use GPU-accelerated version (requires NVIDIA ' +
                'GPU)')
        )]
        [switch] $UseGPU,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show Docker Desktop window during initialization'
        )]
        [Alias('sw')]
        [switch]$ShowWindow

    )

    begin {

        # use script-scoped variables set by ensuredeepstack, with fallback
        # defaults
        if (-not $ApiBaseUrl) {

            $noDockerInitialize = $false
        }

        # ensure that the deepstack face match service is running
        if (-not $NoDockerInitialize) {

            Microsoft.PowerShell.Utility\Write-Verbose `
            ('Ensuring DeepStack face match service is available')

            # copy parameter values for the ensuredeepstack function call
            $ensureParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\EnsureDeepStack' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

            # initialize deepstack docker container if needed
            $null = GenXdev\EnsureDeepStack @ensureParams
        }
        else {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Skipping Docker initialization as requested'
        }        Microsoft.PowerShell.Utility\Write-Verbose `
            "Using DeepStack face match API at: $script:ApiBaseUrl"

        <#
        .SYNOPSIS
        Processes the face match result from DeepStack API.

        .DESCRIPTION
        This internal helper function processes the response from DeepStack face
        match API and formats it into a standardized result object with success
        status, similarity score, and match percentage.

        .PARAMETER MatchData
        The raw response data from the DeepStack face match API endpoint.

        .EXAMPLE
        $result = Format-FaceMatchResult -MatchData $response
        #>

        function Format-FaceMatchResult {

            [CmdletBinding()]
            [OutputType([System.Collections.Hashtable])]

            param(
                [Parameter(
                    Position = 0,
                    Mandatory = $true,
                    HelpMessage = 'The raw response data from DeepStack API'
                )]
                $MatchData
            )

            begin {

            }

            process {

                # check if match data is valid and successful
                if (-not $MatchData -or -not $MatchData.success) {

                    Microsoft.PowerShell.Utility\Write-Verbose `
                        'No successful face match data received'

                    return @{
                        success    = $false
                        similarity = 0.0
                        message    = 'Face match failed'
                    }
                }

                # extract similarity score from the response data
                $similarity = if ($MatchData.similarity) {

                    $MatchData.similarity
                } else {

                    0.0
                }

                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Face similarity score: $similarity"

                # return formatted result object with all relevant metrics
                return @{
                    success          = $true
                    similarity       = $similarity
                    confidence       = $similarity
                    match_percentage = [math]::Round($similarity * 100, 2)
                }
            }

            end {

            }
        }
    }

    process {

        try {

            # expand and validate both image paths to absolute paths
            $imagePath1 = GenXdev\Expand-Path $ImagePath1

            $imagePath2 = GenXdev\Expand-Path $ImagePath2

            Microsoft.PowerShell.Utility\Write-Verbose `
                "Comparing images: $imagePath1 and $imagePath2"

            # validate that both files are valid image files
            $null = GenXdev\Test-DeepLinkImageFile -Path $imagePath1

            $null = GenXdev\Test-DeepLinkImageFile -Path $imagePath2

            # construct the api endpoint uri for deepstack face match service
            $uri = "$($script:ApiBaseUrl)/v1/vision/face/match"

            Microsoft.PowerShell.Utility\Write-Verbose "Sending request to: $uri"

            # create form data for deepstack api (it expects multipart form data)
            $form = @{
                image1 = Microsoft.PowerShell.Management\Get-Item -LiteralPath $imagePath1
                image2 = Microsoft.PowerShell.Management\Get-Item -LiteralPath $imagePath2
            }

            # send the request to the deepstack face match api
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Sending image data to DeepStack face match API'

            $response = Microsoft.PowerShell.Utility\Invoke-RestMethod `
                -Verbose:$false `
                -ProgressAction Continue `
                -Uri $uri `
                -Method Post `
                -Form $form `
                -TimeoutSec 30 `
                -ErrorAction Stop

            Microsoft.PowerShell.Utility\Write-Verbose `
            ('API Response: ' +
                "$($response | `
                    Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 3)")

            # process the response from deepstack using the helper function
            $matchResult = Format-FaceMatchResult -MatchData $response

            Microsoft.PowerShell.Utility\Write-Output $matchResult
        }
        catch [System.Net.WebException] {

            Microsoft.PowerShell.Utility\Write-Error `
                "Network error during face comparison: $_"
        }
        catch [System.TimeoutException] {

            Microsoft.PowerShell.Utility\Write-Error `
            ("Timeout during face comparison between $imagePath1 and " +
                "$imagePath2")
        }
        catch {

            Microsoft.PowerShell.Utility\Write-Error `
            ("Failed to compare faces between $imagePath1 and " +
                "$imagePath2`: $_")
        }
    }

    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.DeepStack
Original cmdlet filename  : Get-ImageDetectedFaces.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Recognizes faces in an uploaded image by comparing to known faces using
DeepStack.

.DESCRIPTION
This function analyzes an image file to identify faces by comparing them
against known faces in the database. It uses a local DeepStack face
recognition API running on a configurable port and returns face matches with
their confidence scores. The function supports GPU acceleration, custom
confidence thresholds, and Docker container management.

.PARAMETER ImagePath
The local path to the image file to analyze. This parameter accepts any valid
file path that can be resolved by the system.

.PARAMETER NoDockerInitialize
Skip Docker initialization when this switch is used. This is typically used
when already called by parent function to avoid duplicate initialization.

.PARAMETER ConfidenceThreshold
Minimum confidence threshold (0.0-1.0) for face recognition matches. Faces
with confidence below this threshold will be filtered out. Default is 0.5.

.PARAMETER Force
Force rebuild of Docker container and remove existing data when this switch
is used. This is useful for troubleshooting or updating the DeepStack image.

.PARAMETER UseGPU
Use GPU-accelerated version when this switch is used. This requires an
NVIDIA GPU with proper Docker GPU support configured.

.PARAMETER ContainerName
The name for the Docker container. This allows multiple DeepStack instances
or custom naming conventions. Default is "deepstack_face_recognition".

.PARAMETER VolumeName
The name for the Docker volume for persistent storage. This ensures face data
persists between container restarts. Default is "deepstack_face_data".

.PARAMETER ServicePort
The port number for the DeepStack service. Must be between 1 and 65535.
Default is 5000.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check. Must be between 10
and 300 seconds. Default is 60.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts. Must be between 1 and 10
seconds. Default is 3.

.PARAMETER ImageName
Custom Docker image name to use instead of the default DeepStack image. This
allows using custom or updated DeepStack images.

.EXAMPLE
Get-ImageDetectedFaces -ImagePath "C:\Users\YourName\test.jpg" `
                       -ConfidenceThreshold 0.5 `
                       -ContainerName "deepstack_face_recognition" `
                       -VolumeName "deepstack_face_data" `
                       -ServicePort 5000 `
                       -HealthCheckTimeout 60 `
                       -HealthCheckInterval 3
Recognizes faces in the specified image using full parameter names.

.EXAMPLE
Get-ImageDetectedFaces "C:\photos\family.jpg" -Force -UseGPU
Recognizes faces using positional parameter and aliases.

.EXAMPLE
"C:\Users\YourName\test.jpg" | Get-ImageDetectedFaces
Recognizes faces using pipeline input.

.NOTES
DeepStack API Documentation: POST /v1/vision/face/recognize endpoint for face
identification. Example: curl -X POST -F "image=@person1.jpg"
http://localhost:5000/v1/vision/face/recognize
###############################################################################>
function Get-ImageDetectedFaces {

    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The local path to the image file to analyze'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImagePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Minimum confidence threshold (0.0-1.0). ' +
                'Default is 0.5')
        )]
        [ValidateRange(0.0, 1.0)]
        [double] $ConfidenceThreshold = 0.5,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'deepstack_face_recognition',
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The name for the Docker volume for persistent ' +
                'storage')
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'deepstack_face_data',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The port number for the DeepStack service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 5000,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Maximum time in seconds to wait for service ' +
                'health check')
        )]
        [ValidateRange(10, 300)]
        [int] $HealthCheckTimeout = 60,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Interval in seconds between health check ' +
                'attempts')
        )]
        [ValidateRange(1, 10)]
        [int] $HealthCheckInterval = 3,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Custom Docker image name to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImageName,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Skip Docker initialization (used when already ' +
                'called by parent function)')
        )]
        [switch] $NoDockerInitialize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force rebuild of Docker container and remove ' +
                'existing data')
        )]
        [Alias('ForceRebuild')]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use GPU-accelerated version (requires NVIDIA ' +
                'GPU)')
        )]
        [switch] $UseGPU,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show Docker Desktop window during initialization'
        )]
        [Alias('sw')]
        [switch]$ShowWindow
    )

    begin {

        # use script-scoped variables set by EnsureDeepStack, with fallback
        # defaults
        if (-not $ApiBaseUrl) {
            $NoDockerInitialize = $false
        }

        # set the confidence threshold for filtering face recognition results
        $script:ConfidenceThreshold = $ConfidenceThreshold

        # ensure that the DeepStack face recognition service is running
        if (-not $NoDockerInitialize) {
            Microsoft.PowerShell.Utility\Write-Verbose `
            ('Ensuring DeepStack face recognition service is ' +
                'available')

            # copy parameter values for the EnsureDeepStack function call
            $ensureParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\EnsureDeepStack' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

            # initialize deepstack docker container if needed
            $null = GenXdev\EnsureDeepStack @ensureParams
        } else {
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Skipping Docker initialization as requested'        }

        Microsoft.PowerShell.Utility\Write-Verbose `
            "Using DeepStack face recognition API at: $script:ApiBaseUrl"
    }

    process {

        try {

            # expand and validate the image path
            $imagePath = GenXdev\Expand-Path $ImagePath

            Microsoft.PowerShell.Utility\Write-Verbose `
                "Processing image: $imagePath"

            # validate that the file is a valid image
            $null = GenXdev\Test-DeepLinkImageFile -Path $imagePath

            # construct the API endpoint URI for DeepStack face recognition
            $uri = "$($script:ApiBaseUrl)/v1/vision/face/recognize"

            Microsoft.PowerShell.Utility\Write-Verbose "Sending request to: $uri"

            # Validate image file exists before processing
            if (-not [System.IO.File]::Exists($imagePath)) {
                Microsoft.PowerShell.Utility\Write-Warning "Image file not found: $imagePath"
                return @{
                    success = $false
                    error = "No valid image file found"
                    duration = 0
                } | Microsoft.PowerShell.Utility\ConvertTo-Json
            }

            # create form data for DeepStack API (it expects multipart form
            # data, not JSON)
            $form = @{
                image = Microsoft.PowerShell.Management\Get-Item -LiteralPath $imagePath
            }

            # send the request to the DeepStack face recognition API
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Sending image data to DeepStack face recognition API'

            $response = Microsoft.PowerShell.Utility\Invoke-RestMethod `
                -Verbose:$false `
                -ProgressAction Continue `
                -Uri $uri `
                -Method Post `
                -Form $form `
                -TimeoutSec 30

            # process the response from DeepStack
            if ($response.success -and $response.predictions) {
                $originalPredictionCount = $response.predictions.Count

                $filteredPredictions = @($response.predictions |
                        Microsoft.PowerShell.Core\Where-Object {
                            $_.confidence -gt $script:ConfidenceThreshold
                        })

                Microsoft.PowerShell.Utility\Write-Verbose `
                ("Found $($filteredPredictions.Count) recognized " +
                    "face(s) out of $originalPredictionCount with " +
                    "confidence > $script:ConfidenceThreshold")

                $response.predictions = $filteredPredictions
            }

            Microsoft.PowerShell.Utility\Write-Output $response
        }
        catch [System.Net.WebException] {
            Microsoft.PowerShell.Utility\Write-Warning `
            ('Network error while contacting DeepStack face recognition ' +
                "service: $_")
        }
        catch [System.TimeoutException] {
            Microsoft.PowerShell.Utility\Write-Warning `
            ('Timeout while waiting for DeepStack face recognition ' +
                "response: $_")
        }
        catch {
            # Check if this is a file access issue vs actual processing failure
            if ($_.Exception.Message -like "*Could not find item*" -or
                $_.Exception.Message -like "*No valid image file found*") {

                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Face detection skipped - file not accessible: $imagePath"
            }
            else {
                Microsoft.PowerShell.Utility\Write-Warning `
                    "Face detection failed for $imagePath`: $($_.Exception.Message)"
            }
        }
    }

    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.DeepStack
Original cmdlet filename  : Get-ImageDetectedObjects.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Detects and classifies objects in an uploaded image using DeepStack.

.DESCRIPTION
This function analyzes an image file to detect and classify up to 80 different
kinds of objects. It uses a local DeepStack object detection API running on a
configurable port and returns object classifications with their bounding box
coordinates and confidence scores. The function supports GPU acceleration,
custom confidence thresholds, and Docker container management.

.PARAMETER ImagePath
The local path to the image file to analyze. This parameter accepts any valid
file path that can be resolved by the system.

.PARAMETER ConfidenceThreshold
Minimum confidence threshold (0.0-1.0) for object detection. Objects with
confidence below this threshold will be filtered out. Default is 0.5.

.PARAMETER ContainerName
The name for the Docker container. This allows multiple DeepStack instances
or custom naming conventions. Default is "deepstack_face_recognition".

.PARAMETER VolumeName
The name for the Docker volume for persistent storage. This ensures face data
persists between container restarts. Default is "deepstack_face_data".

.PARAMETER ServicePort
The port number for the DeepStack service. Must be between 1 and 65535.
Default is 5000.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check. Must be between 10
and 300 seconds. Default is 60.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts. Must be between 1 and 10
seconds. Default is 3.

.PARAMETER ImageName
Custom Docker image name to use instead of the default DeepStack image. This
allows using custom or updated DeepStack images.

.PARAMETER NoDockerInitialize
Skip Docker initialization when this switch is used. This is typically used
when already called by parent function to avoid duplicate initialization.

.PARAMETER Force
Force rebuild of Docker container and remove existing data when this switch
is used. This is useful for troubleshooting or updating the DeepStack image.

.PARAMETER UseGPU
Use GPU-accelerated version when this switch is used. This requires an
NVIDIA GPU with proper Docker GPU support configured.

.EXAMPLE
Get-ImageDetectedObjects -ImagePath "C:\Users\YourName\test.jpg" `
                         -ConfidenceThreshold 0.5 `
                         -ServicePort 5000

Detects objects in the specified image with full parameter names.

.EXAMPLE
Get-ImageDetectedObjects "C:\photos\street.jpg"

Detects objects using positional parameter and default settings.

.NOTES
DeepStack API Documentation: POST /v1/vision/detection endpoint for object
detection. Example: curl -X POST -F "image=@street.jpg"
http://localhost:5000/v1/vision/detection

Supported object classes include: person, bicycle, car, motorcycle, airplane,
bus, train, truck, boat, traffic light, fire hydrant, stop sign, parking
meter, bench, bird, cat, dog, horse, sheep, cow, elephant, bear, zebra,
giraffe, backpack, umbrella, handbag, tie, suitcase, frisbee, skis, snowboard,
sports ball, kite, baseball bat, baseball glove, skateboard, surfboard, tennis
racket, bottle, wine glass, cup, fork, knife, spoon, bowl, banana, apple,
sandwich, orange, broccoli, carrot, hot dog, pizza, donut, cake, chair, couch,
potted plant, bed, dining table, toilet, tv, laptop, mouse, remote, keyboard,
cell phone, microwave, oven, toaster, sink, refrigerator, book, clock, vase,
scissors, teddy bear, hair drier, toothbrush.
#>
function Get-ImageDetectedObjects {

    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]

    param(
        [parameter(
            Position = 0,
            Mandatory = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The local path to the image file to analyze'
        )]
        [ValidateNotNullOrEmpty()]
        [string]
        $ImagePath,

        [parameter(
            Mandatory = $false,
            HelpMessage = ('Minimum confidence threshold (0.0-1.0). ' +
                'Default is 0.5')
        )]
        [ValidateRange(0.0, 1.0)]
        [double]
        $ConfidenceThreshold = 0.5,

        [parameter(
            Mandatory = $false,
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string]
        $ContainerName = 'deepstack_face_recognition',

        [parameter(
            Mandatory = $false,
            HelpMessage = ('The name for the Docker volume for persistent ' +
                'storage')
        )]
        [ValidateNotNullOrEmpty()]
        [string]
        $VolumeName = 'deepstack_face_data',

        [parameter(
            Mandatory = $false,
            HelpMessage = 'The port number for the DeepStack service'
        )]
        [ValidateRange(1, 65535)]
        [int]
        $ServicePort = 5000,

        [parameter(
            Mandatory = $false,
            HelpMessage = ('Maximum time in seconds to wait for service ' +
                'health check')
        )]
        [ValidateRange(10, 300)]
        [int]
        $HealthCheckTimeout = 60,

        [parameter(
            Mandatory = $false,
            HelpMessage = ('Interval in seconds between health check ' +
                'attempts')
        )]
        [ValidateRange(1, 10)]
        [int]
        $HealthCheckInterval = 3,

        [parameter(
            Mandatory = $false,
            HelpMessage = 'Custom Docker image name to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string]
        $ImageName,

        [parameter(
            Mandatory = $false,
            HelpMessage = ('Skip Docker initialization (used when already ' +
                'called by parent function)')
        )]
        [switch]
        $NoDockerInitialize,

        [parameter(
            Mandatory = $false,
            HelpMessage = ('Force rebuild of Docker container and remove ' +
                'existing data')
        )]
        [Alias('ForceRebuild')]
        [switch]
        $Force,

        [parameter(
            Mandatory = $false,
            HelpMessage = ('Use GPU-accelerated version (requires NVIDIA ' +
                'GPU)')
        )]
        [switch]
        $UseGPU,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show Docker Desktop window during initialization'
        )]
        [Alias('sw')]
        [switch]$ShowWindow
    )

    begin {

        # use script-scoped variables set by ensuredeepstack, with fallback
        # defaults
        if (-not $ApiBaseUrl) {

            $NoDockerInitialize = $false
        }

        # store confidence threshold for filtering
        $script:ConfidenceThreshold = $ConfidenceThreshold

        # ensure that the deepstack object detection service is running
        if (-not $NoDockerInitialize) {

            Microsoft.PowerShell.Utility\Write-Verbose `
            ('Ensuring DeepStack object detection service is ' +
                'available')

            # copy parameter values for the ensuredeepstack function call
            $ensureParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\EnsureDeepStack' `
                -DefaultValues (
                Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue
            )

            # initialize deepstack docker container if needed
            $null = GenXdev\EnsureDeepStack @ensureParams
        }
        else {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Skipping Docker initialization as requested'
        }

        Microsoft.PowerShell.Utility\Write-Verbose `
        ('Using DeepStack object detection API at: ' +
            "$script:ApiBaseUrl")        #######################################################################
        <#
        .SYNOPSIS
        Filters object detection results based on confidence threshold.

        .DESCRIPTION
        This function takes the raw output from the DeepStack API and filters
        the detected objects based on the configured confidence threshold. It
        also reshapes the data for easier consumption in PowerShell.

        .PARAMETER ObjectData
        The object data returned from the DeepStack API.

        .EXAMPLE
        Select-ObjectDetection -ObjectData $apiResponse
        #>
        function Select-ObjectDetection {

            param(
                [parameter(Mandatory = $true)]
                $ObjectData
            )

            # check if object data is valid and successful
            if (-not $ObjectData -or -not $ObjectData.success) {

                Microsoft.PowerShell.Utility\Write-Verbose `
                    'No successful object data received'

                return @{
                    objects     = @()
                    count       = 0
                    predictions = @()
                }
            }

            # check if predictions are available
            if (-not $ObjectData.predictions) {

                Microsoft.PowerShell.Utility\Write-Verbose `
                    'No object predictions received'

                return @{
                    objects     = @()
                    count       = 0
                    predictions = @()
                }
            }

            # filter objects based on confidence threshold
            $filteredPredictions = @(
                $ObjectData.predictions |
                    Microsoft.PowerShell.Core\Where-Object {
                        $_.confidence -gt $script:ConfidenceThreshold
                    }
            )

            # group objects by label for summary
            $objectCounts = @{}

            foreach ($prediction in $filteredPredictions) {

                if ($objectCounts.ContainsKey($prediction.label)) {

                    $objectCounts[$prediction.label]++
                }
                else {

                    $objectCounts[$prediction.label] = 1
                }
            }

            Microsoft.PowerShell.Utility\Write-Verbose `
            ("Found $($filteredPredictions.Count) objects above " +
                "confidence threshold $script:ConfidenceThreshold")

            return @{
                objects       = $filteredPredictions
                count         = $filteredPredictions.Count
                predictions   = $filteredPredictions
                object_counts = $objectCounts
                success       = $true
            }
        }
    }

    process {

        try {

            # expand and validate the image path
            $imagePath = GenXdev\Expand-Path $ImagePath

            Microsoft.PowerShell.Utility\Write-Verbose `
                "Processing image: $imagePath"

            # validate that the file is a valid image
            $null = GenXdev\Test-DeepLinkImageFile -Path $imagePath

            # construct the api endpoint uri for deepstack object detection
            $uri = "$($script:ApiBaseUrl)/v1/vision/detection"

            Microsoft.PowerShell.Utility\Write-Verbose `
                "Sending request to: $uri"

            # create form data for deepstack api
            # Validate image file exists before processing
            if (-not [System.IO.File]::Exists($imagePath)) {
                Microsoft.PowerShell.Utility\Write-Warning "Image file not found: $imagePath"
                return @{
                    success = $false
                    error = "No valid image file found"
                    duration = 0
                } | Microsoft.PowerShell.Utility\ConvertTo-Json
            }

            # the 'min_confidence' parameter expects a value between 0.0 and 1.0
            $form = @{
                image          = Microsoft.PowerShell.Management\Get-ChildItem -LiteralPath $imagePath
                min_confidence = $ConfidenceThreshold
            }

            # send the request to the deepstack object detection api
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Sending image data to DeepStack object detection API'

            $response = Microsoft.PowerShell.Utility\Invoke-RestMethod `
                -Verbose:$false `
                -ProgressAction Continue `
                -Uri $uri `
                -Method Post `
                -Form $form `
                -TimeoutSec 30 `
                -ErrorAction Stop

            Microsoft.PowerShell.Utility\Write-Verbose `
            ('API Response: ' +
                (
                    $response |
                        Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 3
                ))

            # process the response from deepstack
            $filteredResults = Select-ObjectDetection -ObjectData $response

            Microsoft.PowerShell.Utility\Write-Output $filteredResults
        }
        catch [System.Net.WebException] {

            Microsoft.PowerShell.Utility\Write-Warning `
                "Network error during object detection: $_"
        }
        catch [System.TimeoutException] {

            Microsoft.PowerShell.Utility\Write-Warning `
                "Timeout during object detection for $imagePath"
        }
        catch {

            Microsoft.PowerShell.Utility\Write-Warning `
                "Failed to detect objects in $imagePath`: $_"
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.DeepStack
Original cmdlet filename  : Get-ImageDetectedScenes.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Classifies an image into one of 365 scene categories using DeepStack.

.DESCRIPTION
This function analyzes an image file to classify it into one of 365 different
scene categories. It uses a local DeepStack scene recognition API running on a
configurable port and returns the scene classification with confidence score.
The function supports GPU acceleration and Docker container management.

.PARAMETER ImagePath
The local path to the image file to analyze. This parameter accepts any valid
file path that can be resolved by the system.

.PARAMETER NoDockerInitialize
Skip Docker initialization when this switch is used. This is typically used
when already called by parent function to avoid duplicate initialization.

.PARAMETER Force
Force rebuild of Docker container and remove existing data when this switch
is used. This is useful for troubleshooting or updating the DeepStack image.

.PARAMETER UseGPU
Use GPU-accelerated version when this switch is used. This requires an
NVIDIA GPU with proper Docker GPU support configured.

.PARAMETER ContainerName
The name for the Docker container. This allows multiple DeepStack instances
or custom naming conventions. Default is "deepstack_face_recognition".

.PARAMETER VolumeName
The name for the Docker volume for persistent storage. This ensures face data
persists between container restarts. Default is "deepstack_face_data".

.PARAMETER ServicePort
The port number for the DeepStack service. Must be between 1 and 65535.
Default is 5000.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check. Must be between 10
and 300 seconds. Default is 60.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts. Must be between 1 and 10
seconds. Default is 3.

.PARAMETER ImageName
Custom Docker image name to use instead of the default DeepStack image. This
allows using custom or updated DeepStack images.

.EXAMPLE
Get-ImageDetectedScenes -ImagePath "C:\Users\YourName\landscape.jpg"
Classifies the scene in the specified image using default settings.

.EXAMPLE
Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -ConfidenceThreshold 0.6 -UseGPU
Classifies the scene using GPU acceleration and only accepts results with confidence >= 60%.

.EXAMPLE
Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -UseGPU
Classifies the scene using GPU acceleration for faster processing.

.EXAMPLE
"C:\Users\YourName\beach.jpg" | Get-ImageDetectedScenes
Pipeline support for processing multiple images.

.NOTES
DeepStack API Documentation: POST /v1/vision/scene endpoint for scene
recognition.
Example: curl -X POST -F "image=@landscape.jpg"
http://localhost:5000/v1/vision/scene

Scene categories include places like: abbey, airplane_cabin, airport_terminal,
alley, amphitheater, amusement_arcade, amusement_park, anechoic_chamber,
apartment_building, aquarium, aqueduct, arcade, arch, archive, art_gallery,
art_school, art_studio, assembly_line, athletic_field, atrium, attic,
auditorium, auto_factory, badlands, balcony, ball_pit, ballroom,
bamboo_forest, banquet_hall, bar, barn, barndoor, baseball_field, basement,
basilica, basketball_court, bathroom, bathtub, battlefield, beach,
beauty_salon, bedroom, berth, biology_laboratory, boardwalk, boat_deck,
boathouse, bookstore, booth, botanical_garden, bowling_alley, boxing_ring,
bridge, building_facade, bullring, burial_chamber, bus_interior,
bus_station, butchers_shop, butte, cabin, cafeteria, campsite, campus,
canal, candy_store, canyon, car_interior, castle, catacomb, cemetery,
chalet, chemistry_lab, chinatown, church, classroom, clean_room, cliff,
cloister, closet, clothing_store, coast, cockpit, coffee_shop,
computer_room, conference_center, conference_room, construction_site,
corn_field, corridor, cottage, courthouse, courtyard, creek, crevasse,
crosswalk, dam, delicatessen, department_store, desert, diner, dining_hall,
dining_room, discotheque, dock, doorway, dorm_room, downtown, driveway,
drugstore, elevator, engine_room, entrance_hall, escalator, excavation,
fabric_store, farm, fastfood_restaurant, field, fire_escape, fire_station,
fishpond, flea_market, florist_shop, food_court, football_field, forest,
forest_path, forest_road, formal_garden, fountain, galley, game_room,
garage, garbage_dump, gas_station, gazebo, general_store, gift_shop,
glacier, golf_course, greenhouse, grotto, gymnasium, hangar, harbor,
hardware_store, hayfield, heliport, highway, home_office, home_theater,
hospital, hospital_room, hot_spring, hotel, hotel_room, house,
hunting_lodge, ice_cream_parlor, ice_rink, ice_shelf, iceberg, igloo,
industrial_area, inn, islet, jacuzzi, jail_cell, japanese_garden,
jewelry_shop, junkyard, kasbah, kennel, kindergarten_classroom, kitchen,
lagoon, lake, laundromat, lawn, lecture_room, legislature, library,
lighthouse, living_room, lobby, lock_chamber, locker_room, mansion,
manufactured_home, market, marsh, martial_arts_gym, mausoleum, medina,
moat, monastery, mosque, motel, mountain, mountain_path, mountain_snowy,
movie_theater, museum, music_studio, nursery, nursing_home, oast_house,
ocean, office, office_building, oil_refinery, oilrig, operating_room,
orchard, orchestra_pit, pagoda, palace, pantry, park, parking_garage,
parking_lot, pasture, patio, pavilion, pharmacy, phone_booth,
physics_laboratory, picnic_area, pier, pizzeria, playground, playroom,
plaza, pond, porch, promenade, pub, public_pool, racecourse, raceway,
raft, railroad_track, rainforest, reception, recreation_room,
residential_neighborhood, restaurant, restaurant_kitchen,
restaurant_patio, rice_paddy, river, rock_arch, rope_bridge, ruin,
runway, sandbox, sauna, schoolhouse, science_museum, server_room, shed,
shoe_shop, shopfront, shopping_mall, shower, ski_resort, ski_slope, sky,
skyscraper, slum, snowfield, soccer_field, stable, stadium, stage,
staircase, storage_room, storm_cellar, street, strip_mall,
subway_station, supermarket, swamp, swimming_hole, swimming_pool,
synagogue, television_room, television_studio, temple, throne_room,
ticket_booth, topiary_garden, tower, toyshop, track, train_interior,
train_station, tree_farm, tree_house, trench, tundra, underwater,
university, upholstery_shop, urban_canal, valley, vegetable_garden,
veterinarians_office, viaduct, village, vineyard, volcano,
volleyball_court, waiting_room, water_park, water_tower, waterfall,
watering_hole, wave, wet_bar, wheat_field, wind_farm, windmill, yard,
youth_hostel, zen_garden.
###############################################################################>
function Get-ImageDetectedScenes {

    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The local path to the image file to analyze'
        )]        [ValidateNotNullOrEmpty()]
        [string] $ImagePath,
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = ('Minimum confidence threshold (0.0-1.0). ' +
                'Default is 0.0')
        )]
        [ValidateRange(0.0, 1.0)]
        [double] $ConfidenceThreshold = 0.0,
        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'deepstack_face_recognition',
        [Parameter(
            Position = 3,
            Mandatory = $false,
            HelpMessage = ('The name for the Docker volume for persistent ' +
                'storage')
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'deepstack_face_data',
        [Parameter(
            Position = 4,
            Mandatory = $false,
            HelpMessage = 'The port number for the DeepStack service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 5000,
        [Parameter(
            Position = 5,
            Mandatory = $false,
            HelpMessage = ('Maximum time in seconds to wait for service ' +
                'health check')
        )]
        [ValidateRange(10, 300)]
        [int] $HealthCheckTimeout = 60,
        [Parameter(
            Position = 6,
            Mandatory = $false,
            HelpMessage = ('Interval in seconds between health check ' +
                'attempts')
        )]
        [ValidateRange(1, 10)]
        [int] $HealthCheckInterval = 3,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Custom Docker image name to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImageName,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Skip Docker initialization (used when already ' +
                'called by parent function)')
        )]
        [switch] $NoDockerInitialize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force rebuild of Docker container and remove ' +
                'existing data')
        )]
        [Alias('ForceRebuild')]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use GPU-accelerated version (requires NVIDIA ' +
                'GPU)')
        )]
        [switch] $UseGPU,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show Docker Desktop window during initialization'
        )]
        [Alias('sw')]
        [switch]$ShowWindow
    )
    begin {
        # use script-scoped variables set by ensuredeepstack, with fallback
        # defaults
        if (-not $ApiBaseUrl) {

            $NoDockerInitialize = $false
        }

        # set the confidence threshold for filtering scene recognition results
        $script:ConfidenceThreshold = $ConfidenceThreshold

        # ensure that the deepstack scene recognition service is running
        if (-not $NoDockerInitialize) {

            Microsoft.PowerShell.Utility\Write-Verbose `
            ('Ensuring DeepStack scene recognition service is ' +
                'available')

            # copy parameter values for the ensuredeepstack function call
            $ensureParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\EnsureDeepStack' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

            # initialize deepstack docker container if needed
            $null = GenXdev\EnsureDeepStack @ensureParams

        } else {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Skipping Docker initialization as requested'
        }

        Microsoft.PowerShell.Utility\Write-Verbose `
            "Using DeepStack scene recognition API at: $script:ApiBaseUrl"

        <#
        .SYNOPSIS
        Processes the scene recognition result from DeepStack API.

        .DESCRIPTION
        This helper function takes the raw response from the DeepStack scene
        recognition API and formats it into a standardized output object with
        scene label, confidence score, and success status.

        .PARAMETER SceneData
        The raw scene data response from the DeepStack API containing the
        scene classification results.

        .EXAMPLE
        $result = Format-SceneResult -SceneData $response
        #>
        function Format-SceneResult {

            param($SceneData)

            # check if scene data is valid and successful
            if (-not $SceneData -or -not $SceneData.success) {

                Microsoft.PowerShell.Utility\Write-Verbose `
                    'No successful scene data received'

                return @{
                    success    = $false
                    scene      = 'unknown'
                    confidence = 0.0
                    message    = 'Scene recognition failed'
                }
            }

            # extract scene classification results
            $scene = if ($SceneData.label) {
                $SceneData.label
            } else {
                'unknown'
            }

            $confidence = if ($SceneData.confidence) {
                $SceneData.confidence
            } else {
                0.0
            }

            Microsoft.PowerShell.Utility\Write-Verbose `
                "Detected scene: $scene (confidence: $confidence)"

            # check if confidence meets the threshold
            if ($confidence -lt $script:ConfidenceThreshold) {
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Scene confidence $confidence below threshold $($script:ConfidenceThreshold), marking as unknown"

                return @{
                    success               = $false
                    scene                 = 'unknown'
                    label                 = 'unknown'
                    confidence            = $confidence
                    confidence_percentage = [math]::Round($confidence * 100, 2)
                    message               = 'Scene confidence below threshold'
                }
            }

            return @{
                success               = $true
                scene                 = $scene
                label                 = $scene
                confidence            = $confidence
                confidence_percentage = [math]::Round($confidence * 100, 2)
            }
        }
    }

    process {

        try {

            # expand and validate the image path
            $imagePath = GenXdev\Expand-Path $ImagePath

            Microsoft.PowerShell.Utility\Write-Verbose `
                "Processing image: $imagePath"

            # validate that the file is a valid image
            $null = GenXdev\Test-DeepLinkImageFile -Path $imagePath

            # construct the api endpoint uri for deepstack scene recognition
            $uri = "$($script:ApiBaseUrl)/v1/vision/scene"

            Microsoft.PowerShell.Utility\Write-Verbose "Sending request to: $uri"

            # Validate image file exists before processing
            if (-not [System.IO.File]::Exists($imagePath)) {
                Microsoft.PowerShell.Utility\Write-Warning "Image file not found: $imagePath"
                return @{
                    success = $false
                    error = "No valid image file found"
                    duration = 0
                } | Microsoft.PowerShell.Utility\ConvertTo-Json
            }

            # create form data for deepstack api (it expects multipart form data)
            $form = @{
                image = Microsoft.PowerShell.Management\Get-Item -LiteralPath $imagePath
            }

            # send the request to the deepstack scene recognition api
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Sending image data to DeepStack scene recognition API'

            $response = Microsoft.PowerShell.Utility\Invoke-RestMethod `
                -Verbose:$false `
                -ProgressAction Continue `
                -Uri $uri `
                -Method Post `
                -Form $form `
                -TimeoutSec 30 `
                -ErrorAction Stop

            Microsoft.PowerShell.Utility\Write-Verbose `
            ('API Response: ' +
                "$($response |
                    Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 3)")

            # process the response from deepstack
            $sceneResult = Format-SceneResult -SceneData $response

            Microsoft.PowerShell.Utility\Write-Output $sceneResult

        }
        catch [System.Net.WebException] {

            Microsoft.PowerShell.Utility\Write-Warning `
                "Network error during scene recognition: $_"
        }
        catch [System.TimeoutException] {

            Microsoft.PowerShell.Utility\Write-Warning `
                "Timeout during scene recognition for $imagePath"
        }
        catch {
            # Check if this is a file access issue vs actual processing failure
            if ($_.Exception.Message -like "*Could not find item*" -or
                $_.Exception.Message -like "*No valid image file found*") {

                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Scene detection skipped - file not accessible: $imagePath"
            }
            else {
                Microsoft.PowerShell.Utility\Write-Warning `
                    "Scene detection failed for $imagePath`: $($_.Exception.Message)"
            }
        }
    }

    end {

        # no cleanup required for this function
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.DeepStack
Original cmdlet filename  : Get-RegisteredFaces.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Retrieves a list of all registered face identifiers from DeepStack.

.DESCRIPTION
This function connects to a local DeepStack face recognition API and retrieves
all registered face identifiers. It uses the /v1/vision/face/list endpoint to
query the DeepStack service and returns an array of face identifier strings. The
function handles Docker container initialization, API communication, and error
handling for various failure scenarios.

.PARAMETER NoDockerInitialize
Skip Docker initialization when this parameter is specified. This is used when
the function is called by a parent function that has already initialized the
DeepStack service.

.PARAMETER Force
Force rebuild of the Docker container and remove existing data. This will
recreate the container from scratch and clear all stored face data.

.PARAMETER UseGPU
Use GPU-accelerated version of DeepStack. This requires an NVIDIA GPU and
appropriate drivers to be installed on the system.

.PARAMETER ContainerName
The name for the Docker container running DeepStack. Defaults to
"deepstack_face_recognition" if not specified.

.PARAMETER VolumeName
The name for the Docker volume used for persistent storage of face data.
Defaults to "deepstack_face_data" if not specified.

.PARAMETER ServicePort
The port number for the DeepStack service. Must be between 1 and 65535.
Defaults to 5000 if not specified.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check to complete. Must be
between 10 and 300 seconds. Defaults to 60 seconds if not specified.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts. Must be between 1 and 10
seconds. Defaults to 3 seconds if not specified.

.PARAMETER ImageName
Custom Docker image name to use instead of the default DeepStack image. This
allows using custom or modified DeepStack images.

.EXAMPLE
Get-RegisteredFaces

This example retrieves all registered faces using default parameters.

.EXAMPLE
Get-RegisteredFaces -Force -UseGPU

This example forces a rebuild of the container and uses GPU acceleration.

.EXAMPLE
Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080

This example uses a custom container name and port number.

.EXAMPLE
Get-RegisteredFaces |
Where-Object { $_ -like "John*" }

This example retrieves all faces and filters for those starting with "John".

.NOTES
DeepStack API Documentation: POST /v1/vision/face/list endpoint
#>
function Get-RegisteredFaces {

    [CmdletBinding()]
    [Alias()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]

    param (
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Skip Docker initialization (used when already called by parent function)'
        )]
        [switch] $NoDockerInitialize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force rebuild of Docker container and remove existing data'
        )]
        [Alias('ForceRebuild')]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use GPU-accelerated version (requires NVIDIA GPU)'
        )]
        [switch] $UseGPU,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'deepstack_face_recognition',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The name for the Docker volume for persistent storage'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'deepstack_face_data',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The port number for the DeepStack service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 5000,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum time in seconds to wait for service health check'
        )]
        [ValidateRange(10, 300)]
        [int] $HealthCheckTimeout = 60,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Interval in seconds between health check attempts'
        )]
        [ValidateRange(1, 10)]
        [int] $HealthCheckInterval = 3,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Custom Docker image name to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImageName,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show Docker Desktop window during initialization'
        )]
        [Alias('sw')]
        [switch]$ShowWindow

    )
    begin {

        # check if api base url is available from script scope
        if (-not $ApiBaseUrl) {

            $NoDockerInitialize = $false
        }

        # ensure deepstack face recognition module is loaded and available
        if (-not $NoDockerInitialize) {

            # copy matching parameters for the ensure deepstack function
            $ensureParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\EnsureDeepStack' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

            # initialize deepstack service with provided parameters
            $null = GenXdev\EnsureDeepStack @ensureParams

        } else {

            # output verbose message when skipping docker initialization
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Skipping Docker initialization as requested'
            )
        }

        # output verbose information about the api connection
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Connecting to DeepStack face recognition API at $script:ApiBaseUrl"
        )

        # define helper function to process api response and format results
        function Format-FaceResult {

            param($ApiResponse)

            # check if api response contains data
            if (-not $ApiResponse) {

                # output verbose message when no face data received
                Microsoft.PowerShell.Utility\Write-Verbose (
                    'No face data received from API'
                )

                return @()
            }

            # handle deepstack response format with success property and faces array
            if ($ApiResponse.success -and $ApiResponse.faces) {

                # extract face ids from the deepstack response
                $faceIds = $ApiResponse.faces

                # output verbose information about found faces
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Found $($faceIds.Count) registered faces"
                )

                return $faceIds

            }
            # handle alternative response format where response is directly an array
            elseif ($ApiResponse -is [array]) {

                # output verbose information about found faces
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Found $($ApiResponse.Count) registered faces"
                )

                return $ApiResponse

            }
            else {

                # output verbose message for unexpected response format
                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Unexpected response format or no faces found'
                )

                return @()
            }
        }
    }

    process {

        try {

            # construct the uri for retrieving registered faces from deepstack
            $uri = "$($script:ApiBaseUrl)/v1/vision/face/list"

            # output verbose information about the api request
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Requesting registered faces from: $uri"
            )

            # invoke the rest api to get registered faces using post method
            $response = Microsoft.PowerShell.Utility\Invoke-RestMethod `
                -Verbose:$false `
                -ProgressAction Continue `
                -Uri $uri `
                -Method Post `
                -ContentType 'application/json' `
                -Body '{}' `
                -TimeoutSec 30 `
                -ErrorAction Stop

            # format and return the results using helper function
            $formattedResults = Format-FaceResult -ApiResponse $response

            # output the formatted results to the pipeline
            Microsoft.PowerShell.Utility\Write-Output $formattedResults

        }
        catch [System.Net.WebException] {

            # extract status code from web exception for specific error handling
            $statusCode = $_.Exception.Response.StatusCode

            # handle 404 error specifically for service not running
            if ($statusCode -eq 404) {

                # output warning for service not found
                Microsoft.PowerShell.Utility\Write-Verbose (
                    'DeepStack face recognition endpoint not found - service may not be running'
                )

            }
            else {

                # output error for other network related issues
                Microsoft.PowerShell.Utility\Write-Error (
                    "Network error while retrieving registered faces: $_"
                )
            }
        }
        catch [System.TimeoutException] {

            # output error for timeout scenarios
            Microsoft.PowerShell.Utility\Write-Error (
                'Timeout while retrieving registered faces from DeepStack API'
            )
        }
        catch {

            # output error for all other unexpected exceptions
            Microsoft.PowerShell.Utility\Write-Error (
                "Failed to retrieve registered faces: $_"
            )
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.DeepStack
Original cmdlet filename  : Invoke-ImageEnhancement.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Enhances an image by enlarging it 4X while improving quality using DeepStack.

.DESCRIPTION
This function enhances an image by enlarging it to 4 times the original width
and height while simultaneously increasing the quality of the image. It uses
a local DeepStack image enhancement API running on a configurable port and
returns the enhanced image as base64 data or saves it to a file. The function
supports GPU acceleration and Docker container management.

.PARAMETER ImagePath
The local path to the image file to enhance. This parameter accepts any valid
file path that can be resolved by the system.

.PARAMETER OutputPath
Optional path where the enhanced image should be saved. If not specified,
the function returns the base64 encoded image data.

.PARAMETER NoDockerInitialize
Skip Docker initialization when this switch is used. This is typically used
when already called by parent function to avoid duplicate initialization.

.PARAMETER Force
Force rebuild of Docker container and remove existing data when this switch
is used. This is useful for troubleshooting or updating the DeepStack image.

.PARAMETER UseGPU
Use GPU-accelerated version when this switch is used. This requires an
NVIDIA GPU with proper Docker GPU support configured.

.PARAMETER ContainerName
The name for the Docker container. This allows multiple DeepStack instances
or custom naming conventions. Default is "deepstack_face_recognition".

.PARAMETER VolumeName
The name for the Docker volume for persistent storage. This ensures face data
persists between container restarts. Default is "deepstack_face_data".

.PARAMETER ServicePort
The port number for the DeepStack service. Must be between 1 and 65535.
Default is 5000.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check. Must be between 10
and 300 seconds. Default is 60.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts. Must be between 1 and 10
seconds. Default is 3.

.PARAMETER ImageName
Custom Docker image name to use instead of the default DeepStack image. This
allows using custom or updated DeepStack images.

.EXAMPLE
Invoke-ImageEnhancement -ImagePath "C:\Users\YourName\small_photo.jpg" `
                        -OutputPath "C:\Users\YourName\enhanced_photo.jpg"
Enhances the image and saves it to the specified output path.

.EXAMPLE
enhanceimage "C:\photos\low_quality.jpg"
Enhances the image and returns the base64 data and dimensions using alias.

.EXAMPLE
Invoke-ImageEnhancement -ImagePath "C:\photos\image.jpg" -UseGPU
Enhances the image using GPU acceleration for faster processing.

.NOTES
DeepStack API Documentation: POST /v1/vision/enhance endpoint for image
enhancement. Example: curl -X POST -F "image=@low_quality.jpg"
http://localhost:5000/v1/vision/enhance

The enhanced image will be 4 times larger (2x width, 2x height) than the
original.
###############################################################################>
function Invoke-ImageEnhancement {

    [CmdletBinding()]
    [Alias('enhanceimage')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The local path to the image file to enhance'
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('path', 'FullName', 'ImageFile', 'ImageFilePath')]
        [string] $ImagePath,
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = ('Optional path where the enhanced image should be ' +
                'saved')
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('outfile', 'OutputFile', 'EnhancedImagePath')]
        [string] $OutputPath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Skip Docker initialization (used when already ' +
                'called by parent function)')
        )]
        [switch] $NoDockerInitialize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force rebuild of Docker container and remove ' +
                'existing data')
        )]
        [Alias('ForceRebuild')]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use GPU-accelerated version (requires NVIDIA ' +
                'GPU)')
        )]
        [switch] $UseGPU,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'deepstack_face_recognition',
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The name for the Docker volume for persistent ' +
                'storage')
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'deepstack_face_data',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The port number for the DeepStack service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 5000,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Maximum time in seconds to wait for service ' +
                'health check')
        )]
        [ValidateRange(10, 300)]
        [int] $HealthCheckTimeout = 60,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Interval in seconds between health check ' +
                'attempts')
        )]
        [ValidateRange(1, 10)]
        [int] $HealthCheckInterval = 3,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Custom Docker image name to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImageName,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show Docker Desktop window during initialization'
        )]
        [Alias('sw')]
        [switch]$ShowWindow

    )

    begin {

        # use script-scoped variables set by EnsureDeepStack, with fallback
        # defaults
        if (-not $ApiBaseUrl) {

            $NoDockerInitialize = $false
        }

        # ensure that the DeepStack image enhancement service is running
        if (-not $NoDockerInitialize) {

            Microsoft.PowerShell.Utility\Write-Verbose `
            ('Ensuring DeepStack image enhancement service is ' +
                'available')

            # copy parameter values for the EnsureDeepStack function call
            $ensureParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\EnsureDeepStack' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

            # initialize deepstack docker container if needed
            $null = GenXdev\EnsureDeepStack @ensureParams
        }
        else {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Skipping Docker initialization as requested'
        }

        Microsoft.PowerShell.Utility\Write-Verbose `
            "Using DeepStack image enhancement API at: $script:ApiBaseUrl"

        <#
        .SYNOPSIS
        Processes the image enhancement result from DeepStack API.

        .DESCRIPTION
        This helper function processes the response from the DeepStack image
        enhancement API and formats it into a consistent result object. It
        handles saving the enhanced image to a file if an output path is
        provided and returns structured data about the enhancement results.

        .PARAMETER EnhanceData
        The response data from the DeepStack API containing the enhanced image
        information including base64 data and dimensions.

        .PARAMETER OutputPath
        Optional path where the enhanced image should be saved to disk.
        #>
        function Format-EnhancementResult {

            param(
                $EnhanceData,
                $OutputPath
            )

            # check if enhancement data is valid and successful
            if (-not $EnhanceData -or -not $EnhanceData.success) {

                Microsoft.PowerShell.Utility\Write-Verbose `
                    'No successful enhancement data received'

                return @{
                    success = $false
                    message = 'Image enhancement failed'
                }
            }

            # extract enhancement results
            $base64Data = $EnhanceData.base64

            $width = $EnhanceData.width

            $height = $EnhanceData.height

            Microsoft.PowerShell.Utility\Write-Verbose `
                "Enhanced image dimensions: ${width}x${height}"

            $result = @{
                success         = $true
                base64          = $base64Data
                width           = $width
                height          = $height
                size_multiplier = 4
            }

            # save to file if output path is specified
            if ($OutputPath -and $base64Data) {

                try {

                    # expand the output path
                    $expandedOutputPath = GenXdev\Expand-Path `
                        $OutputPath

                    # ensure output directory exists
                    $outputDir = Microsoft.PowerShell.Management\Split-Path `
                        $expandedOutputPath `
                        -Parent

                    if (-not (Microsoft.PowerShell.Management\Test-Path `
                                -LiteralPath $outputDir)) {

                        $null = Microsoft.PowerShell.Management\New-Item `
                            -Path $outputDir `
                            -ItemType Directory `
                            -Force
                    }

                    # convert base64 to bytes and save to file
                    $imageBytes = [System.Convert]::FromBase64String(`
                            $base64Data)

                    [System.IO.File]::WriteAllBytes(`
                            $expandedOutputPath, `
                            $imageBytes)

                    $result.output_path = $expandedOutputPath

                    $result.file_size_bytes = $imageBytes.Length

                    Microsoft.PowerShell.Utility\Write-Verbose `
                        "Enhanced image saved to: $expandedOutputPath"
                }
                catch {

                    Microsoft.PowerShell.Utility\Write-Verbose `
                    ('Failed to save enhanced image to ' +
                        "$OutputPath`: $_")

                    $result.save_error = $_.Exception.Message
                }
            }

            return $result
        }
    }

    process {

        try {

            # expand and validate the image path
            $imagePath = GenXdev\Expand-Path $ImagePath

            Microsoft.PowerShell.Utility\Write-Verbose `
                "Processing image: $imagePath"

            # validate that the file is a valid image
            $null = GenXdev\Test-DeepLinkImageFile -Path $imagePath

            # construct the API endpoint URI for DeepStack image enhancement
            $uri = "$($script:ApiBaseUrl)/v1/vision/enhance"

            Microsoft.PowerShell.Utility\Write-Verbose "Sending request to: $uri"

            # create form data for DeepStack API (it expects multipart form data)
            $form = @{
                image = Microsoft.PowerShell.Management\Get-Item -LiteralPath $imagePath
            }

            # send the request to the DeepStack image enhancement API
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Sending image data to DeepStack image enhancement API'

            $response = Microsoft.PowerShell.Utility\Invoke-RestMethod `
                -Verbose:$false `
                -ProgressAction Continue `
                -Uri $uri `
                -Method Post `
                -Form $form `
                -TimeoutSec 120 `
                -ErrorAction Stop

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Enhancement completed successfully'

            # process the response from DeepStack
            $enhancementResult = Format-EnhancementResult `
                -EnhanceData $response `
                -OutputPath $OutputPath

            Microsoft.PowerShell.Utility\Write-Output $enhancementResult
        }
        catch [System.Net.WebException] {

            Microsoft.PowerShell.Utility\Write-Error `
                "Network error during image enhancement: $_"
        }
        catch [System.TimeoutException] {

            Microsoft.PowerShell.Utility\Write-Error `
            ("Timeout during image enhancement for $imagePath " +
                '(enhancement can take longer for large images)')
        }
        catch {

            Microsoft.PowerShell.Utility\Write-Error `
                "Failed to enhance image $imagePath`: $_"
        }
    }

    end {

        # no cleanup required for this function
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.DeepStack
Original cmdlet filename  : Register-AllFaces.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Updates all face recognition profiles from image files in the faces directory.

.DESCRIPTION
This function updates the face recognition database with all images found in
the specified faces directory. The process involves:
1. Ensuring the face recognition service is running
2. Processing all images in each person's folder, registering all faces for
   that person with a single identifier (the folder name) in a batch operation
3. Supporting retry logic for failed registrations

Each person's folder can contain multiple images, and all images will be
registered under the same identifier (person name) in a single API call,
eliminating the need for _1, _2, etc. suffixes.

.PARAMETER FacesDirectory
The directory containing face images organized by person folders.
If not specified, uses the configured faces directory from Set-AIKnownFacesRootpath.
If no configuration exists, defaults to "b:\media\faces\"

.PARAMETER MaxRetries
Maximum number of retry attempts for failed registrations.
Default: 3

.PARAMETER ContainerName
The name for the Docker container.

.PARAMETER VolumeName
The name for the Docker volume for persistent storage.

.PARAMETER ServicePort
The port number for the DeepStack service.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts.

.PARAMETER ImageName
Custom Docker image name to use.

.PARAMETER NoDockerInitialize
Skip Docker Desktop initialization (used when already called by parent
function).

.PARAMETER Force
If specified, forces re-registration of all faces.

.PARAMETER RenameFailed
If specified, renames image files that fail with "400 Bad Request - Could not
find any face" by adding a ".failed" extension to the filename.

.PARAMETER ForceRebuild
Force rebuild of Docker container and remove existing data.

.PARAMETER UseGPU
Use GPU-accelerated version (requires NVIDIA GPU).

.EXAMPLE
Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `
    -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `
    -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3

.EXAMPLE
Register-AllFaces
Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"

.EXAMPLE
updatefaces -RenameFailed
###############################################################################>
function Register-AllFaces {

    [CmdletBinding()]
    [Alias('UpdateFaces')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]

    param(
        [parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = ('The directory containing face images organized by ' +
                'person folders. If not specified, uses the ' +
                'configured faces directory preference.')
        )]
        [string] $FacesDirectory,
        [parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = 'Maximum number of retry attempts for failed registrations'
        )]
        [int] $MaxRetries = 3,
        [parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'deepstack_face_recognition',
        [parameter(
            Position = 3,
            Mandatory = $false,
            HelpMessage = 'The name for the Docker volume for persistent storage'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'deepstack_face_data',
        [parameter(
            Position = 4,
            Mandatory = $false,
            HelpMessage = 'The port number for the DeepStack service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 5000,
        [parameter(
            Position = 5,
            Mandatory = $false,
            HelpMessage = ('Maximum time in seconds to wait for service ' +
                'health check')
        )]
        [ValidateRange(10, 300)]
        [int] $HealthCheckTimeout = 60,
        [parameter(
            Position = 6,
            Mandatory = $false,
            HelpMessage = 'Interval in seconds between health check attempts'
        )]
        [ValidateRange(1, 10)]
        [int] $HealthCheckInterval = 3,
        [parameter(
            Position = 7,
            Mandatory = $false,
            HelpMessage = 'Custom Docker image name to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImageName,

        [parameter(
            Mandatory = $false,
            HelpMessage = ('Skip Docker Desktop initialization (used when ' +
                'already called by parent function)')
        )]
        [switch] $NoDockerInitialize,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Force re-registration of all faces'
        )]
        [switch] $Force,
        [parameter(
            Mandatory = $false,
            HelpMessage = ('Rename failed image files that could not be ' +
                'processed due to no face found')
        )]
        [switch] $RenameFailed,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Force rebuild of Docker container and remove existing data'
        )]
        [switch] $ForceRebuild,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Use GPU-accelerated version (requires NVIDIA GPU)'
        )]
        [switch] $UseGPU,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show Docker Desktop window during initialization'
        )]
        [Alias('sw')]
        [switch]$ShowWindow,
        [Parameter(Mandatory = $false, HelpMessage = 'If specified, only use the session (do not persist changes to preferences database).')]
        [switch] $SessionOnly,
        [Parameter(Mandatory = $false, HelpMessage = 'If specified, clear the current session preferences before use.')]
        [switch] $ClearSession,
        [Alias('DatabasePath')]
        [Parameter(Mandatory = $false, HelpMessage = 'Path to the preferences database to use for known faces root path.')]
        [string] $PreferencesDatabasePath,
        [Alias('FromPreferences')]
        [Parameter(Mandatory = $false, HelpMessage = 'If specified, skip session logic when retrieving known faces root path.')]
        [switch] $SkipSession
    )

    begin {

        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Get-AIKnownFacesRootpath' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)
        $FacesDirectory = GenXdev\Get-AIKnownFacesRootpath @params

        Microsoft.PowerShell.Utility\Write-Verbose `
            "Using provided faces directory: $FacesDirectory"

        # initialize script-level tracking variables for registration results
        $script:RegistrationErrors = @()
        $script:SuccessfulRegistrations = 0
        $script:SkippedRegistrations = 0

        # validate that the faces directory exists before proceeding
        if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $FacesDirectory `
                    -PathType Container)) {

            throw "Faces directory does not exist: $FacesDirectory"
        }

        # output verbose information about the faces directory being processed
        Microsoft.PowerShell.Utility\Write-Verbose `
            "Processing faces from directory: $FacesDirectory"

        <#
        .SYNOPSIS
        Ensures the face recognition service is properly initialized.

        .DESCRIPTION
        This nested function handles the initialization of the DeepStack face
        recognition service with retry logic and proper error handling.

        .PARAMETER None
        Uses parent function parameters through scope inheritance.
        #>

        function Initialize-FaceRecognitionService {

            # set maximum initialization attempts and current attempt counter
            $maxAttempts = 3
            $attempt = 1

            # retry loop for service initialization
            while ($attempt -le $maxAttempts) {

                try {

                    # output verbose information about current initialization attempt
                    Microsoft.PowerShell.Utility\Write-Verbose `
                    ("Attempt $attempt to initialize DeepStack face " +
                        'recognition service')

                    # copy parameters for the EnsureDeepStack function call
                    $ensureParams = GenXdev\Copy-IdenticalParamValues `
                        -BoundParameters $PSBoundParameters `
                        -FunctionName 'GenXdev\EnsureDeepStack' `
                        -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                            -Scope Local `
                            -ErrorAction SilentlyContinue)

                    # configure force rebuild parameter based on ForceRebuild switch
                    if ($ForceRebuild) {

                        $ensureParams.Force = $true
                    }
                    else {

                        $ensureParams.Force = if ($PSBoundParameters.ContainsKey(
                                'ForceRebuild')) {
                            $false
                        }
                        else {
                            $null
                        }
                    }

                    # ensure deepstack service is running
                    $null = GenXdev\EnsureDeepStack @ensureParams

                    # verify service is responding by performing health check
                    $null = Microsoft.PowerShell.Utility\Invoke-RestMethod `
                        -Verbose:$false `
                        -ProgressAction Continue `
                        -Uri "http://127.0.0.1:$ServicePort/" `
                        -TimeoutSec 10 `
                        -ErrorAction Stop

                    # output success message for service initialization
                    Microsoft.PowerShell.Utility\Write-Verbose `
                    ('DeepStack face recognition service initialized ' +
                        'successfully')

                    return $true
                }
                catch {

                    # output warning about failed initialization attempt
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        "Attempt $attempt failed: $_"

                    # wait before retry if not the last attempt
                    if ($attempt -lt $maxAttempts) {

                        # output verbose information about retry delay
                        Microsoft.PowerShell.Utility\Write-Verbose `
                            'Waiting 30 seconds before retry...'

                        # pause before next attempt
                        Microsoft.PowerShell.Utility\Start-Sleep -Seconds 30
                    }

                    # increment attempt counter
                    $attempt++
                }
            }

            # throw error if all attempts failed
            throw ('Failed to initialize DeepStack face recognition service ' +
                "after $maxAttempts attempts")
        }

        <#
        .SYNOPSIS
        Registers a single face with retry logic.

        .DESCRIPTION
        This nested function handles the registration of face images for a
        specific person with retry logic and error handling including support
        for renaming failed image files.

        .PARAMETER Identifier
        The name identifier for the person to register.

        .PARAMETER ImagePaths
        Array of image file paths to register for this person.

        .PARAMETER MaxRetries
        Maximum number of retry attempts for failed registrations.
        #>
        function Register-FaceWithRetry {

            param(
                [string] $Identifier,
                [string[]] $ImagePaths,
                [int] $MaxRetries
            )

            # initialize attempt counter
            $attempt = 1

            # retry loop for face registration
            while ($attempt -le $MaxRetries) {

                try {

                    # output verbose information about registration attempt
                    Microsoft.PowerShell.Utility\Write-Verbose `
                    ("Registering face: $Identifier with " +
                        "$($ImagePaths.Count) image(s) (attempt $attempt)")

                    # copy parameters for the Register-Face function call
                    $registerParams = GenXdev\Copy-IdenticalParamValues `
                        -BoundParameters $PSBoundParameters `
                        -FunctionName 'GenXdev\Register-Face' `
                        -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                            -Scope Local `
                            -ErrorAction SilentlyContinue)

                    # override ImagePath parameter with array of paths
                    $registerParams.ImagePath = $ImagePaths
                    $registerParams.Identifier = $Identifier

                    # register the face using the deepstack service
                    $null = GenXdev\Register-Face @registerParams `
                        -NoDockerInitialize -ErrorAction Stop

                    # add delay between successful registrations to prevent service overload
                    Microsoft.PowerShell.Utility\Start-Sleep -Milliseconds 500

                    return $true
                }
                catch {

                    # capture error message for analysis
                    $errorMessage = $_.Exception.Message

                    # output warning about failed registration attempt
                    Microsoft.PowerShell.Utility\Write-Verbose `
                    ("Registration attempt $attempt failed for " +
                        "$Identifier`: $errorMessage")

                    # check if this is a "no face found" error and handle accordingly
                    if ($RenameFailed -and ($errorMessage -like '*400*' -and
                            $errorMessage -like '*Bad Request*' -and
                            $errorMessage -like '*Could not find any face*')) {

                        # output verbose information about detected no face error
                        Microsoft.PowerShell.Utility\Write-Verbose `
                            "Detected 'no face found' error for $Identifier"

                        try {

                            # rename all failed image files
                            foreach ($imagePath in $ImagePaths) {

                                # create new filename with failed extension
                                $newPath = "$imagePath.failed"

                                # rename the failed image file
                                Microsoft.PowerShell.Management\Rename-Item `
                                    -LiteralPath $imagePath `
                                    -NewName $newPath `
                                    -ErrorAction Stop

                                # output information about renamed file
                                Microsoft.PowerShell.Utility\Write-Output `
                                ("Renamed failed image: $imagePath -> " +
                                    "$newPath")
                            }

                            # add error to tracking collection
                            $script:RegistrationErrors += @{
                                Identifier = $Identifier
                                ImagePaths = $ImagePaths
                                Error      = ('No face found - files renamed to ' +
                                    '.failed')
                            }

                            return $false
                        }
                        catch {

                            # output warning if file rename failed
                            Microsoft.PowerShell.Utility\Write-Verbose `
                                "Failed to rename files for $Identifier`: $_"
                        }
                    }

                    # wait before retry if not the last attempt
                    if ($attempt -lt $MaxRetries) {

                        # calculate retry delay with exponential backoff
                        $retryDelay = 3 + ($attempt * 2)  # 5, 7 seconds

                        # output verbose information about retry delay
                        Microsoft.PowerShell.Utility\Write-Verbose `
                            "Waiting $retryDelay seconds before retry..."

                        # pause before next attempt
                        Microsoft.PowerShell.Utility\Start-Sleep -Seconds $retryDelay
                    }

                    # increment attempt counter
                    $attempt++
                }
            }

            # add final error to tracking collection after all retries failed
            $script:RegistrationErrors += @{
                Identifier = $Identifier
                ImagePaths = $ImagePaths
                Error      = "Failed after $MaxRetries attempts"
            }

            return $false
        }

        <#
        .SYNOPSIS
        Processes images in a person's directory.

        .DESCRIPTION
        This nested function processes all valid image files in a person's
        directory and registers them as a batch for face recognition.

        .PARAMETER PersonDirectory
        The directory containing images for a specific person.

        .PARAMETER ForceUpdate
        Whether to force re-registration even if already registered.
        #>

        function ProcessPersonDirectory {

            param(
                [System.IO.DirectoryInfo] $PersonDirectory,
                [bool] $ForceUpdate
            )

            # extract person name from directory name (no _1, _2 suffixes needed)
            $personName = $PersonDirectory.Name
            $processedCount = 0

            # output verbose information about person being processed
            Microsoft.PowerShell.Utility\Write-Verbose `
                "Processing person: $personName"

            # get all image files in the person's directory excluding failed files
            $imageFiles = Microsoft.PowerShell.Management\Get-ChildItem `
                -LiteralPath $PersonDirectory.FullName `
                -File |
                Microsoft.PowerShell.Core\Where-Object {
                    $_.Extension -match '\.(jpg|jpeg|png|gif)$' -and
                    -not $_.Name.EndsWith('.failed')
                }

            # check if any image files were found
            if ($imageFiles.Count -eq 0) {

                # output warning if no images found for person
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "No image files found for person: $personName"

                return
            }

            # check if face is already registered unless forcing update
            if (-not $ForceUpdate) {

                # get list of existing registered faces
                $existingFaces = GenXdev\Get-RegisteredFaces `
                    -NoDockerInitialize `
                    -ErrorAction SilentlyContinue

                # skip if face already registered
                if ($existingFaces -contains $personName) {

                    # output verbose information about skipped registration
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        "Face already registered, skipping: $personName"

                    # increment skip counter and return
                    $script:SkippedRegistrations++
                    return
                }
            }

            # collect all image paths for batch registration
            $imagePaths = $imageFiles |
                Microsoft.PowerShell.Core\ForEach-Object { $_.FullName }

            try {

                # attempt to register all faces for this person in a single call
                if (Register-FaceWithRetry -Identifier $personName `
                        -ImagePaths $imagePaths `
                        -MaxRetries $MaxRetries) {

                    # increment success counters
                    $script:SuccessfulRegistrations++
                    $processedCount = $imageFiles.Count
                }
            }
            catch {

                # output warning for unexpected processing errors
                Microsoft.PowerShell.Utility\Write-Verbose `
                ('Unexpected error processing images for ' +
                    "$personName`: $_")
            }

            # output verbose information about processing results for person
            Microsoft.PowerShell.Utility\Write-Verbose `
                "Processed $processedCount images for $personName"
        }
    }    process {

        try {

            # initialize the face recognition service unless explicitly skipped
            if (-not $NoDockerInitialize) {

                # call the service initialization function
                Initialize-FaceRecognitionService
            }
            else {

                # output verbose information about skipped initialization
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'Skipping Docker initialization as requested'
            }

            # clear existing faces if force flag is specified
            if ($Force) {

                # output verbose information about force clearing
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'Force flag specified - clearing existing faces'

                # copy parameters for the Unregister-AllFaces function call
                $unregisterParams = GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $PSBoundParameters `
                    -FunctionName 'GenXdev\Unregister-AllFaces' `
                    -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                        -Scope Local `
                        -ErrorAction SilentlyContinue)

                # unregister all existing faces
                $null = GenXdev\Unregister-AllFaces @unregisterParams

                # pause to allow service to process the clearing operation
                Microsoft.PowerShell.Utility\Start-Sleep -Seconds 5
            }

            # save current location to restore later
            $originalLocation = Microsoft.PowerShell.Management\Get-Location

            try {

                # change to the faces directory for processing
                Microsoft.PowerShell.Management\Set-Location -LiteralPath $FacesDirectory

                # get all person directories from the faces directory
                $personDirectories = @(Microsoft.PowerShell.Management\Get-ChildItem -LiteralPath "$FacesDirectory" -Filter "*" `
                        -Directory)

                # check if any person directories were found
                if ($personDirectories.Count -eq 0) {
                    # output warning if no person directories found
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        "No person directories found in: $FacesDirectory"

                    return
                }

                # output verbose information about found directories
                Microsoft.PowerShell.Utility\Write-Verbose `
                ("Found $($personDirectories.Count) person directories " +
                    'to process')

                # process each person directory
                foreach ($personDir in $personDirectories) {

                    # call function to process individual person directory
                    ProcessPersonDirectory -PersonDirectory $personDir `
                        -ForceUpdate $Force
                }
            }
            finally {

                # restore original location regardless of success or failure
                Microsoft.PowerShell.Management\Set-Location -LiteralPath $originalLocation
            }

            # report final results to user
            Microsoft.PowerShell.Utility\Write-Output 'Face registration completed:'

            Microsoft.PowerShell.Utility\Write-Output `
            ("  Successful registrations: $script:SuccessfulRegistrations")

            Microsoft.PowerShell.Utility\Write-Output `
                "  Skipped registrations: $script:SkippedRegistrations"

            Microsoft.PowerShell.Utility\Write-Output `
                "  Failed registrations: $($script:RegistrationErrors.Count)"

            # report detailed error information if any errors occurred
            if ($script:RegistrationErrors.Count -gt 0) {

                # output warning header for failed registrations
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'The following registrations failed:'

                # output each individual error
                foreach ($errorInfo in $script:RegistrationErrors) {

                    # output specific error information
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        "  $($errorInfo.Identifier): $($errorInfo.Error)"
                }
            }
        }
        catch {

            # output error for any unexpected failures in main process
            Microsoft.PowerShell.Utility\Write-Error "Failed to update faces: $_"
        }
    }

    end {

        # output verbose information about process completion
        Microsoft.PowerShell.Utility\Write-Verbose `
            'Face registration process completed'
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.DeepStack
Original cmdlet filename  : Register-Face.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Registers a new face with the DeepStack face recognition API.

.DESCRIPTION
This function registers a face image with the DeepStack face recognition API by
uploading the image to the local API endpoint. It ensures the DeepStack
service is running and validates the image file before upload. The function
includes retry logic, error handling, and cleanup on failure.

.PARAMETER Identifier
The unique identifier for the face (e.g., person's name). Cannot be empty or
contain special characters.

.PARAMETER ImagePath
Array of local paths to image files (png, jpg, jpeg, or gif). All files must
exist and be valid image formats. Multiple images can be registered for the
same identifier in a single API call.

.PARAMETER ContainerName
The name for the Docker container.

.PARAMETER VolumeName
The name for the Docker volume for persistent storage.

.PARAMETER ServicePort
The port number for the DeepStack service.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts.

.PARAMETER ImageName
Custom Docker image name to use.

.PARAMETER NoDockerInitialize
Skip Docker initialization (used when already called by parent function).

.PARAMETER Force
Force rebuild of Docker container and remove existing data.

.PARAMETER UseGPU
Use GPU-accelerated version (requires NVIDIA GPU).

.EXAMPLE
Register-Face -Identifier "JohnDoe" -ImagePath @("C:\Users\YourName\faces\john1.jpg", "C:\Users\YourName\faces\john2.jpg")

.EXAMPLE
Register-Face "JohnDoe" @("C:\Users\YourName\faces\john1.jpg", "C:\Users\YourName\faces\john2.jpg")

.EXAMPLE
Register-Face -Identifier "JohnDoe" -ImagePath "C:\Users\YourName\faces\john.jpg"
#>
function Register-Face {

    [CmdletBinding()]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $true,
            HelpMessage = ('The unique identifier for the face ' +
                "(e.g., person's name)")
        )]
        [ValidateNotNullOrEmpty()]
        [string] $Identifier,
        [Parameter(
            Position = 1,
            Mandatory = $true,
            HelpMessage = ('Array of local paths to image files ' +
                '(png, jpg, jpeg, or gif)')
        )]
        [string[]] $ImagePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The name for the Docker container')
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'deepstack_face_recognition',
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('The name for the Docker volume for persistent ' +
                'storage')
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'deepstack_face_data',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The port number for the DeepStack service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 5000,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Maximum time in seconds to wait for service ' +
                'health check')
        )]
        [ValidateRange(10, 300)]
        [int] $HealthCheckTimeout = 60,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Interval in seconds between health check ' +
                'attempts')
        )]
        [ValidateRange(1, 10)]
        [int] $HealthCheckInterval = 3,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Custom Docker image name to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImageName,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Skip Docker initialization (used when already ' +
                'called by parent function)')
        )]
        [switch] $NoDockerInitialize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force rebuild of Docker container and remove ' +
                'existing data')
        )]
        [Alias('ForceRebuild')]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use GPU-accelerated version (requires ' +
                'NVIDIA GPU)')
        )]
        [switch] $UseGPU,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show Docker Desktop window during initialization'
        )]
        [Alias('sw')]
        [switch]$ShowWindow
    )

    begin {

        # use script-scoped variables set by ensuredeepstack with fallback defaults
        if (-not $ApiBaseUrl) {

            $noDockerInitialize = $false
        }

        # ensure deepstack face recognition service is running if not skipped
        if (-not $NoDockerInitialize) {

            # copy parameters that match ensuredeepstack function
            $ensureParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\EnsureDeepStack' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

            # initialize deepstack service with matching parameters
            $null = GenXdev\EnsureDeepStack @ensureParams
        } else {

            # log that docker initialization was skipped
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Skipping Docker initialization as requested'
        }

        # log the start of face registration process
        Microsoft.PowerShell.Utility\Write-Verbose `
            "Starting face registration process for $Identifier"

        # validate the identifier format for api compatibility
        function Test-IdentifierFormat {

            param([string]$identifier)

            # check for empty or whitespace identifier
            if ([string]::IsNullOrWhiteSpace($identifier)) {

                throw 'Identifier cannot be empty or whitespace'
            }

            # check for excessively long identifier
            if ($identifier.Length -gt 100) {

                throw 'Identifier cannot be longer than 100 characters'
            }

            # check for invalid characters that might cause api issues
            $invalidChars = @('<', '>', '"', '/', '\', '|', '?', '*', ':')

            foreach ($char in $invalidChars) {

                # warn about potentially problematic characters
                if ($identifier.Contains($char)) {

                    Microsoft.PowerShell.Utility\Write-Verbose `
                    ('Identifier contains potentially problematic ' +
                        "character: $char")
                }
            }
        }
    }    process {

        try {

            # validate identifier format before proceeding with registration
            Test-IdentifierFormat -identifier $Identifier

            # expand any relative paths to absolute paths and validate all images
            $validatedImagePaths = @()

            foreach ($path in $ImagePath) {

                # expand relative path to absolute path for api compatibility
                $expandedPath = GenXdev\Expand-Path $path

                # log the image being processed
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Processing image: $expandedPath"

                # validate that the file is a supported image format
                GenXdev\Test-DeepLinkImageFile -Path $expandedPath

                # add validated path to array for registration
                $validatedImagePaths += $expandedPath
            }

            # log the number of images being registered
            Microsoft.PowerShell.Utility\Write-Verbose `
            ("Registering $($validatedImagePaths.Count) images for: " +
                "$Identifier")

            # construct the api endpoint uri for deepstack face registration
            $uri = "$($script:ApiBaseUrl)/v1/vision/face/register"

            # log the registration endpoint being used
            Microsoft.PowerShell.Utility\Write-Verbose `
                "Registration endpoint: $uri"

            # create form data for deepstack api (expects multipart form data)
            $form = @{
                userid = $Identifier
            }

            # add each image to the form with sequential naming (image1, image2, etc.)
            for ($i = 0; $i -lt $validatedImagePaths.Count; $i++) {

                # use 'image' for single image, 'image1', 'image2' for multiple
                $imageKey = if ($validatedImagePaths.Count -eq 1) {
                    'image'
                } else {
                    "image$($i + 1)"
                }

                # add image file to form data
                $form[$imageKey] = Microsoft.PowerShell.Management\Get-Item `
                    -LiteralPath $validatedImagePaths[$i]
            }

            # send the http request to the deepstack face recognition api
            Microsoft.PowerShell.Utility\Write-Verbose `
            ("Uploading $($validatedImagePaths.Count) face image(s) " +
                "for: $Identifier")

            # add connection retry logic with exponential backoff
            $maxAttempts = 3

            $attempt = 1

            $baseDelay = 2

            while ($attempt -le $maxAttempts) {

                try {

                    # attempt to upload face images to deepstack api
                    $response = Microsoft.PowerShell.Utility\Invoke-RestMethod `
                        -Verbose:$false `
                        -ProgressAction Continue `
                        -Uri $uri `
                        -Method Post `
                        -Form $form `
                        -TimeoutSec 60

                    # success - break out of retry loop
                    break
                }
                catch [System.Net.WebException] {

                    # check if this is the final attempt
                    if ($attempt -eq $maxAttempts) {

                        # final attempt failed - re-throw the exception
                        throw
                    }

                    # calculate delay with exponential backoff (2, 4, 8 seconds)
                    $delay = $baseDelay * [Math]::Pow(2, $attempt - 1)

                    # log retry attempt with delay information
                    Microsoft.PowerShell.Utility\Write-Verbose `
                    ("Connection attempt $attempt failed for $Identifier. " +
                        "Retrying in $delay seconds...")

                    # wait before retrying with exponential backoff
                    Microsoft.PowerShell.Utility\Start-Sleep -Seconds $delay

                    # increment attempt counter for next iteration
                    $attempt++
                }
            }

            # log successful face registration
            Microsoft.PowerShell.Utility\Write-Output `
            ("Face(s) registered successfully for $Identifier " +
                "($($validatedImagePaths.Count) image(s))")

            # return the response from deepstack
            return $response
        }
        catch [System.Net.WebException] {

            # handle network-related errors during registration
            Microsoft.PowerShell.Utility\Write-Error `
                "Network error during face registration: $_"
        }
        catch [System.TimeoutException] {

            # handle timeout errors during registration
            Microsoft.PowerShell.Utility\Write-Error `
                "Timeout during face registration for $Identifier"
        }
        catch {

            # handle any other errors during registration
            Microsoft.PowerShell.Utility\Write-Error `
                "Failed to register face for $Identifier`: $_"

        }
    }

    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.DeepStack
Original cmdlet filename  : Unregister-AllFaces.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Removes all registered faces from the DeepStack face recognition system.

.DESCRIPTION
This function clears all registered faces from the DeepStack face recognition
database by removing all face files from the datastore directory and restarting
the service to reload an empty face registry. This is a destructive operation
that cannot be undone and will permanently remove all registered face data.

.PARAMETER Force
Bypasses confirmation prompts when removing all registered faces.

.PARAMETER NoDockerInitialize
Skip Docker Desktop initialization. Used when already called by parent function
to avoid duplicate initialization overhead.

.PARAMETER ForceRebuild
Force rebuild of Docker container and remove existing data. This will recreate
the entire DeepStack container from scratch.

.PARAMETER UseGPU
Use GPU-accelerated version of DeepStack. Requires NVIDIA GPU with proper
Docker GPU support configured.

.PARAMETER ContainerName
The name for the Docker container running DeepStack face recognition service.

.PARAMETER VolumeName
The name for the Docker volume used for persistent storage of face data.

.PARAMETER ServicePort
The port number for the DeepStack face recognition service HTTP API.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check to pass after
container operations.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts when verifying service
availability.

.PARAMETER ImageName
Custom Docker image name to use instead of the default DeepStack image.

.EXAMPLE
Unregister-AllFaces

Removes all registered faces with confirmation prompt.

.EXAMPLE
Unregister-AllFaces -Force

Removes all registered faces without confirmation prompt.

.EXAMPLE
unregall -Force

Uses alias to remove all faces without confirmation.
#>
function Unregister-AllFaces {

    [CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'High')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]

    param(
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Bypass confirmation prompts when removing all ' +
            'registered faces'
        )]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Skip Docker Desktop initialization (used when ' +
            'already called by parent function)'
        )]
        [switch] $NoDockerInitialize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force rebuild of Docker container and remove ' +
            'existing data'
        )]
        [switch] $ForceRebuild,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use GPU-accelerated version (requires NVIDIA GPU)'
        )]
        [switch] $UseGPU,
        [Parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'deepstack_face_recognition',
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = 'The name for the Docker volume for persistent ' +
            'storage'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'deepstack_face_data',
        [Parameter(
            Mandatory = $false,
            Position = 2,
            HelpMessage = 'The port number for the DeepStack service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 5000,
        [Parameter(
            Mandatory = $false,
            Position = 3,
            HelpMessage = 'Maximum time in seconds to wait for service health ' +
            'check'
        )]
        [ValidateRange(10, 300)]
        [int] $HealthCheckTimeout = 60,
        [Parameter(
            Mandatory = $false,
            Position = 4,
            HelpMessage = 'Interval in seconds between health check attempts'
        )]
        [ValidateRange(1, 10)]
        [int] $HealthCheckInterval = 3,
        [Parameter(
            Mandatory = $false,
            Position = 5,
            HelpMessage = 'Custom Docker image name to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImageName,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show Docker Desktop window during initialization'
        )]
        [Alias('sw')]
        [switch]$ShowWindow
    )
    begin {

        # use script-scoped variables set by ensuredeepstack with fallback
        # defaults
        if (-not $ApiBaseUrl) {

            $NoDockerInitialize = $false
        }

        # initialize container name from script scope if not already set
        if (-not $script:ContainerName) {

            $script:ContainerName = 'deepstack_face_recognition'
        }

        # ensure the deepstack face recognition service is running
        if (-not $NoDockerInitialize) {

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Ensuring DeepStack face recognition service is available'
            )

            # copy matching parameters from current function to ensure function
            $ensureParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\EnsureDeepStack' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

            # handle force rebuild parameter with null coalescing
            if ($ForceRebuild) {

                $ensureParams.Force = $true
            }
            else {

                $ensureParams.Force = $PSBoundParameters.ContainsKey('ForceRebuild') ? $false : $null
            }

            # ensure deepstack service is running and accessible
            $null = GenXdev\EnsureDeepStack @ensureParams
        }
        else {

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Skipping Docker initialization as requested'
            )
        }

        <#
        .SYNOPSIS
        Verifies that the container is running and the service is accessible.
        #>
        function Test-ContainerHealth {

            try {

                # first check if container is running
                $containerId = docker ps `
                    --filter "name=^$script:ContainerName$" `
                    --format '{{.ID}}' 2>$null

                # return false if container is not running
                if ([string]::IsNullOrWhiteSpace($containerId)) {

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Container $script:ContainerName is not running"
                    )

                    return $false
                }

                # test http service accessibility using same approach as
                # ensureFaceRecognition
                try {

                    # construct the uri for retrieving registered faces from deepstack
                    $uri = "$($script:ApiBaseUrl)/v1/vision/face/list"

                    # output verbose information about the api request
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Requesting registered faces from: $uri"
                    )

                    # invoke the rest api to get registered faces using post method
                    $null = Microsoft.PowerShell.Utility\Invoke-RestMethod `
                        -Verbose:$false `
                        -ProgressAction Continue `
                        -Uri $uri `
                        -Method Post `
                        -ContentType 'application/json' `
                        -Body '{}' `
                        -TimeoutSec 30 `
                        -ErrorAction Stop

                    return $true
                }
                catch {

                    # fallback to root endpoint if /faces fails
                    try {

                        $null = Microsoft.PowerShell.Utility\Invoke-WebRequest `
                            -Uri "$script:ApiBaseUrl/" `
                            -Method Get `
                            -TimeoutSec 5 `
                            -ErrorAction Stop

                        Microsoft.PowerShell.Utility\Write-Verbose (
                            'Service health check passed using root endpoint'
                        )

                        return $true
                    }
                    catch {

                        Microsoft.PowerShell.Utility\Write-Verbose (
                            'Service health check failed on both /faces and ' +
                            'root endpoints'
                        )

                        return $false
                    }
                }
            }
            catch {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Container health check failed: $_"
                )

                return $false
            }
        }

        <#
        .SYNOPSIS
        Recreates the faces directory structure in the container.
        #>
        function Initialize-FacesDirectory {

            try {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Ensuring faces directory structure exists'
                )

                # ensure the faces directory exists with proper permissions
                $null = docker exec $script:ContainerName `
                    mkdir -p /datastore 2>$null

                # throw error if directory creation failed
                if ($LASTEXITCODE -ne 0) {

                    throw 'Failed to create faces directory'
                }

                # set proper permissions
                $null = docker exec $script:ContainerName `
                    chmod 755 /datastore 2>$null

                # warn if permission setting failed but continue
                if ($LASTEXITCODE -ne 0) {

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Failed to set directory permissions'
                    )
                }

                # verify the directory is accessible and empty
                $null = docker exec $script:ContainerName `
                    test -d /datastore 2>$null

                # throw error if directory verification failed
                if ($LASTEXITCODE -ne 0) {

                    throw 'Faces directory verification failed'
                }

                # test write permissions
                $null = docker exec $script:ContainerName `
                    touch /datastore/.test_write 2>$null

                # verify write permissions and clean up test file
                if ($LASTEXITCODE -eq 0) {

                    $null = docker exec $script:ContainerName `
                        rm -f /datastore/.test_write 2>$null

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Directory is writable and ready'
                    )
                }
                else {

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Directory write test failed'
                    )
                }

                return $true
            }
            catch {

                Microsoft.PowerShell.Utility\Write-Error (
                    "Failed to initialize faces directory: $_"
                )

                return $false
            }
        }
    }    process {

        try {

            # check if we should proceed with face removal
            $confirmMessage = (
                'This will remove ALL registered faces from the system. ' +
                'This action cannot be undone.'
            )

            # proceed only if force is used or user confirms the action
            if ($Force -or $PSCmdlet.ShouldProcess('All registered faces', $confirmMessage)) {

                # verify container health before proceeding with operations
                if (-not (Test-ContainerHealth)) {

                    # handle case where docker initialization was skipped
                    if ($NoDockerInitialize) {

                        Microsoft.PowerShell.Utility\Write-Verbose (
                            'Container is not accessible and Docker ' +
                            'initialization was skipped. Cannot proceed with ' +
                            'face cleanup.'
                        )

                        Microsoft.PowerShell.Utility\Write-Output (
                            'Face cleanup skipped - container not accessible'
                        )

                        return
                    }
                    else {

                        throw 'Container is not healthy or accessible'
                    }
                }

                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Removing all faces from: /datastore'
                )

                # remove all contents of faces directory using comprehensive
                # approach first try to remove all image files specifically
                $removeFilesResult = docker exec $script:ContainerName bash -c (
                    'find /datastore -type f \( ' +
                    "-name '*.jpg' -o -name '*.jpeg' -o -name '*.png' -o " +
                    "-name '*.gif' \) -delete"
                ) 2>&1

                # warn if specific image file removal failed but continue
                if ($LASTEXITCODE -ne 0) {

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Failed to remove image files: $removeFilesResult"
                    )
                }

                # then remove any remaining files and subdirectories
                $removeAllResult = docker exec $script:ContainerName bash -c (
                    'rm -rf /datastore/* /datastore/.*'
                ) 2>&1

                # note if some hidden files could not be removed
                if ($LASTEXITCODE -ne 0) {

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Note: Some hidden files may not have been removed: ' +
                        "$removeAllResult"
                    )
                }

                # verify the directory is empty after cleanup
                $null = docker exec $script:ContainerName bash -c (
                    'ls -la /datastore'
                ) 2>&1

                # count remaining files to verify cleanup success
                $remainingFiles = docker exec $script:ContainerName bash -c (
                    'find /datastore -type f | wc -l'
                ) 2>&1

                # verify all files were successfully removed
                if ($LASTEXITCODE -eq 0 -and $remainingFiles -match '^\s*0\s*$') {

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        '✅ All files successfully removed from faces directory'
                    )
                }
                else {

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Some files may still remain in faces directory: ' +
                        "$remainingFiles files found"
                    )
                }

                # recreate the directory structure for clean state
                if (Initialize-FacesDirectory) {

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Faces directory structure recreated'
                    )

                    # restart container to reload face recognition service this
                    # ensures in-memory faces_dict is cleared and reloaded from
                    # empty directory
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Restarting face recognition service to reload empty ' +
                        'faces directory...'
                    )

                    # restart the docker container
                    $restartResult = docker restart $script:ContainerName 2>&1

                    # verify restart was successful
                    if ($LASTEXITCODE -eq 0) {

                        Microsoft.PowerShell.Utility\Write-Verbose (
                            'Service restarted successfully'
                        )

                        # wait for service to be ready after restart
                        Microsoft.PowerShell.Utility\Start-Sleep -Seconds 5

                        # verify service is responding after restart
                        $maxRetries = 10
                        $retryCount = 0
                        $serviceReady = $false

                        # wait for service to become ready with retry logic
                        while ($retryCount -lt $maxRetries -and -not $serviceReady) {

                            # test if service is responsive
                            if (Test-ContainerHealth) {

                                $serviceReady = $true

                                Microsoft.PowerShell.Utility\Write-Verbose (
                                    'Service is ready after restart'
                                )
                            }
                            else {

                                $retryCount++

                                Microsoft.PowerShell.Utility\Write-Verbose (
                                    'Waiting for service to be ready... ' +
                                    "($retryCount/$maxRetries)"
                                )

                                Microsoft.PowerShell.Utility\Start-Sleep -Seconds 2
                            }
                        }

                        # warn if service is not ready after all retries
                        if (-not $serviceReady) {

                            Microsoft.PowerShell.Utility\Write-Verbose (
                                'Service may not be fully ready after restart'
                            )
                        }
                    }
                    else {

                        Microsoft.PowerShell.Utility\Write-Verbose (
                            "Failed to restart service: $restartResult"
                        )
                    }

                    Microsoft.PowerShell.Utility\Write-Output (
                        'All faces unregistered successfully.'
                    )
                }
                else {

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Directory cleanup completed but structure recreation ' +
                        'failed'
                    )
                }

                # optional verification by checking if any faces remain
                # registered
                try {

                    # get list of remaining registered faces
                    $remainingFaces = GenXdev\Get-RegisteredFaces `
                        -NoDockerInitialize `
                        -ErrorAction SilentlyContinue

                    # warn if some faces are still registered after cleanup
                    if ($remainingFaces -and $remainingFaces.Count -gt 0) {

                        Microsoft.PowerShell.Utility\Write-Verbose (
                            'Some faces may still be registered after cleanup'
                        )
                    }
                    else {

                        Microsoft.PowerShell.Utility\Write-Verbose (
                            'Verified: No faces remain registered'
                        )
                    }
                }
                catch {

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Could not verify cleanup completion: $_"
                    )
                }
            }
            else {

                Microsoft.PowerShell.Utility\Write-Output (
                    'Operation cancelled by user'
                )
            }
        }
        catch {

            Microsoft.PowerShell.Utility\Write-Error (
                "Failed to unregister all faces: $_"
            )
        }
    }    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.AI.DeepStack
Original cmdlet filename  : Unregister-Face.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Deletes a registered face by its identifier from DeepStack.

.DESCRIPTION
This function deletes a face from the DeepStack face recognition system using
its unique identifier. It communicates with the API endpoint to remove the
registered face data from the system permanently.

.PARAMETER Identifier
The unique identifier of the face to delete from the DeepStack system.

.PARAMETER NoDockerInitialize
Skip Docker initialization (used when already called by parent function).

.PARAMETER Force
Force rebuild of Docker container and remove existing data.

.PARAMETER UseGPU
Use GPU-accelerated version (requires NVIDIA GPU).

.PARAMETER ContainerName
The name for the Docker container.

.PARAMETER VolumeName
The name for the Docker volume for persistent storage.

.PARAMETER ServicePort
The port number for the DeepStack service.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts.

.PARAMETER ImageName
Custom Docker image name to use.

.EXAMPLE
Unregister-Face -Identifier "JohnDoe" -NoDockerInitialize $false `
    -ContainerName "deepstack_face_recognition" -ServicePort 5000

.EXAMPLE
rface "JohnDoe"

.NOTES
DeepStack API Documentation: POST /v1/vision/face/delete endpoint
This endpoint is used to remove a previously registered face from the system.
#>
function Unregister-Face {

    [CmdletBinding(SupportsShouldProcess)]
    [OutputType([System.Boolean])]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $true,
            HelpMessage = ('The unique identifier of the face to delete from ' +
                'the DeepStack system'),
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true
        )]
        [ValidateNotNullOrEmpty()]
        [string] $Identifier,
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'deepstack_face_recognition',
        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = ('The name for the Docker volume for persistent ' +
                'storage')
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'deepstack_face_data',
        [Parameter(
            Position = 3,
            Mandatory = $false,
            HelpMessage = 'The port number for the DeepStack service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 5000,
        [Parameter(
            Position = 4,
            Mandatory = $false,
            HelpMessage = ('Maximum time in seconds to wait for service ' +
                'health check')
        )]
        [ValidateRange(10, 300)]
        [int] $HealthCheckTimeout = 60,
        [Parameter(
            Position = 5,
            Mandatory = $false,
            HelpMessage = ('Interval in seconds between health check ' +
                'attempts')
        )]
        [ValidateRange(1, 10)]
        [int] $HealthCheckInterval = 3,
        [Parameter(
            Position = 6,
            Mandatory = $false,
            HelpMessage = 'Custom Docker image name to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImageName,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Skip Docker initialization (used when already ' +
                'called by parent function)')
        )]
        [switch] $NoDockerInitialize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force rebuild of Docker container and remove ' +
                'existing data')
        )]
        [Alias('ForceRebuild')]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use GPU-accelerated version (requires NVIDIA GPU)'
        )]
        [switch] $UseGPU,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show Docker Desktop window during initialization'
        )]
        [Alias('sw')]
        [switch]$ShowWindow
    )

    begin {

        # use script-scoped variables set by ensuredeepstack, with fallback
        # defaults
        if (-not $ApiBaseUrl) {
            $NoDockerInitialize = $false
        }

        # ensure the deepstack face recognition service is running
        if (-not $NoDockerInitialize) {
            Microsoft.PowerShell.Utility\Write-Verbose ('Ensuring DeepStack ' +
                'face recognition service is available')

            # copy matching parameters to pass to ensuredeepstack function
            $ensureParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\EnsureDeepStack' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local -ErrorAction SilentlyContinue)

            # initialize deepstack service with specified parameters
            $null = GenXdev\EnsureDeepStack @ensureParams
        }
        else {
            Microsoft.PowerShell.Utility\Write-Verbose ('Skipping Docker ' +
                'initialization as requested')
        }

        # define internal helper function to validate face existence
        function Test-FaceExistence {

            param([string]$identifier)

            try {
                # retrieve all registered faces from deepstack service
                $registeredFaces = GenXdev\Get-RegisteredFaces `
                    -NoDockerInitialize -ErrorAction Stop

                # check if the specified identifier exists in registered faces
                return $registeredFaces -contains $identifier
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Verbose ('Unable to ' +
                    "verify if face exists: $_")

                # proceed with deletion attempt if we cannot verify existence
                return $true
            }
        }
    }    process {

        try {
            # validate identifier is not empty or whitespace
            if ([string]::IsNullOrWhiteSpace($Identifier)) {
                Microsoft.PowerShell.Utility\Write-Error ('Identifier ' +
                    'cannot be empty or whitespace')
                return
            }

            # check if we should proceed with deletion using whatif support
            if ($PSCmdlet.ShouldProcess($Identifier,
                    'Remove face registration')) {

                # verify face exists in system before attempting deletion
                if (-not (Test-FaceExistence -Identifier $Identifier)) {
                    Microsoft.PowerShell.Utility\Write-Verbose ('Face with ' +
                        "identifier '$Identifier' may not exist")
                }

                # construct the uri for the delete request with deepstack api
                $uri = "$($script:ApiBaseUrl)/v1/vision/face/delete"

                Microsoft.PowerShell.Utility\Write-Verbose ('Sending delete ' +
                    "request to: $uri")

                # create form data for deepstack api endpoint (like
                # register-face)
                $form = @{
                    userid = $Identifier
                }

                Microsoft.PowerShell.Utility\Write-Verbose ('Form data - ' +
                    "userid: '$Identifier'")

                # send delete request to the deepstack api endpoint using form
                # data
                $response = Microsoft.PowerShell.Utility\Invoke-RestMethod `
                    -Verbose:$false `
                    -ProgressAction Continue `
                    -Uri $uri `
                    -Method Post `
                    -Form $form `
                    -TimeoutSec 30 `
                    -ErrorAction Stop

                Microsoft.PowerShell.Utility\Write-Verbose ('API Response: ' +
                    "$($response | Microsoft.PowerShell.Utility\ConvertTo-Json ' +
                    '-Depth 3)")

                # check if the response indicates success
                if ($response.PSObject.Properties['success'] -and
                    $response.success -eq $true) {
                    return $true
                }
                elseif ($response.PSObject.Properties['success'] -and
                    $response.success -eq $false) {
                    # deepstack returned an error in the response
                    $errorMessage = if ($response.error) {
                        $response.error
                    }
                    else {
                        'Unknown error'
                    }
                    Microsoft.PowerShell.Utility\Write-Error ('DeepStack ' +
                        "API error: $errorMessage")
                    return $false
                }
                else {
                    # no success property, assume failure
                    Microsoft.PowerShell.Utility\Write-Error ('Unexpected ' +
                        'API response format')
                    return $false
                }
            }
        }
        catch [System.Net.WebException] {
            # handle specific http error codes for better user feedback
            $statusCode = $_.Exception.Response.StatusCode

            # try to read the response content for more details
            try {
                $responseStream = $_.Exception.Response.GetResponseStream()
                $reader = Microsoft.PowerShell.Utility\New-Object `
                    System.IO.StreamReader($responseStream)
                $responseContent = $reader.ReadToEnd()
                $reader.Close()
                $responseStream.Close()

                Microsoft.PowerShell.Utility\Write-Verbose ('API Response: ' +
                    "$responseContent")

                # try to parse json response for error details
                try {
                    $errorResponse = $responseContent |
                        Microsoft.PowerShell.Utility\ConvertFrom-Json
                    if ($errorResponse.error) {
                        Microsoft.PowerShell.Utility\Write-Error ('DeepStack ' +
                            "API error: $($errorResponse.error)")
                        return
                    }
                }
                catch {
                    # if json parsing fails, just show the raw response
                    Microsoft.PowerShell.Utility\Write-Error ('DeepStack ' +
                        "API response: $responseContent")
                    return
                }
            }
            catch {
                # if we can't read the response, fall back to generic error
                # handling
            }

            if ($statusCode -eq 404) {
                Microsoft.PowerShell.Utility\Write-Verbose ('Face with ' +
                    "identifier '$Identifier' was not found")
                return $false
            }
            else {
                Microsoft.PowerShell.Utility\Write-Error ('Network error ' +
                    "while deleting face '$Identifier': $_")
                return $false
            }
        }
        catch [System.TimeoutException] {
            Microsoft.PowerShell.Utility\Write-Error ('Timeout while ' +
                "deleting face '$Identifier'")
            return $false
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Error ('Failed to delete ' +
                "face '$Identifier': $_")            return $false
        }
    }

    end {
    }
}

