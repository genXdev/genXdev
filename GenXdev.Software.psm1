<##############################################################################
Part of PowerShell module : GenXdev.Software
Original cmdlet filename  : EnsureDeepStack.ps1
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
Ensures DeepStack face recognition service is installed and running.

.DESCRIPTION
This function sets up and manages DeepStack face recognition service using
Docker. It ensures that Docker Desktop is installed, pulls the DeepStack Docker
image, and runs the service in a container with persistent storage for
registered faces.

DeepStack provides a simple REST API for face detection, registration, and
recognition that is well-documented and actively maintained.

.PARAMETER ContainerName
The name for the Docker container. Default: "deepstack_face_recognition"

.PARAMETER VolumeName
The name for the Docker volume for persistent storage.
Default: "deepstack_face_data"

.PARAMETER ServicePort
The port number for the DeepStack service. Default: 5000

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check. Default: 60

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts. Default: 3

.PARAMETER ImageName
Custom Docker image name to use. If not specified, uses
deepquestai/deepstack:latest or deepquestai/deepstack:gpu based on UseGPU
parameter.

.PARAMETER Force
If specified, forces rebuilding of Docker container and removes existing data.
This will remove existing containers and volumes, pull latest DeepStack image,
create a fresh container with clean data, and clear all registered faces.

.PARAMETER UseGPU
If specified, uses the GPU-accelerated version of DeepStack (requires NVIDIA
GPU).

.EXAMPLE
EnsureDeepStack -ContainerName "deepstack_face_recognition" `
                -VolumeName "deepstack_face_data" `
                -ServicePort 5000 `
                -HealthCheckTimeout 60 `
                -HealthCheckInterval 3

.EXAMPLE
EnsureDeepStack -Force -UseGPU

.NOTES
DeepStack Face Recognition API Endpoints:
- POST /v1/vision/face/register : Register known faces
- POST /v1/vision/face/list : List registered faces
- POST /v1/vision/face/recognize : Recognize faces in image
- POST /v1/vision/face/delete : Remove registered face

For more information, see: https://docs.deepstack.cc/face-recognition/
#>
function EnsureDeepStack {

    [CmdletBinding()]
    [OutputType([System.Boolean])]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'deepstack_face_recognition',
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = ('The name for the Docker volume for persistent ' +
                'storage')
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'deepstack_face_data',
        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'The port number for the DeepStack service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 5000,
        [Parameter(
            Position = 3,
            Mandatory = $false,
            HelpMessage = ('Maximum time in seconds to wait for service ' +
                'health check')
        )]
        [ValidateRange(10, 300)]
        [int] $HealthCheckTimeout = 60,
        [Parameter(
            Position = 4,
            Mandatory = $false,
            HelpMessage = ('Interval in seconds between health check ' +
                'attempts')
        )]
        [ValidateRange(1, 10)]
        [int] $HealthCheckInterval = 3,
        [Parameter(
            Position = 5,
            Mandatory = $false,
            HelpMessage = 'Custom Docker image name to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImageName,
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
        [switch]$ShowWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The monitor to use, 0 = default, -1 is discard'
        )]
        [Alias('m', 'mon')]
        [int] $Monitor = -2,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Removes the borders of the window'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial width of the window'
        )]
        [int]$Width,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial height of the window'
        )]
        [int]$Height,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the left side of the screen'
        )]
        [switch]$Left,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the right side of the screen'
        )]
        [switch]$Right,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the bottom side of the screen'
        )]
        [switch]$Bottom,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window in the center of the screen'
        )]
        [switch]$Centered,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximize the window'
        )]
        [Alias('fs')]
        [switch]$Fullscreen,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore PowerShell window focus'
        )]
        [Alias('rf', 'bg')]
        [switch]$RestoreFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Will either set the window fullscreen on a ' +
                'different monitor than Powershell, or side by side with ' +
                'Powershell on the same monitor')
        )]
        [Alias('sbs')]
        [switch]$SideBySide,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the window after opening'
        )]
        [Alias('fw','focus')]
        [switch]$FocusWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the window to foreground after opening'
        )]
        [Alias('fg')]
        [switch]$SetForeground,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters and modifiers when sending keys'
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hold keyboard focus on target window when sending keys'
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Shift+Enter instead of Enter when sending keys'
        )]
        [Alias('UseShiftEnter')]
        [switch] $SendKeyUseShiftEnter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Delay between different input strings in ' +
                'milliseconds when sending keys')
        )]
        [Alias('DelayMilliSeconds')]
        [int] $SendKeyDelayMilliSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences')
        )]
        [switch]$SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for ' +
                'AI preferences')
        )]
        [switch]$ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Store settings only in persistent preferences ' +
                'without affecting session')
        )]
        [Alias('FromPreferences')]
        [switch]$SkipSession
    )

    begin {

        # ensure graphics assembly is loaded for image processing
        if (-not [System.Drawing.Rectangle]) {

            Microsoft.PowerShell.Utility\Add-Type -AssemblyName System.Drawing
        }

        # set script-scoped variables from parameters for container management
        $script:containerName = $ContainerName

        # determine appropriate docker image based on gpu usage preference
        $script:imageName = if ($ImageName) {

            $ImageName

        } elseif ($UseGPU) {

            'deepquestai/deepstack:gpu'

        } else {

            'deepquestai/deepstack'
        }

        # set script-scoped variables for docker volume and networking
        $script:volumeName = $VolumeName

        # construct base api url for service health checks
        $script:apiBaseUrl = "http://127.0.0.1:$ServicePort"

        # set script-scoped variables for service configuration
        $script:servicePort = $ServicePort

        # set script-scoped variables for health monitoring
        $script:healthCheckTimeout = $HealthCheckTimeout

        $script:healthCheckInterval = $HealthCheckInterval

        # store original location for cleanup at the end of the function
        $script:originalLocation = `
        (Microsoft.PowerShell.Management\Get-Location).Path

        <#
        .SYNOPSIS
        Tests if Docker is available and responsive.

        .DESCRIPTION
        Verifies that Docker Desktop is running and accessible by attempting to
        query the Docker version. Returns true if Docker responds properly.
        #>
        function Test-DockerAvailability {

            try {

                # attempt to get docker version to verify docker is running
                $null = docker version --format '{{.Server.Version}}' 2>$null

                # check if command succeeded
                if ($LASTEXITCODE -eq 0) {

                    # docker is responding, check if there are any login issues
                    $dockerInfo = docker info 2>&1

                    if ($dockerInfo -match 'not logged in' -or
                        $dockerInfo -match 'Please log in') {

                        Microsoft.PowerShell.Utility\Write-Verbose `
                        ('Docker engine is running but user is not ' +
                            'logged in. Some operations may require ' +
                            'authentication via Docker Desktop.')
                    }

                    return $true
                }

                return $false

            } catch {

                return $false
            }
        }
        <#
        .SYNOPSIS
        Tests if a Docker image exists.

        .DESCRIPTION
        Checks if a specified Docker image exists locally by querying the
        Docker image registry. Returns true if the image is found.
        #>
        function Test-DockerImage {

            param([string]$ImageName)

            try {

                # query docker for existing images matching the specified name
                $images = docker images $ImageName --format '{{.Repository}}' `
                    2>$null

                return -not [string]::IsNullOrWhiteSpace($images)

            } catch {

                return $false
            }
        }

        <#
        .SYNOPSIS
        Tests if a Docker container exists (running or stopped).

        .DESCRIPTION
        Searches for a Docker container with the specified name, regardless of
        its current state. Returns true if a container with the name is found.
        #>
        function Test-DockerContainer {

            param([string]$ContainerName)

            try {

                # search for containers with exact name match including stopped ones
                $containers = docker ps -a --filter "name=^${ContainerName}$" `
                    --format '{{.ID}}' 2>$null

                return -not [string]::IsNullOrWhiteSpace($containers)

            } catch {

                return $false
            }
        }

        <#
        .SYNOPSIS
        Tests if a Docker container is running.

        .DESCRIPTION
        Checks if a Docker container with the specified name is currently in a
        running state. Returns true only if the container is actively running.
        #>
        function Test-DockerContainerRunning {

            param([string]$ContainerName)

            try {

                # search for running containers with exact name match
                $containers = docker ps --filter "name=^${ContainerName}$" `
                    --format '{{.ID}}' 2>$null

                return -not [string]::IsNullOrWhiteSpace($containers)

            } catch {

                return $false
            }
        }

        <#
        .SYNOPSIS
        Safely removes a Docker container.

        .DESCRIPTION
        Stops and removes a Docker container if it exists. Uses ShouldProcess
        to confirm the action before proceeding with container removal.
        #>
        function Remove-DockerContainer {

            [CmdletBinding(SupportsShouldProcess)]
            param([string]$ContainerName)

            try {

                # check if container exists before attempting removal
                if (Test-DockerContainer $ContainerName) {

                    if ($PSCmdlet.ShouldProcess($ContainerName,
                            'Stop and remove Docker container')) {

                        # output verbose information about container removal
                        Microsoft.PowerShell.Utility\Write-Verbose `
                            "Stopping and removing container: $ContainerName"

                        # stop the container gracefully
                        $null = docker stop $ContainerName 2>$null

                        # remove the container completely
                        $null = docker rm $ContainerName 2>$null
                    }
                }

            } catch {

                # warn about container removal failures
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Failed to remove container ${ContainerName}: $_"
            }
        }

        <#
        .SYNOPSIS
        Safely removes a Docker volume.

        .DESCRIPTION
        Removes a Docker volume by name using ShouldProcess to confirm the
        action before proceeding with volume deletion.
        #>
        function Remove-DockerVolume {

            [CmdletBinding(SupportsShouldProcess)]
            param([string]$VolumeName)

            try {

                if ($PSCmdlet.ShouldProcess($VolumeName,
                        'Remove Docker volume')) {

                    # output verbose information about volume removal
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        "Removing Docker volume: $VolumeName"

                    # remove the docker volume and discard output
                    $null = docker volume rm $VolumeName 2>$null
                }

            } catch {

                # warn about volume removal failures
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Failed to remove volume ${VolumeName}: $_"
            }
        }

        <#
        .SYNOPSIS
        Tests if the DeepStack service is healthy by checking the API endpoint.

        .DESCRIPTION
        Performs a health check by making an HTTP request to the DeepStack
        service root endpoint. Returns true if the service responds successfully.
        #>
        function Test-ServiceHealth {

            try {

                # test the health endpoint with timeout to verify service responsiveness
                $null = Microsoft.PowerShell.Utility\Invoke-RestMethod `
                    -Verbose:$false `
                    -ProgressAction Continue `
                    -Uri "$script:apiBaseUrl/" `
                    -TimeoutSec 10 `
                    -ErrorAction Stop

                # log successful health check for debugging
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'DeepStack service health check passed'

                return $true

            } catch {

                # log failed health check with error details for debugging
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "DeepStack service health check failed: $_"

                return $false
            }
        }

        <#
        .SYNOPSIS
        Waits for the service to become healthy.

        .DESCRIPTION
        Continuously checks the DeepStack service health until it becomes ready
        or the timeout period expires. Uses configurable retry intervals.
        #>
        function Wait-ServiceReady {

            # output verbose information about waiting for service readiness
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Waiting for DeepStack service to become ready...'

            # initialize retry counter
            $retryCount = 0

            # calculate maximum retry attempts based on timeout and interval
            $maxRetries = [math]::Floor($script:healthCheckTimeout / `
                    $script:healthCheckInterval)

            while ($retryCount -lt $maxRetries) {

                # test service health and return success if ready
                if (Test-ServiceHealth) {

                    # log successful service readiness
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        'DeepStack service is ready and responding'

                    return $true
                }

                # increment retry counter for next attempt
                $retryCount++

                # output verbose information about retry attempt
                Microsoft.PowerShell.Utility\Write-Verbose `
                ('Service not ready yet, attempt ' +
                    "$retryCount/$maxRetries...")

                # wait between health check attempts
                Microsoft.PowerShell.Utility\Start-Sleep `
                    -Seconds $script:healthCheckInterval
            }

            # warn about service readiness timeout
            Microsoft.PowerShell.Utility\Write-Verbose `
            ('DeepStack service did not become ready within ' +
                "$script:healthCheckTimeout seconds")

            return $false
        }

        <#
        .SYNOPSIS
        Pulls the latest DeepStack Docker image.

        .DESCRIPTION
        Downloads the specified DeepStack Docker image from the registry. Handles
        both standard and GPU-accelerated versions based on configuration.
        #>
        function Get-DeepStackImage {

            try {

                # output verbose information about docker image pull operation
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Pulling DeepStack image: $script:imageName"

                Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Cyan `
                    "Pulling DeepStack image: $script:imageName"

                # pull the specified docker image
                $pullResult = docker pull $script:imageName 2>&1

                # check if docker pull command failed
                if ($LASTEXITCODE -ne 0) {

                    # check if the error is related to authentication
                    if ($pullResult -match 'authentication required' -or
                        $pullResult -match 'unauthorized' -or
                        $pullResult -match 'not logged in') {

                        Microsoft.PowerShell.Utility\Write-Verbose `
                        ('Docker pull failed due to authentication. ' +
                            'Please log in to Docker Desktop first. ' +
                            "Error: $pullResult")

                        # try to open docker desktop for user to log in
                        try {

                            $dockerDesktopPath = `
                                Microsoft.PowerShell.Core\Get-Command `
                                'Docker Desktop.exe' -ErrorAction SilentlyContinue

                            if ($dockerDesktopPath) {

                                Microsoft.PowerShell.Utility\Write-Host `
                                ('Opening Docker Desktop for ' +
                                    'authentication...') -ForegroundColor Yellow

                                Microsoft.PowerShell.Management\Start-Process `
                                    $dockerDesktopPath.Source -WindowStyle Normal
                            }

                        } catch {
                            # ignore errors opening docker desktop
                        }
                    }

                    throw "Failed to pull DeepStack image: $pullResult"
                }

                # log successful image pull
                Microsoft.PowerShell.Utility\Write-Verbose `
                    '✅ DeepStack image pulled successfully'

                Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Cyan `
                    '✅ DeepStack image pulled successfully'

                return $true

            } catch {

                # log error details for image pull failure
                Microsoft.PowerShell.Utility\Write-Error `
                    "Failed to pull DeepStack image: $_"

                return $false
            }
        }

        <#
        .SYNOPSIS
        Creates and starts a new DeepStack container.

        .DESCRIPTION
        Creates a new Docker container with the DeepStack image, configures
        networking, volume mounts, and environment variables for face recognition.
        #>
        function New-DeepStackContainer {

            [CmdletBinding(SupportsShouldProcess)]
            param()

            try {

                # output verbose information about container creation
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'Creating DeepStack container...'

                Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Cyan `
                    "Creating DeepStack container: $script:containerName"

                # check if docker volume already exists
                $volumeExists = docker volume ls `
                    --filter "name=^$($script:volumeName)$" `
                    --format '{{.Name}}' 2>$null

                # create docker volume if it doesn't exist
                if ([string]::IsNullOrWhiteSpace($volumeExists)) {

                    # use shouldprocess to confirm volume creation
                    if ($PSCmdlet.ShouldProcess("$script:volumeName",
                            'Create Docker volume')) {

                        # output verbose information about volume creation
                        Microsoft.PowerShell.Utility\Write-Verbose `
                            "Creating Docker volume: $script:volumeName"

                        # create the docker volume for persistent storage
                        $volumeResult = docker volume create $script:volumeName `
                            2>&1

                        # check if volume creation failed
                        if ($LASTEXITCODE -ne 0) {

                            throw ('Failed to create Docker volume ' +
                                "$script:volumeName`: $volumeResult")
                        }
                    }
                }

                # prepare docker run arguments for container creation
                $dockerArgs = @(
                    'run', '-d'
                    '--name', $script:containerName
                    '-p', "$($script:servicePort):5000"
                    '-v', "$($script:volumeName):/datastore"
                    '-e', 'VISION-FACE=True'
                    '-e', 'VISION-DETECTION=True'
                    '-e', 'VISION-SCENE=True'
                    '--restart', 'unless-stopped'
                )

                # add gpu support if requested
                if ($UseGPU) {

                    $dockerArgs += '--gpus', 'all'
                }

                # add the docker image name as final argument
                $dockerArgs += $script:imageName

                # output verbose information about docker command
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Docker command: docker $($dockerArgs -join ' ')"

                # use shouldprocess to confirm container creation
                if ($PSCmdlet.ShouldProcess("$script:containerName",
                        'Create DeepStack container')) {

                    # execute docker run command to create container
                    $result = & docker @dockerArgs 2>&1

                    # check if container creation failed
                    if ($LASTEXITCODE -ne 0) {

                        throw "Failed to create container: $result"
                    }
                }

                # wait for container to initialize properly
                Microsoft.PowerShell.Utility\Start-Sleep -Seconds 5

                # log successful container creation
                Microsoft.PowerShell.Utility\Write-Verbose `
                    '✅ DeepStack container created successfully'

                return $true

            } catch {

                # log error details for container creation failure
                Microsoft.PowerShell.Utility\Write-Error `
                    "Failed to create DeepStack container: $_"

                return $false
            }
        }
    }

    process {

        try {

            # ensure docker desktop is available and running
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Ensuring Docker Desktop is available...'

            # Copy identical parameters between functions
            $params = GenXdev\Copy-IdenticalParamValues `
                -FunctionName 'GenXdev\EnsureDockerDesktop' `
                -BoundParameters $PSBoundParameters `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

            GenXdev\EnsureDockerDesktop @params

            # verify docker is responding to commands
            if (-not (Test-DockerAvailability)) {

                throw 'Docker is not available or not responding'
            }

            # handle force cleanup if requested by user
            if ($Force) {

                # output verbose information about forced cleanup
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'Force flag specified - cleaning up existing resources...'

                # remove existing container and volume for clean slate
                Remove-DockerContainer $script:containerName

                Remove-DockerVolume $script:volumeName
            }

            # ensure we have the latest deepstack image available
            if (-not (Test-DockerImage $script:imageName) -or $Force) {

                # pull the docker image if not present or force specified
                if (-not (Get-DeepStackImage)) {

                    throw 'Failed to obtain DeepStack Docker image'
                }

            } else {

                # log that image is already available
                Microsoft.PowerShell.Utility\Write-Verbose `
                    '✅ DeepStack image already available'
            }

            # check current container state
            $containerExists = Test-DockerContainer $script:containerName

            $containerRunning = Test-DockerContainerRunning $script:containerName

            # handle existing container scenarios
            if ($containerExists) {

                # check if container is currently running
                if ($containerRunning) {

                    # verify container health for running container
                    if (Test-ServiceHealth) {

                        # log successful health check
                        Microsoft.PowerShell.Utility\Write-Verbose `
                            '✅ DeepStack container is healthy and responding'

                    } else {

                        # restart unhealthy running container
                        Microsoft.PowerShell.Utility\Write-Verbose `
                        ('Container is running but not responding - ' +
                            'restarting...')

                        # restart the container to fix health issues
                        $null = docker restart $script:containerName 2>$null

                        # wait for container to restart properly
                        Microsoft.PowerShell.Utility\Start-Sleep -Seconds 10

                        # wait for service to become ready after restart
                        $serviceReady = Wait-ServiceReady

                        # warn if service is not ready after restart
                        if (-not $serviceReady) {

                            Microsoft.PowerShell.Utility\Write-Verbose `
                            ('DeepStack service may not be fully ready ' +
                                'after restart')
                        }
                    }

                } else {

                    # start existing stopped container
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        'Starting existing container...'

                    # start the stopped container
                    $null = docker start $script:containerName 2>$null

                    # wait for container to start properly
                    Microsoft.PowerShell.Utility\Start-Sleep -Seconds 10

                    # wait for service to become ready after start
                    $serviceReady = Wait-ServiceReady

                    # log or warn about service readiness after start
                    if ($serviceReady) {

                        Microsoft.PowerShell.Utility\Write-Verbose `
                        ('✅ DeepStack service is ready after ' +
                            'container start')

                    } else {

                        Microsoft.PowerShell.Utility\Write-Verbose `
                        ('DeepStack service may not be fully ready ' +
                            'after start')
                    }
                }

            } else {

                # create and start new container when none exists
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'Creating and starting DeepStack container...'

                # attempt to create new deepstack container
                if (-not (New-DeepStackContainer)) {

                    throw 'Failed to create DeepStack container'
                }

                # wait for service to be ready after creation
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'Waiting for DeepStack service to be ready...'

                $serviceReady = Wait-ServiceReady

                # log or warn about service readiness after creation
                if ($serviceReady) {

                    Microsoft.PowerShell.Utility\Write-Verbose `
                        "✅ DeepStack service is ready at $script:apiBaseUrl"

                } else {

                    Microsoft.PowerShell.Utility\Write-Verbose `
                    ('DeepStack service may not be fully ready ' +
                        'after creation')
                }
            }

            # perform final validation of service state
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Performing final validation...'

            # check if container is running and service is healthy
            if ((Test-DockerContainerRunning $script:containerName) -and `
                (Test-ServiceHealth)) {

                # log successful service operation
                Microsoft.PowerShell.Utility\Write-Verbose `
                ('✅ DeepStack face recognition service is fully ' +
                    "operational at $script:apiBaseUrl")

                return $true

            } else {

                # warn about potential service issues
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'DeepStack service may not be fully operational'

                return $false
            }

        } catch {

            # log error details for any failures
            Microsoft.PowerShell.Utility\Write-Error `
                "Failed to ensure DeepStack service: $_"

            throw
        }
    }

    end {

        # restore original location for cleanup
        Microsoft.PowerShell.Management\Set-Location $script:originalLocation
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Software
Original cmdlet filename  : EnsureDockerDesktop.ps1
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
Ensures Docker Desktop is installed and available for containerization
operations.

.DESCRIPTION
Verifies if Docker Desktop is installed and properly configured on the system.
If not found, installs Docker Desktop using WinGet and handles the complete
installation process automatically. This function also manages Docker Desktop
service startup, daemon readiness verification, and handles authentication
requirements when necessary. The function includes comprehensive path
management for both system and user-level Docker installations.

.PARAMETER ShowWindow
Shows the Docker Desktop window during initialization when specified. When
this switch is enabled, Docker Desktop will start with its window visible
instead of minimized to the system tray.

.PARAMETER Monitor
Specifies the monitor to move the Docker Desktop window to:
  0 = Primary monitor (default)
  1..n = Specific monitor (1-based index)
  -1 = Discard monitor positioning
  -2 = Secondary monitor (uses $Global:DefaultSecondaryMonitor if defined)

.PARAMETER NoBorders
Removes the window borders and title bar from the Docker Desktop window for
a cleaner appearance.

.PARAMETER Width
Sets the width of the Docker Desktop window in pixels. Use -1 for automatic
sizing based on window content.

.PARAMETER Height
Sets the height of the Docker Desktop window in pixels. Use -1 for automatic
sizing based on window content.

.PARAMETER X
Sets the horizontal position of the Docker Desktop window in pixels. Use -1
for automatic positioning by the system.

.PARAMETER Y
Sets the vertical position of the Docker Desktop window in pixels. Use -1
for automatic positioning by the system.

.PARAMETER Left
Places the Docker Desktop window on the left half of the screen.

.PARAMETER Right
Places the Docker Desktop window on the right half of the screen.

.PARAMETER Top
Places the Docker Desktop window on the top half of the screen.

.PARAMETER Bottom
Places the Docker Desktop window on the bottom half of the screen.

.PARAMETER Centered
Centers the Docker Desktop window on the screen.

.PARAMETER Fullscreen
Maximizes the Docker Desktop window to fill the entire screen.

.PARAMETER RestoreFocus
Returns focus to the PowerShell window after positioning Docker Desktop.

.PARAMETER SideBySide
Positions Docker Desktop side by side with PowerShell on the same monitor
or fullscreen on a different monitor.

.PARAMETER FocusWindow
Focuses the Docker Desktop window after positioning and initialization.

.PARAMETER SetForeground
Sets the Docker Desktop window to foreground after positioning and
initialization.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER KeysToSend
Keystrokes to send to the Docker Desktop window after positioning and
initialization. See documentation for cmdlet GenXdev\Send-Key.

.PARAMETER SendKeyEscape
Escape control characters and modifiers when sending keys

.PARAMETER SendKeyHoldKeyboardFocus
Hold keyboard focus on target window when sending keys

.PARAMETER SendKeyUseShiftEnter
Use Shift+Enter instead of Enter when sending keys

.PARAMETER SendKeyDelayMilliSeconds
Delay between different input strings in milliseconds when sending keys

.PARAMETER SessionOnly
Uses alternative settings stored in session for AI preferences instead of
persistent preferences.

.PARAMETER ClearSession
Clears alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Stores settings only in persistent preferences without affecting session
variables.

.EXAMPLE
EnsureDockerDesktop

.EXAMPLE
EnsureDockerDesktop -ShowWindow -Centered -NoBorders

.EXAMPLE
EnsureDockerDesktop -ShowWindow -Monitor 1 -Left -Width 800 -Height 600
#>
#>
function EnsureDockerDesktop {

    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'High')]

    param(
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show Docker Desktop window during initialization'
        )]
        [switch]$ShowWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The monitor to use, 0 = default, -1 is discard'
        )]
        [Alias('m', 'mon')]
        [int] $Monitor = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Removes the borders of the window'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Forces a docker desktop restart'
        )]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial width of the window'
        )]
        [int]$Width,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial height of the window'
        )]
        [int]$Height,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial X position of the window'
        )]
        [int]$X,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial Y position of the window'
        )]
        [int]$Y,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the left side of the screen'
        )]
        [switch]$Left,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the right side of the screen'
        )]
        [switch]$Right,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the top side of the screen'
        )]
        [switch]$Top,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the bottom side of the screen'
        )]
        [switch]$Bottom,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window in the center of the screen'
        )]
        [switch]$Centered,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximize the window'
        )]
        [Alias('fs')]
        [switch]$Fullscreen,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore PowerShell window focus'
        )]
        [Alias('rf', 'bg')]
        [switch]$RestoreFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Will either set the window fullscreen on a ' +
                'different monitor than Powershell, or side by side with ' +
                'Powershell on the same monitor')
        )]
        [Alias('sbs')]
        [switch]$SideBySide,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the window after opening'
        )]
        [Alias('fw', 'focus')]
        [switch]$FocusWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the window to foreground after opening'
        )]
        [Alias('fg')]
        [switch]$SetForeground,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Keystrokes to send to the Window, ' +
                'see documentation for cmdlet GenXdev\Send-Key')
        )]
        [ValidateNotNullOrEmpty()]
        [string[]]$KeysToSend,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters and modifiers when sending keys'
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hold keyboard focus on target window when sending keys'
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Shift+Enter instead of Enter when sending keys'
        )]
        [Alias('UseShiftEnter')]
        [switch] $SendKeyUseShiftEnter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Delay between different input strings in ' +
                'milliseconds when sending keys')
        )]
        [Alias('DelayMilliSeconds')]
        [int] $SendKeyDelayMilliSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences')
        )]
        [switch]$SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for ' +
                'AI preferences')
        )]
        [switch]$ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Store settings only in persistent preferences ' +
                'without affecting session')
        )]
        [Alias('FromPreferences')]
        [switch]$SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Skip Docker initialization and return immediately'
        )]
        [switch]$NoDockerInitialization
    )


    begin {

        # skip docker initialization if requested by user
        if ($NoDockerInitialization) {

            Microsoft.PowerShell.Utility\Write-Verbose ('Skipping Docker ' +
                'initialization...')

            return
        }

        # force stop docker processes if requested and confirmed
        if ($Force -and $PSCmdlet.ShouldProcess('Docker processes',
                'Force stop Docker processes')) {

            # stop all docker-related processes forcefully
            $null = Microsoft.PowerShell.Management\Get-Process *docker* `
                -ErrorAction SilentlyContinue |
                Microsoft.PowerShell.Management\Stop-Process -Force
        }

        <#
        .SYNOPSIS
        Checks if the WinGet PowerShell module is installed.

        .DESCRIPTION
        Attempts to import the Microsoft.WinGet.Client module and verifies its
        presence by checking if the module is available after import attempt.
        This function is used to determine if WinGet capabilities are
        available before attempting package installations.

        .EXAMPLE
        IsWinGetInstalled
        #>
        function IsWinGetInstalled {

            # attempt to load the winget module silently without error output
            Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client' `
                -ErrorAction SilentlyContinue

            # verify if module was loaded successfully by checking module list
            $moduleObj = Microsoft.PowerShell.Core\Get-Module `
                'Microsoft.WinGet.Client' `
                -ErrorAction SilentlyContinue

            # return true if module object exists, false otherwise
            return $null -ne $moduleObj
        }

        <#
        .SYNOPSIS
        Installs the WinGet PowerShell module.

        .DESCRIPTION
        Installs and imports the Microsoft.WinGet.Client module for package
        management operations. Forces installation to override any conflicts
        and ensures the module is available for Docker Desktop installation.

        .EXAMPLE
        InstallWinGet
        #>
        function InstallWinGet {

            # request consent before installing winget module
            $consent = GenXdev\Confirm-InstallationConsent `
                -ApplicationName 'Microsoft.WinGet.Client PowerShell Module' `
                -Source 'PowerShell Gallery' `
                -Description 'Required for managing Windows software packages programmatically' `
                -Publisher 'Microsoft'

            if (-not $consent) {
                throw 'Installation consent denied for WinGet PowerShell module'
            }

            # output status message about winget installation
            Microsoft.PowerShell.Utility\Write-Verbose ('Installing WinGet ' +
                'PowerShell client...')

            # install winget module with force to ensure success and allow
            # clobber
            $null = PowerShellGet\Install-Module 'Microsoft.WinGet.Client' `
                -Force `
                -AllowClobber

            # load the newly installed module into current session
            Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client'
        }
    }

    process {

        $positioningDone = $false

        # skip docker initialization if requested by user
        if ($NoDockerInitialization) {
            return
        }

        # verify if docker desktop executable is available in current session
        if (@(Microsoft.PowerShell.Core\Get-Command 'docker.exe' `
                    -ErrorAction SilentlyContinue).Length -eq 0) {


            # define common docker installation paths for system and user
            # installs
            $dockerPaths = @(
                "${env:ProgramFiles}\Docker\Docker\resources\bin",
                "${env:LOCALAPPDATA}\Programs\Docker\Docker\resources\bin"
            )

            # initialize flag to track if docker was found in known paths
            $dockerFound = $false

            # iterate through each potential docker installation path
            foreach ($path in $dockerPaths) {

                # check if docker executable exists in current path
                if (Microsoft.PowerShell.Management\Test-Path `
                        -LiteralPath (Microsoft.PowerShell.Management\Join-Path $path `
                            'docker.exe')) {

                    # get current user PATH environment variable
                    $currentPath = [Environment]::GetEnvironmentVariable('PATH',
                        'User')

                    # add docker path to user PATH if not already present
                    if ($currentPath -notlike "*$path*") {

                        # inform user about path modification
                        Microsoft.PowerShell.Utility\Write-Verbose ('Adding ' +
                            'Docker to system PATH...')

                        # update user PATH environment variable permanently
                        [Environment]::SetEnvironmentVariable(
                            'PATH',
                            "$currentPath;$path",
                            'User')
                    }

                    # update current session's path for immediate
                    # availability only if not already present
                    if ($env:PATH -notlike "*$path*") {
                        $env:PATH = "$env:PATH;$path"
                    }

                    # mark docker as found and exit loop
                    $dockerFound = $true
                    break
                }
            }

            # install docker if not found in known installation paths
            if (-not $dockerFound) {
                if ($PSCmdlet.ShouldProcess('Docker Desktop',
                        ('Install Docker Desktop and required features, ' +
                        'might need multiple reboots, just repeat your ' +
                        'last command until fully installed.'))) {

                    # install windows updates and handle auto-reboot
                    # GenXdev\Invoke-WindowsUpdate -Install -AutoReboot `
                    #     -Verbose

                    # inform user about docker installation process
                    Microsoft.PowerShell.Utility\Write-Host ('Docker Desktop not ' +
                        'found. Installing Docker Desktop...')

                    # ensure winget is available before attempting docker
                    # installation
                    if (-not (IsWinGetInstalled)) {
                        InstallWinGet
                    }

                    # request consent before installing docker desktop
                    $dockerConsent = GenXdev\Confirm-InstallationConsent `
                        -ApplicationName 'Docker Desktop' `
                        -Source 'WinGet' `
                        -Description 'Container platform for developing and running applications' `
                        -Publisher 'Docker Inc.'

                    if (-not $dockerConsent) {
                        Microsoft.PowerShell.Utility\Write-Warning 'Installation consent denied for Docker Desktop'
                        return
                    }

                    try {
                        # set execution policy to bypass for process scope
                        Microsoft.PowerShell.Security\Set-ExecutionPolicy Bypass `
                            -Scope Process -Force

                        # enable hyper-v and containers windows features
                        Microsoft.PowerShell.Utility\Write-Host ('Enabling ' +
                            'Hyper-V and Containers features…') `
                            -ForegroundColor Cyan

                        # enable hyper-v feature for virtualization support
                        Dism\Enable-WindowsOptionalFeature -Online `
                            -FeatureName Microsoft-Hyper-V -All

                        # enable containers feature for docker support
                        Dism\Enable-WindowsOptionalFeature -Online `
                            -FeatureName Containers -All

                        # update windows subsystem for linux to latest version
                        Microsoft.PowerShell.Utility\Write-Host ('Updating ' +
                            'Windows Subsystem for Linux (WSL)…') `
                            -ForegroundColor Cyan

                        wsl --update
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Host ('Failed to ' +
                            'enable Windows features or update WSL.') `
                            -ForegroundColor Red
                    }

                    # install docker desktop using winget package manager
                    $null = Microsoft.WinGet.Client\Install-WinGetPackage `
                        -Id 'Docker.DockerDesktop' `
                        -Force

                    # re-check docker paths after installation to update PATH
                    foreach ($path in $dockerPaths) {
                        # verify docker executable exists in path after installation
                        if (Microsoft.PowerShell.Management\Test-Path `
                                -LiteralPath (Microsoft.PowerShell.Management\Join-Path $path `
                                    'docker.exe')) {

                            # get current user PATH environment variable
                            $currentPath = [Environment]::GetEnvironmentVariable(
                                'PATH', 'User')

                            # add docker path to PATH if not already present
                            if ($currentPath -notlike "*$path*") {

                                # inform user about path update after installation
                                Microsoft.PowerShell.Utility\Write-Verbose (
                                    'Adding Docker to system PATH...')

                                # update user PATH environment variable
                                [Environment]::SetEnvironmentVariable(
                                    'PATH',
                                    "$currentPath;$path",
                                    'User')

                                # update current session's path immediately only if
                                # not already present
                                if ($env:PATH -notlike "*$path*") {
                                    $env:PATH = "$env:PATH;$path"
                                }
                            }
                            break
                        }
                    }

                    # verify docker installation was successful by checking command
                    if (-not (Microsoft.PowerShell.Core\Get-Command 'docker.exe' `
                                -ErrorAction SilentlyContinue)) {
                        throw 'Docker Desktop installation failed.'
                    }
                } # ShouldProcess
            }
        }

        # check if docker desktop process is currently running
        $dockerDesktopProcess = Microsoft.PowerShell.Management\Get-Process `
            'Docker Desktop' `
            -ErrorAction SilentlyContinue

        # start docker desktop if process is not running
        if (-not $dockerDesktopProcess) {

            # inform user about docker desktop startup
            Microsoft.PowerShell.Utility\Write-Host 'Starting Docker Desktop...'

            # try to find docker desktop executable via get-command
            $dockerExePath = Microsoft.PowerShell.Core\Get-Command `
                'Docker Desktop.exe' `
                -ErrorAction SilentlyContinue

            # start docker desktop if found via get-command
            if ($dockerExePath) {

                # initialize process variable
                $p = $null

                # start docker desktop process using found executable path
                if ($ShowWindow) {

                    # start with window visible if ShowWindow is specified
                    $p = Microsoft.PowerShell.Management\Start-Process `
                        $dockerExePath.Source `
                        -WindowStyle Normal `
                        -PassThru

                    # copy identical parameters for window positioning
                    $wpParams = GenXdev\Copy-IdenticalParamValues `
                        -BoundParameters $PSBoundParameters `
                        -FunctionName 'GenXdev\Set-WindowPosition'

                    # set default monitor if not specified
                    if (-not $PSBoundParameters.ContainsKey('Monitor')) {
                        $wpParams['Monitor'] = -2
                    }

                    # position window with specified parameters
                    $null = GenXdev\Set-WindowPosition @wpParams `
                        -Process $p -ErrorAction SilentlyContinue

                    $positioningDone = $true
                }
                else {
                    # start minimized by default (hidden in tray)
                    $p = Microsoft.PowerShell.Management\Start-Process `
                        $dockerExePath.Source `
                        -WindowStyle Minimized `
                        -PassThru

                    # minimize window to tray
                    $null = GenXdev\Set-WindowPosition -Process $p `
                        -Minimize `
                        -ErrorAction SilentlyContinue

                    $positioningDone = $true
                }

                # wait for docker desktop to initialize (30 seconds)
                Microsoft.PowerShell.Utility\Start-Sleep 30
            }
            else {
                # define common docker desktop executable paths
                $dockerDesktopPaths = @(
                    "${env:ProgramFiles}\Docker\Docker\Docker Desktop.exe",
                    ("${env:LOCALAPPDATA}\Programs\Docker\Docker\" +
                    'Docker Desktop.exe')
                )
                # try each known docker desktop installation path
                foreach ($path in $dockerDesktopPaths) {

                    # check if docker desktop executable exists at current path
                    if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $path) {
                        # start docker desktop from found path with appropriate
                        # window style
                        $p = $null
                        if ($ShowWindow) {

                            # start minimized by default (hidden in tray)
                            $p = Microsoft.PowerShell.Management\Start-Process $path `
                                -WindowStyle Minimized `
                                -PassThru

                            # copy identical parameters for window positioning
                            $params = GenXdev\Copy-IdenticalParamValues `
                                -BoundParameters $PSBoundParameters `
                                -FunctionName 'GenXdev\Set-WindowPosition'

                            if (-not $PSBoundParameters.ContainsKey('Monitor')) {
                                $params['Monitor'] = -2
                            }

                            try {
                                # minimize window to tray
                                $null = GenXdev\Set-WindowPosition -Process $p `
                                    -Minimize `
                                    -ErrorAction SilentlyContinue
                            }
                            catch {
                                # ignore errors
                            }

                            $positioningDone = $true
                        }
                        else {

                            # start minimized by default (hidden in tray)
                            $p = Microsoft.PowerShell.Management\Start-Process $path `
                                -WindowStyle Minimized `
                                -PassThru

                            try {
                                # minimize window to tray
                                $null = GenXdev\Set-WindowPosition -Process $p `
                                    -Minimize `
                                    -ErrorAction SilentlyContinue
                            }
                            catch {
                                # ignore errors
                            }

                            $positioningDone = $true
                        }
                        # wait for docker desktop to initialize
                        Microsoft.PowerShell.Utility\Start-Sleep 30
                        break
                    }
                }
            }
        }

        # handle docker desktop window positioning if ShowWindow is specified
        if ($ShowWindow -and -not $positioningDone) {

            # inform user that we're bringing docker desktop window to
            # foreground
            Microsoft.PowerShell.Utility\Write-Verbose ('Bringing Docker ' +
                'Desktop window to the foreground...')

            $params = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Set-WindowPosition' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local -ErrorAction SilentlyContinue)

            $null = GenXdev\Set-WindowPosition @params -ProcessName "Docker Desktop" -ErrorAction SilentlyContinue
            $positioningDone = $true
        }

        # wait for docker daemon to become ready for commands
        Microsoft.PowerShell.Utility\Write-Host ('Checking Docker Desktop ' +
            'status...') -ForegroundColor Cyan

        # set timeout for waiting for docker daemon (600 seconds)
        $timeout = 600
        $elapsed = 0
        $engineMessageShown = $false
        $loginMessageShown = $false

        # loop until docker daemon is ready or timeout is reached
        while ($elapsed -lt $timeout) {

            # check if docker engine is running by trying a simple docker
            # command
            try {

                # attempt to get docker server version to verify engine status
                $null = docker.exe version --format '{{.Server.Version}}' 2>$null

                # verify command executed successfully
                if ($LASTEXITCODE -eq 0) {

                    # engine is running, check if user needs to log in
                    $dockerInfo = docker.exe info 2>&1

                    # check if login is required based on docker info output
                    if ($dockerInfo -match 'not logged in' -or `
                            $dockerInfo -match 'Please log in') {

                        # show login message only once
                        if (-not $loginMessageShown) {
                            Microsoft.PowerShell.Utility\Write-Host ('Docker ' +
                                'engine is running, but user is not logged ' +
                                'in. Please log in via Docker Desktop.') `
                                -ForegroundColor Yellow
                            $loginMessageShown = $true
                        }

                        # continue waiting or break - for many operations,
                        # login isn't required
                        Microsoft.PowerShell.Utility\Write-Host ('Docker ' +
                            'engine is running and ready for basic ' +
                            'operations.') -ForegroundColor Green
                        break
                    }
                    else {

                        # either logged in or login check failed, assume docker
                        # is ready
                        Microsoft.PowerShell.Utility\Write-Host ('Docker ' +
                            'engine is running and ready.') `
                            -ForegroundColor Green
                        break
                    }
                }
            }
            catch {

                # docker command failed, engine likely not ready
            }

            # show engine startup message only once
            if (-not $engineMessageShown) {
                Microsoft.PowerShell.Utility\Write-Host ('Waiting for ' +
                    'Docker engine to start...') -ForegroundColor Yellow
                $engineMessageShown = $true
            }

            # wait before next check and increment elapsed time
            Microsoft.PowerShell.Utility\Start-Sleep -Seconds 5
            $elapsed += 5
        }

        # throw error if docker daemon failed to start within timeout
        if ($elapsed -ge $timeout) {
            throw ("Docker daemon failed to start within $timeout seconds.")
        }

        # output final success message about docker desktop readiness
        Microsoft.PowerShell.Utility\Write-Verbose ('✅ Docker Desktop is ' +
            'ready.')
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Software
Original cmdlet filename  : EnsureGithubCLIInstalled.ps1
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
Ensures GitHub CLI is properly installed and configured on the system.

.DESCRIPTION
Performs comprehensive checks and setup for GitHub CLI (gh):
- Verifies if GitHub CLI is installed and accessible in PATH
- Installs GitHub CLI via WinGet if not present
- Configures system PATH environment variable
- Installs GitHub Copilot extension
- Sets up GitHub authentication
The function handles all prerequisites and ensures a working GitHub CLI setup.

.EXAMPLE
EnsureGithubCLIInstalled
This will verify and setup GitHub CLI if needed.
#>
function EnsureGithubCLIInstalled {

    [CmdletBinding()]
    param()

    begin {

        <#
        .SYNOPSIS
        Verifies if WinGet PowerShell module is installed.

        .DESCRIPTION
        Attempts to import WinGet module and checks if it's available.

        .OUTPUTS
        System.Boolean. Returns true if WinGet is installed, false otherwise.
        #>
        function IsWinGetInstalled {
            try {
                Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client' -ErrorAction Stop
                $ModuleObj = Microsoft.PowerShell.Core\Get-Module 'Microsoft.WinGet.Client' -ErrorAction Stop
                return $null -ne $ModuleObj
            }
            catch [System.IO.FileNotFoundException] {
                Microsoft.PowerShell.Utility\Write-Verbose 'WinGet module not found'
                return $false
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Verbose "Error checking WinGet installation: $_"
                return $false
            }
        }

        <#
        .SYNOPSIS
        Installs the WinGet PowerShell module.

        .DESCRIPTION
        Forces installation of the Microsoft.WinGet.Client module and imports it.
        #>
        function InstallWinGet {
            try {
                # Check user consent before installing WinGet module
                $consent = GenXdev\Confirm-InstallationConsent `
                    -ApplicationName 'Microsoft.WinGet.Client PowerShell Module' `
                    -Source 'PowerShell Gallery' `
                    -Description 'Required for automated software package management via WinGet' `
                    -Publisher 'Microsoft'

                if (-not $consent) {
                    throw 'User declined installation of Microsoft.WinGet.Client PowerShell module'
                }

                Microsoft.PowerShell.Utility\Write-Verbose 'Installing WinGet PowerShell client...'
                PowerShellGet\Install-Module 'Microsoft.WinGet.Client' -Force -AllowClobber -ErrorAction Stop
                Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client' -ErrorAction Stop
            }
            catch [System.UnauthorizedAccessException] {
                throw "Insufficient permissions to install WinGet module. Run as administrator: $_"
            }
            catch {
                throw "Failed to install WinGet module: $_"
            }
        }
    }


    process {
        try {
            # First check and install Git if needed
            if (@(Microsoft.PowerShell.Core\Get-Command 'git.exe' -ErrorAction SilentlyContinue).Length -eq 0) {
                Microsoft.PowerShell.Utility\Write-Verbose 'Git not found, installing...'

                # Check user consent before installing Git
                $gitConsent = GenXdev\Confirm-InstallationConsent `
                    -ApplicationName 'Git for Windows' `
                    -Source 'WinGet' `
                    -Description 'Version control system required for GitHub CLI functionality' `
                    -Publisher 'Git for Windows Project'

                if (-not $gitConsent) {
                    throw 'User declined installation of Git for Windows'
                }

                if (-not (IsWinGetInstalled)) {
                    InstallWinGet
                }

                try {
                    $null = Microsoft.WinGet.Client\Install-WinGetPackage -Id 'Git.Git' -Force
                }
                catch {
                    throw "Failed to install Git via WinGet: $_"
                }

                if (-not (Microsoft.PowerShell.Core\Get-Command 'git.exe' -ErrorAction SilentlyContinue)) {
                    throw 'Git installation failed: Command not found after installation'
                }
            }

            # Then proceed with GitHub CLI installation
            if (@(Microsoft.PowerShell.Core\Get-Command 'gh.exe' -ErrorAction SilentlyContinue).Length -eq 0) {
                Microsoft.PowerShell.Utility\Write-Verbose 'GitHub CLI not found in PATH, checking installation...'
                $githubCliPath = "$env:ProgramFiles\GitHub CLI"
                $currentPath = [Environment]::GetEnvironmentVariable('PATH', 'User')

                if ($currentPath -notlike "*$githubCliPath*") {
                    Microsoft.PowerShell.Utility\Write-Verbose 'Adding GitHub CLI to PATH...'
                    [Environment]::SetEnvironmentVariable(
                        'PATH',
                        "$currentPath;$githubCliPath",
                        'User')
                }

                # Update current session PATH only if not already present
                if ($env:PATH -notlike "*$githubCliPath*") {
                    $env:PATH = "$env:PATH;$githubCliPath"
                }

                if (@(Microsoft.PowerShell.Core\Get-Command 'gh.exe' -ErrorAction SilentlyContinue).Length -eq 0) {
                    Microsoft.PowerShell.Utility\Write-Verbose 'Installing GitHub CLI...'

                    # Check user consent before installing GitHub CLI
                    $ghConsent = GenXdev\Confirm-InstallationConsent `
                        -ApplicationName 'GitHub CLI' `
                        -Source 'WinGet' `
                        -Description 'Command-line tool for GitHub operations and authentication' `
                        -Publisher 'GitHub'

                    if (-not $ghConsent) {
                        throw 'User declined installation of GitHub CLI'
                    }

                    if (-not (IsWinGetInstalled)) {
                        InstallWinGet
                    }

                    try {
                        $null = Microsoft.WinGet.Client\Install-WinGetPackage -Id 'GitHub.cli' -Force
                    }
                    catch {
                        throw "Failed to install GitHub CLI via WinGet: $_"
                    }

                    if (-not (Microsoft.PowerShell.Core\Get-Command 'gh.exe' -ErrorAction SilentlyContinue)) {
                        throw 'GitHub CLI installation failed: Command not found after installation'
                    }

                    try {
                        Microsoft.PowerShell.Utility\Write-Verbose 'Initiating GitHub authentication...'
                        $null = gh auth login --web -h github.com
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Error "GitHub authentication failed: $_"
                    }
                }
            }
        }
        catch {
            $errorMessage = "Failed to setup GitHub CLI: $($_.Exception.Message)"
            Microsoft.PowerShell.Utility\Write-Error -Exception $_.Exception -Message $errorMessage -Category OperationStopped
            throw
        }
    }

    end {}
}
<##############################################################################
Part of PowerShell module : GenXdev.Software
Original cmdlet filename  : EnsureHuggingFace.ps1
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
Ensures the Hugging Face CLI is installed and functional.

.DESCRIPTION
Orchestrates the installation of Python, pip, and the Hugging Face CLI by
calling EnsurePython and EnsurePip, then installing the huggingface_hub package.
Stores the CLI path in a JSON file and ensures all components are available
in the system PATH. Returns $true if successful; throws Write-Error on failure.

.PARAMETER PythonVersion
The Python version to ensure. Defaults to "3.12".

.PARAMETER Timeout
Timeout in seconds for installation processes.

.PARAMETER Force
Forces reinstallation of all components.

.EXAMPLE
EnsureHuggingFace

Ensures Python 3.12, pip, and HuggingFace CLI are installed.

.EXAMPLE
EnsureHuggingFace -PythonVersion "3.11" -Force

Forces reinstallation with Python 3.11.

.EXAMPLE
EnsureHuggingFace -Timeout 1200

Ensures installation with a 20-minute timeout.
#>
function EnsureHuggingFace {

    [CmdletBinding()]

    param(
        [Parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = "Python version to ensure"
        )]
        [ValidatePattern("^\d+\.\d+$")]
        [string] $PythonVersion = "3.12",
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Timeout in seconds for installation processes"
        )]
        [ValidateRange(60, 3600)]
        [int] $Timeout = 600,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Forces reinstallation of all components"
        )]
        [switch] $Force
    )

    begin {
        # initialize variables
        $pythonPath = $null
        $clipath = $null
        $cliInstalled = $false
        $stopwatch = [System.Diagnostics.Stopwatch]::StartNew()

        # show initial progress
        Microsoft.PowerShell.Utility\Write-Progress `
            -Activity "Hugging Face CLI Installation" `
            -Status "Ensuring dependencies..."
    }

    process {
        try {
            # Step 1: Ensure Python is installed
            Microsoft.PowerShell.Utility\Write-Progress `
                -Activity "Hugging Face CLI Installation" `
                -Status "Ensuring Python ${PythonVersion}..." `
                -PercentComplete 20

            $pythonPath = GenXdev\EnsurePython -Version $PythonVersion -Timeout $Timeout -Force:$Force

            if (-not $pythonPath) {
                Microsoft.PowerShell.Utility\Write-Error "Failed to ensure Python installation"
                return
            }

            Microsoft.PowerShell.Utility\Write-Verbose "Python ensured at: ${pythonPath}"

            # Step 2: Ensure pip is available
            Microsoft.PowerShell.Utility\Write-Progress `
                -Activity "Hugging Face CLI Installation" `
                -Status "Ensuring pip..." `
                -PercentComplete 40

            $pipReady = GenXdev\EnsurePip -PythonPath $pythonPath -Timeout ($Timeout / 2) -Force:$Force

            if (-not $pipReady) {
                Microsoft.PowerShell.Utility\Write-Error "Failed to ensure pip installation"
                return
            }

            Microsoft.PowerShell.Utility\Write-Verbose "pip is ready"

            # Step 3: Determine CLI path and check if already installed
            Microsoft.PowerShell.Utility\Write-Progress `
                -Activity "Hugging Face CLI Installation" `
                -Status "Checking Hugging Face CLI..." `
                -PercentComplete 60

            # determine cli path based on Python installation type
            if ($pythonPath -like "*WindowsApps*") {
                # Windows Store Python - check multiple possible locations
                update-refa$pythonDir = Microsoft.PowerShell.Management\Split-PathmepythonPath -Parent
                $clipath = Microsoft.PowerShell.Management\Join-Path -Path $pythonDir -ChildPath "huggingface-cli.exe"

                # Check user Scripts directory (common for --user installs)
                if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $clipath)) {
                    $userScriptsPath = Microsoft.PowerShell.Management\Join-Path -Path $env:APPDATA -ChildPath "Python\Scripts"
                    if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $userScriptsPath) {
                        $clipath = Microsoft.PowerShell.Management\Join-Path -Path $userScriptsPath -ChildPath "huggingface-cli.exe"
                    }
                }
            } else {
                # Regular Python installation
                $scriptsPath = Microsoft.PowerShell.Management\Join-Path `
                    -Path (Microsoft.PowerShell.Management\Split-Path -Path $pythonPath -Parent) `
                    -ChildPath "Scripts"
                $clipath = Microsoft.PowerShell.Management\Join-Path -Path $scriptsPath -ChildPath "huggingface-cli.exe"
            }

            Microsoft.PowerShell.Utility\Write-Verbose "Expected CLI path: ${clipath}"

            # check if CLI is already installed (unless Force is specified)
            if (-not $Force) {
                if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $clipath) {
                    # try to get version to verify it works
                    $cliversion = & $clipath --help 2>$null
                    if ($cliversion) {
                        Microsoft.PowerShell.Utility\Write-Verbose "Hugging Face CLI already installed at: ${clipath}"
                        $cliInstalled = $true
                    }
                }

                # fallback: check if available via Python module
                if (-not $cliInstalled) {
                    $moduleTest = & $pythonPath -c "import huggingface_hub; print('HuggingFace Hub version:', huggingface_hub.__version__)" 2>$null
                    if ($moduleTest) {
                        Microsoft.PowerShell.Utility\Write-Verbose "Hugging Face CLI available via Python module: $moduleTest"
                        $clipath = "python -m huggingface_hub.commands.huggingface_cli"
                        $cliInstalled = $true
                    }
                }
            }

            # Step 4: Install HuggingFace CLI if needed
            if (-not $cliInstalled) {
                Microsoft.PowerShell.Utility\Write-Progress `
                    -Activity "Hugging Face CLI Installation" `
                    -Status "Installing HuggingFace CLI..." `
                    -PercentComplete 80

                Microsoft.PowerShell.Utility\Write-Verbose "Installing huggingface_hub via pip"

                try {
                    $installArgs = @("-m", "pip", "install", "huggingface_hub", "--user", "--no-warn-script-location")
                    if ($Force) {
                        $installArgs += "--force-reinstall"
                    }

                    $installOutput = & $pythonPath $installArgs 2>&1
                    Microsoft.PowerShell.Utility\Write-Verbose "pip install output: $installOutput"

                } catch {
                    Microsoft.PowerShell.Utility\Write-Error "Failed to install huggingface_hub: $($_.Exception.Message)"
                    return
                }

                # re-check CLI availability after installation
                if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $clipath) {
                    $cliversion = & $clipath --help 2>$null
                    if ($cliversion) {
                        Microsoft.PowerShell.Utility\Write-Verbose "Hugging Face CLI installed successfully"
                        $cliInstalled = $true
                    }
                } else {
                    # fallback to module approach
                    $moduleTest = & $pythonPath -c "import huggingface_hub; print('HuggingFace Hub version:', huggingface_hub.__version__)" 2>$null
                    if ($moduleTest) {
                        Microsoft.PowerShell.Utility\Write-Verbose "Hugging Face CLI available via Python module: $moduleTest"
                        $clipath = "python -m huggingface_hub.commands.huggingface_cli"
                        $cliInstalled = $true
                    }
                }

                if (-not $cliInstalled) {
                    Microsoft.PowerShell.Utility\Write-Error "Failed to install or verify Hugging Face CLI"
                    return
                }
            }

            # Step 5: Ensure CLI is in PATH (for executable installations)
            if ($clipath -notlike "*python -m*" -and (Microsoft.PowerShell.Management\Test-Path -LiteralPath $clipath)) {
                $cliDir = Microsoft.PowerShell.Management\Split-Path -Path $clipath -Parent
                $currentPath = $env:PATH

                if ($currentPath -notlike "*$cliDir*") {
                    Microsoft.PowerShell.Utility\Write-Verbose "Adding CLI directory to PATH: $cliDir"
                    $env:PATH = $cliDir + ";" + $currentPath

                    # Update user PATH persistently
                    $userPath = [System.Environment]::GetEnvironmentVariable("PATH", "User")
                    if ($userPath -notlike "*$cliDir*") {
                        [System.Environment]::SetEnvironmentVariable("PATH", $cliDir + ";" + $userPath, "User")
                    }
                }
            }

            # Step 6: Store CLI path in JSON configuration
            Microsoft.PowerShell.Utility\Write-Verbose "Storing CLI configuration"

            $jsonpath = GenXdev\Expand-Path `
                "$ENV:LOCALAPPDATA\GenXdev.PowerShell\hfclilocation.json"

            $jsoncontent = $clipath | Microsoft.PowerShell.Utility\ConvertTo-Json

            Microsoft.PowerShell.Management\Set-Content `
                -LiteralPath $jsonpath `
                -Value $jsoncontent `
                -Force

            # check timeout
            if ($stopwatch.Elapsed.TotalSeconds -gt $Timeout) {
                Microsoft.PowerShell.Utility\Write-Error `
                    "Installation timed out after ${Timeout} seconds."
                return
            }

            # complete progress
            Microsoft.PowerShell.Utility\Write-Progress `
                -Activity "Hugging Face CLI Installation" `
                -Status "Installation completed" `
                -PercentComplete 100

            Microsoft.PowerShell.Utility\Write-Verbose "HuggingFace CLI is ready at: ${clipath}"
            return $true

        } catch {
            Microsoft.PowerShell.Utility\Write-Error "Failed to ensure Hugging Face CLI: $($_.Exception.Message)"
            return
        }
    }

    end {
        Microsoft.PowerShell.Utility\Write-Progress `
            -Activity "Hugging Face CLI Installation" `
            -Completed
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Software
Original cmdlet filename  : EnsurePaintNet.ps1
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
Ensures Paint.NET is properly installed and accessible on the system.

.DESCRIPTION
Performs comprehensive checks and setup for Paint.NET:
- Verifies if Paint.NET is installed and accessible in PATH
- Installs Paint.NET via WinGet if not present
- Configures system PATH environment variable
- Ensures paintdotnet.exe is available for command-line usage
The function handles all prerequisites and ensures a working Paint.NET installation.

.EXAMPLE
EnsurePaintNet
This will verify and setup Paint.NET if needed.
#>
function EnsurePaintNet {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    param()

    begin {
        # ensure graphics assembly is loaded for image processing
        if (-not [System.Drawing.Rectangle]) {

            Microsoft.PowerShell.Utility\Add-Type -AssemblyName System.Drawing
        }

        <#
        .SYNOPSIS
        Verifies if WinGet PowerShell module is installed.

        .DESCRIPTION
        Attempts to import WinGet module and checks if it's available.

        .OUTPUTS
        System.Boolean. Returns true if WinGet is installed, false otherwise.
        #>
        function IsWinGetInstalled {
            try {
                Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client' -ErrorAction Stop
                $ModuleObj = Microsoft.PowerShell.Core\Get-Module 'Microsoft.WinGet.Client' -ErrorAction Stop
                return $null -ne $ModuleObj
            }
            catch [System.IO.FileNotFoundException] {
                Microsoft.PowerShell.Utility\Write-Verbose 'WinGet module not found'
                return $false
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Verbose "Error checking WinGet installation: $_"
                return $false
            }
        }

        <#
        .SYNOPSIS
        Installs the WinGet PowerShell module.

        .DESCRIPTION
        Forces installation of the Microsoft.WinGet.Client module and imports it.
        #>
        function InstallWinGet {
            try {
                # Request consent before installing WinGet PowerShell module
                $wingetConsent = GenXdev\Confirm-InstallationConsent `
                    -ApplicationName 'Microsoft.WinGet.Client PowerShell Module' `
                    -Source 'PowerShell Gallery' `
                    -Description 'Required for automated software package management via WinGet' `
                    -Publisher 'Microsoft'

                if (-not $wingetConsent) {
                    throw 'User declined installation of Microsoft.WinGet.Client PowerShell module'
                }

                Microsoft.PowerShell.Utility\Write-Verbose 'Installing WinGet PowerShell client...'
                PowerShellGet\Install-Module 'Microsoft.WinGet.Client' -Force -AllowClobber -ErrorAction Stop
                Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client' -ErrorAction Stop
            }
            catch [System.UnauthorizedAccessException] {
                throw "Insufficient permissions to install WinGet module. Run as administrator: $_"
            }
            catch {
                throw "Failed to install WinGet module: $_"
            }
        }
    }
    process {
        try {
            # First, ensure current session PATH is up to date with both Machine and User PATH
            $paintNetPath = 'C:\Program Files\paint.net'

            # Only add Paint.NET path to user PATH if it's not already present
            $userPath = [Environment]::GetEnvironmentVariable('PATH', 'User')
            if ($userPath -notlike "*$paintNetPath*") {
                $userPath = "$userPath;$paintNetPath"
                [System.Environment]::SetEnvironmentVariable('PATH', $userPath, 'User')
            }

            # Only update session PATH if Paint.NET path is not already in current session
            if ($env:PATH -notlike "*$paintNetPath*") {
                $env:PATH = "$env:PATH;$paintNetPath"
            }

            # Check if Paint.NET is already accessible
            Microsoft.PowerShell.Utility\Write-Verbose 'Paint.NET not found in PATH, checking installation...'

            # Check again after updating PATH
            if (@(Microsoft.PowerShell.Core\Get-Command 'paintdotnet.exe' -ErrorAction SilentlyContinue).Length -eq 0) {

                # Request consent before installing Paint.NET
                $paintNetConsent = GenXdev\Confirm-InstallationConsent `
                    -ApplicationName 'Paint.NET' `
                    -Source 'WinGet' `
                    -Description 'Image editing software required for graphics processing operations' `
                    -Publisher 'dotPDN LLC'

                if (-not $paintNetConsent) {
                    throw 'User declined installation of Paint.NET. Cannot proceed without image editing capabilities.'
                }

                Microsoft.PowerShell.Utility\Write-Verbose 'Installing Paint.NET...'

                if (-not (IsWinGetInstalled)) {

                    InstallWinGet
                }

                try {
                    $null = Microsoft.WinGet.Client\Install-WinGetPackage -Id 'dotPDN.PaintDotNet' -Force
                }
                catch {
                    throw "Failed to install Paint.NET via WinGet: $_"
                }                    # Update PATH after installation
                $userPath = [Environment]::GetEnvironmentVariable('PATH', 'User')
                if ($userPath -notlike "*$paintNetPath*") {
                    try {
                        Microsoft.PowerShell.Utility\Write-Verbose 'Adding Paint.NET to User PATH after installation...'
                        [Environment]::SetEnvironmentVariable(
                            'PATH',
                            "$userPath;$paintNetPath",
                            'User')
                        # Update current session PATH only if not already present
                        if ($env:PATH -notlike "*$paintNetPath*") {
                            $env:PATH = "$env:PATH;$paintNetPath"
                        }
                    }
                    catch [System.Security.SecurityException] {
                        throw "Access denied while updating PATH environment variable: $_"
                    }
                }

                if (-not (Microsoft.PowerShell.Core\Get-Command 'paintdotnet.exe' -ErrorAction SilentlyContinue)) {
                    throw 'Paint.NET installation failed: paintdotnet.exe not found after installation'
                }
            }

            Microsoft.PowerShell.Utility\Write-Verbose "Paint.NET is now available at: $(Microsoft.PowerShell.Core\Get-Command 'paintdotnet.exe' -ErrorAction SilentlyContinue | Microsoft.PowerShell.Utility\Select-Object -ExpandProperty Source)"
        }
        catch {
            $errorMessage = "Failed to setup Paint.NET: $($_.Exception.Message)"
            Microsoft.PowerShell.Utility\Write-Error -Exception $_.Exception -Message $errorMessage -Category OperationStopped
            throw
        }
    }

    end {}
}
<##############################################################################
Part of PowerShell module : GenXdev.Software
Original cmdlet filename  : EnsurePester.ps1
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
Ensures Pester testing framework is available for use.

.DESCRIPTION
This function verifies if the Pester module is installed in the current
PowerShell environment. If not found, it automatically installs it from the
PowerShell Gallery and imports it into the current session. This ensures that
Pester testing capabilities are available when needed.

.EXAMPLE
EnsurePester
This ensures Pester is installed and ready for use
#>
function EnsurePester {

    [CmdletBinding()]
    param()

    begin {

        # inform user that we're checking pester installation
        Microsoft.PowerShell.Utility\Write-Verbose 'Checking for Pester module installation...'
    }


    process {

        # attempt silent import of pester to check if it's available
        Microsoft.PowerShell.Core\Import-Module -Name Pester -ErrorAction SilentlyContinue

        $found = (Microsoft.PowerShell.Core\Get-Module -Name Pester -ErrorAction SilentlyContinue);

        # verify if pester module is now loaded in the current session
        if ((-not $found) -or ($found.Version -lt '5.7.0')) {

            # notify about installation attempt through verbose and regular output
            Microsoft.PowerShell.Utility\Write-Verbose 'Pester module not found, attempting installation...'
            Microsoft.PowerShell.Utility\Write-Host 'Pester not found. Installing Pester...'

            try {
                # install pester module from the powershell gallery
                $null = PowerShellGet\Install-Module -Name Pester `
                    -Force `
                    -SkipPublisherCheck

                # load the newly installed pester module
                $null = Microsoft.PowerShell.Core\Import-Module -Name Pester -Force

                # confirm successful installation
                Microsoft.PowerShell.Utility\Write-Host 'Pester installed successfully.'
                Microsoft.PowerShell.Utility\Write-Verbose 'Pester module installation and import completed.'
            }
            catch {
                # report any installation failures
                Microsoft.PowerShell.Utility\Write-Error "Failed to install Pester. Error: $PSItem"
                Microsoft.PowerShell.Utility\Write-Verbose 'Pester installation failed with error.'
            }
        }
        else {
            # inform that pester is already available
            Microsoft.PowerShell.Utility\Write-Verbose 'Pester module already installed and imported.'
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Software
Original cmdlet filename  : EnsurePip.ps1
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
Ensures pip is installed and functional for the specified Python installation.

.DESCRIPTION
Verifies that pip is available and functional for the given Python executable.
If pip is not available, attempts to install it using ensurepip. Validates
pip functionality by checking version and basic operations. Returns $true if
pip is ready; throws Write-Error on failure.

.PARAMETER PythonPath
The path to the Python executable. If not specified, uses the Python found
in PATH.

.PARAMETER Timeout
Timeout in seconds for pip installation and verification.

.PARAMETER Force
Forces reinstallation/upgrade of pip.

.EXAMPLE
EnsurePip

Ensures pip is available for the default Python installation.

.EXAMPLE
EnsurePip -PythonPath "C:\Python39\python.exe" -Force

Forces pip installation for a specific Python executable.

.EXAMPLE
$pythonPath = EnsurePython
EnsurePip -PythonPath $pythonPath

Ensures pip for a specific Python installation returned by EnsurePython.
#>
function EnsurePip {

    [CmdletBinding()]

    param(
        [Parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = "Path to Python executable"
        )]
        [string] $PythonPath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Timeout in seconds for pip installation"
        )]
        [ValidateRange(30, 1800)]
        [int] $Timeout = 300,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Forces reinstallation/upgrade of pip"
        )]
        [switch] $Force
    )

    begin {
        # initialize variables
        $pipAvailable = $false
        $stopwatch = [System.Diagnostics.Stopwatch]::StartNew()

        # show initial progress
        Microsoft.PowerShell.Utility\Write-Progress `
            -Activity "pip Installation" `
            -Status "Checking pip availability..."
    }

    process {
        # determine python path
        if (-not $PythonPath) {
            $pythonCmd = Microsoft.PowerShell.Core\Get-Command python -ErrorAction SilentlyContinue
            if (-not $pythonCmd) {
                Microsoft.PowerShell.Utility\Write-Error `
                    "Python not found in PATH. Please specify -PythonPath or ensure Python is installed."
                return
            }
            $PythonPath = $pythonCmd.Source
        }

        # verify python executable exists
        if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $PythonPath)) {
            Microsoft.PowerShell.Utility\Write-Error `
                "Python executable not found at: ${PythonPath}"
            return
        }

        Microsoft.PowerShell.Utility\Write-Verbose `
            "Using Python at: ${PythonPath}"

        # check if pip is already available (unless Force is specified)
        if (-not $Force) {
            Microsoft.PowerShell.Utility\Write-Progress `
                -Activity "pip Installation" `
                -Status "Checking existing pip installation..." `
                -PercentComplete 25

            # check pip via command line
            $pipversion = & $PythonPath -m pip --version 2>$null

            if ($pipversion) {
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "pip already available: ${pipversion}"
                return $true
            }

            # fallback: check pip via Python import
            $pipcheck = & $PythonPath -c "import pip; print('pip', pip.__version__)" 2>$null

            if ($pipcheck) {
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "pip detected via Python import: ${pipcheck}"
                return $true
            }
        }

        # install/upgrade pip using ensurepip
        Microsoft.PowerShell.Utility\Write-Progress `
            -Activity "pip Installation" `
            -Status "Installing pip via ensurepip..." `
            -PercentComplete 50

        Microsoft.PowerShell.Utility\Write-Verbose `
            "Installing pip via ensurepip"

        try {
            $ensurepipArgs = @("-m", "ensurepip", "--default-pip")
            if ($Force) {
                $ensurepipArgs += "--upgrade"
            }

            $ensurepipOutput = & $PythonPath $ensurepipArgs 2>&1
            Microsoft.PowerShell.Utility\Write-Verbose "ensurepip output: $ensurepipOutput"

        } catch {
            Microsoft.PowerShell.Utility\Write-Verbose "ensurepip failed: $($_.Exception.Message)"
        }

        # verify pip installation
        Microsoft.PowerShell.Utility\Write-Progress `
            -Activity "pip Installation" `
            -Status "Verifying pip installation..." `
            -PercentComplete 75

        # try pip command line again
        $pipversion = & $PythonPath -m pip --version 2>$null

        if ($pipversion) {
            Microsoft.PowerShell.Utility\Write-Verbose `
                "pip successfully installed: ${pipversion}"
            $pipAvailable = $true
        } else {
            # try alternative pip check
            $pipcheck = & $PythonPath -c "import pip; print('pip', pip.__version__)" 2>$null

            if ($pipcheck) {
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "pip available via Python import: ${pipcheck}"
                $pipAvailable = $true
            } else {
                Microsoft.PowerShell.Utility\Write-Error `
                    "Failed to install or verify pip. Try manually installing pip or reinstalling Python with pip support."
                return
            }
        }

        # upgrade pip if Force is specified and pip is available
        if ($Force -and $pipAvailable) {
            Microsoft.PowerShell.Utility\Write-Progress `
                -Activity "pip Installation" `
                -Status "Upgrading pip..." `
                -PercentComplete 90

            try {
                $upgradeOutput = & $PythonPath -m pip install --upgrade pip 2>&1
                Microsoft.PowerShell.Utility\Write-Verbose "pip upgrade output: $upgradeOutput"
            } catch {
                Microsoft.PowerShell.Utility\Write-Verbose "pip upgrade failed: $($_.Exception.Message)"
            }
        }

        # check timeout
        if ($stopwatch.Elapsed.TotalSeconds -gt $Timeout) {
            Microsoft.PowerShell.Utility\Write-Error `
                "pip installation timed out after ${Timeout} seconds."
            return
        }

        # final verification
        $finalPipVersion = & $PythonPath -m pip --version 2>$null
        if ($finalPipVersion) {
            Microsoft.PowerShell.Utility\Write-Verbose `
                "Final pip verification: ${finalPipVersion}"
        }

        # complete progress
        Microsoft.PowerShell.Utility\Write-Progress `
            -Activity "pip Installation" `
            -Status "pip ready" `
            -PercentComplete 100

        return $pipAvailable
    }

    end {
        Microsoft.PowerShell.Utility\Write-Progress `
            -Activity "pip Installation" `
            -Completed
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Software
Original cmdlet filename  : ensurePlaywright.ps1
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
Ensures the Playwright .NET assembly and browser binaries are available.

.DESCRIPTION
Internal helper that downloads and loads the Microsoft.Playwright NuGet
assembly and then installs the actual browser binaries (Chromium, Firefox,
WebKit) via Playwright's built-in CLI. Idempotent — skips steps that are
already completed.

Called by Connect-PlaywrightViaDebuggingPort, Open-PlayWrightBrowser,
and explicitly from EnsureGenXdev during environment setup.
#>
function ensurePlaywright {

    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]

    param(
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Automatically consent to Playwright browser installation and set persistent flag.'
        )]
        [switch] $ForceConsent,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Automatically consent to third-party software installation and set persistent flag for all packages.'
        )]
        [switch] $ConsentToThirdPartySoftwareInstallation
    )

    begin {
        Microsoft.PowerShell.Utility\Write-Verbose 'Ensuring Playwright environment is ready...'

        # track whether browser binaries need to be installed
        $script:needBrowserInstall = $false
    }

    process {

        # Step 0: Confirm installation consent

        try {
            $pwConsent = GenXdev\Confirm-InstallationConsent `
                -ApplicationName 'Playwright Browsers' `
                -Source 'NuGet (Microsoft.Playwright)' `
                -Description 'Chromium, Firefox, and WebKit browser binaries for web automation' `
                -Publisher 'Microsoft' `
                -ForceConsent:$ForceConsent `
                -ConsentToThirdPartySoftwareInstallation:$ConsentToThirdPartySoftwareInstallation

            if (-not $pwConsent) {
                Microsoft.PowerShell.Utility\Write-Warning (
                    'Playwright browser installation consent denied. Web automation features may not be available.'
                )
                return
            }
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Warning (
                "Failed to obtain Playwright installation consent: $($_.Exception.Message)"
            )
            return
        }

        # Step 1: Ensure Microsoft.Playwright .NET assembly is loaded

        $assemblyAlreadyLoaded = $null -ne (
            [System.AppDomain]::CurrentDomain.GetAssemblies() |
                Microsoft.PowerShell.Core\Where-Object {
                    $PSItem.GetName().Name -eq 'Microsoft.Playwright'
                }
        )

        if (-not $assemblyAlreadyLoaded) {

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Microsoft.Playwright assembly not loaded. Downloading via EnsureNuGetAssembly...'
            )

            $null = GenXdev\EnsureNuGetAssembly -PackageKey 'Microsoft.Playwright'

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Microsoft.Playwright assembly loaded successfully.'
            )
            $script:needBrowserInstall = $true
        }
        else {

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Microsoft.Playwright assembly already loaded.'
            )
        }

        # Step 2: Ensure browser binaries are installed

        # determine the Playwright cache directory for browser binaries
        $playwrightCacheDir = Microsoft.PowerShell.Management\Join-Path `
            -Path $env:LOCALAPPDATA `
            -ChildPath 'ms-playwright'

        # check if Chromium binary exists as a proxy for all browsers
        $browsersAlreadyInstalled = $false

        if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $playwrightCacheDir) {

            $existingChromium = Microsoft.PowerShell.Management\Get-ChildItem `
                -LiteralPath $playwrightCacheDir `
                -Directory `
                -Filter 'chromium-*' `
                -ErrorAction SilentlyContinue

            if ($existingChromium -and $existingChromium.Count -gt 0) {

                $browsersAlreadyInstalled = $true
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Playwright browser binaries found at: ${playwrightCacheDir}"
                )
            }
        }

        if ((-not $browsersAlreadyInstalled) -or $script:needBrowserInstall) {

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Installing Playwright browser binaries (Chromium, Firefox, WebKit)...'
            )

            Microsoft.PowerShell.Utility\Write-Verbose (
                'This may take several minutes on first run. Subsequent runs will skip this step.'
            )

            try {

                # invoke Playwright's built-in CLI to download browser binaries
                $exitCode = [Microsoft.Playwright.Program]::Main(@('install'))

                if ($exitCode -ne 0) {

                    Microsoft.PowerShell.Utility\Write-Warning (
                        "Playwright browser installation exited with code ${exitCode}. " +
                        'Some browsers may not be available.'
                    )
                }
                else {

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        'Playwright browser binaries installed successfully.'
                    )
                }
            }
            catch {

                Microsoft.PowerShell.Utility\Write-Warning (
                    "Failed to install Playwright browser binaries: $($_.Exception.Message)"
                )

                # don't throw — let callers handle missing browsers gracefully
            }
        }
        else {

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Playwright browser binaries already installed. Skipping download.'
            )
        }
    }

    end {

        Microsoft.PowerShell.Utility\Write-Verbose (
            'Playwright environment check complete.'
        )
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Software
Original cmdlet filename  : EnsurePSTools.ps1
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
Ensures Sysinternals tools (PSTools) are installed and available.

.DESCRIPTION
Verifies if Sysinternals tools like handle.exe are installed and properly
configured on the system. If not found, installs the Sysinternals Suite
using WinGet and handles the complete installation process automatically.

.PARAMETER Force
Switch to force reinstallation of Sysinternals tools even if they are already
installed.

.PARAMETER PSExeName
The executable name to check for verifying Sysinternals tools installation.
Default is 'handle.exe'.

.EXAMPLE
EnsurePSTools
Ensures Sysinternals tools are installed and properly configured.

.EXAMPLE
EnsurePSTools -Force -PSExeName 'procexp.exe'
Forces reinstallation of Sysinternals tools and uses procexp.exe to verify
installation.
###############################################################################>
function EnsurePSTools {

    [CmdletBinding()]
    param(
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Force reinstallation of Sysinternals tools'
        )]
        [switch]$Force,
        [parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = 'The executable name to verify installation'
        )]
        [string]$PSExeName = 'handle.exe'
    )

    begin {

        <#
        .SYNOPSIS
        Checks if the WinGet PowerShell module is installed.

        .DESCRIPTION
        Attempts to import the Microsoft.WinGet.Client module and verifies its
        presence by checking if the module is loaded after import.

        .EXAMPLE
        IsWinGetInstalled
        Returns $true if Microsoft.WinGet.Client module is installed, otherwise $false.
        #>
        function IsWinGetInstalled {

            # attempt to load the winget module silently
            Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client' `
                -ErrorAction SilentlyContinue

            # verify if module was loaded successfully
            $ModuleObj = Microsoft.PowerShell.Core\Get-Module 'Microsoft.WinGet.Client' `
                -ErrorAction SilentlyContinue

            # return true if module exists, false otherwise
            return $null -ne $ModuleObj
        }

        <#
        .SYNOPSIS
        Installs the WinGet PowerShell module.

        .DESCRIPTION
        Installs and imports the Microsoft.WinGet.Client module for package
        management using PowerShellGet.

        .EXAMPLE
        InstallWinGet
        Installs and imports the Microsoft.WinGet.Client module.
        #>
        function InstallWinGet {

            # request consent before installing winget module
            $wingetConsent = GenXdev\Confirm-InstallationConsent `
                -ApplicationName 'Microsoft.WinGet.Client PowerShell Module' `
                -Source 'PowerShell Gallery' `
                -Description 'Required for automated software package management via WinGet' `
                -Publisher 'Microsoft'

            if (-not $wingetConsent) {
                throw 'Installation consent denied for Microsoft.WinGet.Client PowerShell module'
            }

            # log installation progress through verbose messages
            Microsoft.PowerShell.Utility\Write-Verbose 'Installing WinGet PowerShell client...'

            # install winget module with force parameter to ensure success
            $null = PowerShellGet\Install-Module 'Microsoft.WinGet.Client' -Force -AllowClobber

            # load the newly installed module into the current session
            Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client'
        }
    }

    process {

        # check if we should install/reinstall based on force flag or missing executable
        if ($Force -or (@(Microsoft.PowerShell.Core\Get-Command $PSExeName `
                        -ErrorAction SilentlyContinue).Length -eq 0)) {

            # request consent before installing sysinternals packages
            $sysinternalsConsent = GenXdev\Confirm-InstallationConsent `
                -ApplicationName 'Microsoft Sysinternals Suite' `
                -Source 'WinGet' `
                -Description 'System administration and diagnostic tools (handle.exe, procexp.exe, etc.)' `
                -Publisher 'Microsoft'

            if (-not $sysinternalsConsent) {
                throw 'Installation consent denied for Microsoft Sysinternals Suite. Cannot proceed without system tools.'
            }

            # inform user about installation process starting
            Microsoft.PowerShell.Utility\Write-Host 'Installing Sysinternals packages...'

            # make sure winget module is available before proceeding
            if (-not (IsWinGetInstalled)) {
                InstallWinGet
            }

            # search for available sysinternals packages using winget
            $sysinternalsPackages = Microsoft.WinGet.Client\Find-WinGetPackage `
                -Name 'Microsoft.Sysinternals' |
                Microsoft.PowerShell.Core\Where-Object {
                    $_.Id -like 'Microsoft.Sysinternals*'
                }

            # install each found sysinternals package
            foreach ($package in $sysinternalsPackages) {
                try {
                    # log which package is being installed
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Installing $($package.Name) ($($package.Id))..."
                    )

                    # install the package with force to ensure success
                    $null = Microsoft.WinGet.Client\Install-WinGetPackage -Id $package.Id -Force
                }
                catch {
                    # log any installation failures with details
                    Microsoft.PowerShell.Utility\Write-Warning (
                        "Failed to install $($package.Name): $($_.Exception.Message)"
                    )
                }
            }

            # verify installation succeeded unless force was specified
            if (-not $Force -and (-not (Microsoft.PowerShell.Core\Get-Command $PSExeName `
                            -ErrorAction SilentlyContinue))) {
                throw "Sysinternals installation failed. $PSExeName not found."
            }
        }

        # log successful completion of the function
        Microsoft.PowerShell.Utility\Write-Verbose '✅ Sysinternals tools are ready.'
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Software
Original cmdlet filename  : EnsurePython.ps1
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
Ensures Python is installed and available in the system PATH.

.DESCRIPTION
Verifies that Python is installed and accessible via the system PATH. If Python
is not found, attempts to install it using winget (Windows Package Manager).
Supports specific version requirements and provides progress feedback during
installation. Returns the path to the Python executable if successful; throws
Write-Error on failure.

This function prioritizes existing Python installations but can force
reinstallation when needed. It validates Python functionality by checking
version output and ensures the installation is properly accessible.

.PARAMETER Version
The Python version to ensure is installed. Defaults to "3.12". Must follow
the format "major.minor" (e.g., "3.11", "3.12").

.PARAMETER Timeout
Timeout in seconds for Python installation process. Defaults to 600 seconds
(10 minutes) to accommodate download and installation time.

.PARAMETER Force
Forces reinstallation of Python even if it's already available. Useful for
updating corrupted installations or ensuring the latest version.

.EXAMPLE
EnsurePython

Ensures Python 3.12 is installed using default settings.

.EXAMPLE
$pythonPath = EnsurePython -Version "3.11" -Timeout 900

Installs Python 3.11 with extended timeout and returns the executable path.

.EXAMPLE
EnsurePython -Force -Verbose

Forces reinstallation of Python 3.12 with detailed progress information.

.EXAMPLE
EnsurePython -Version "3.10" -Force

Forces installation of Python 3.10 even if another version exists.
#>
function EnsurePython {

    [CmdletBinding()]

    param(
        [Parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = "Python version to ensure is installed"
        )]
        [ValidatePattern("^\d+\.\d+(\.\d+)?$")]
        [string] $Version = "3.12",
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Timeout in seconds for Python installation"
        )]
        [ValidateRange(60, 3600)]
        [int] $Timeout = 600,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Forces reinstallation of Python"
        )]
        [switch] $Force
    )

    begin {
        # initialize variables
        $pythonPath = $null
        $pythonInstalled = $false
        $stopwatch = [System.Diagnostics.Stopwatch]::StartNew()

        # show initial progress
        Microsoft.PowerShell.Utility\Write-Progress `
            -Activity "Python Installation" `
            -Status "Checking Python availability..."
    }

    process {
        try {
            # check if python is already available (unless Force is specified)
            if (-not $Force) {
                Microsoft.PowerShell.Utility\Write-Progress `
                    -Activity "Python Installation" `
                    -Status "Checking existing Python installation..." `
                    -PercentComplete 20

                # Function to check if found version is compatible with requested version
                function Test-VersionCompatibility {
                    param(
                        [string]$FoundVersion,
                        [string]$RequestedVersion
                    )

                    if (-not $FoundVersion -or -not $RequestedVersion) { return $false }

                    $foundParts = $FoundVersion.Split('.')
                    $requestedParts = $RequestedVersion.Split('.')

                    # Must match major.minor at minimum
                    if ($foundParts.Length -ge 2 -and $requestedParts.Length -ge 2) {
                        $foundMajorMinor = "$($foundParts[0]).$($foundParts[1])"
                        $requestedMajorMinor = "$($requestedParts[0]).$($requestedParts[1])"

                        if ($foundMajorMinor -eq $requestedMajorMinor) {
                            # If only major.minor requested (e.g., "3.12"), accept any patch version
                            if ($requestedParts.Length -eq 2) {
                                return $true
                            }
                            # If patch version specified, found version should be >= requested
                            if ($requestedParts.Length -eq 3 -and $foundParts.Length -ge 3) {
                                try {
                                    $foundPatch = [int]$foundParts[2]
                                    $requestedPatch = [int]$requestedParts[2]
                                    return $foundPatch -ge $requestedPatch
                                } catch {
                                    # If patch version parsing fails, accept major.minor match
                                    return $true
                                }
                            }
                            return $true
                        }
                    }

                    return $false
                }

                # Function to check Python installation and version
                function Test-PythonInstallation {
                    param([string]$PythonExePath)

                    if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $PythonExePath)) { return $null }

                    try {
                        $versionOutput = & $PythonExePath --version 2>$null
                        if ($versionOutput -and $versionOutput -match "Python (\d+\.\d+(\.\d+)?)") {
                            return $Matches[1]
                        }
                    } catch {
                        return $null
                    }
                    return $null
                }

                # Function to add Python to PATH if needed
                function Add-PythonToPath {
                    param([string]$PythonExePath)

                    $pythonDir = Microsoft.PowerShell.Management\Split-Path $PythonExePath -Parent
                    $scriptsDir = Microsoft.PowerShell.Management\Join-Path $pythonDir "Scripts"

                    $currentPath = $env:PATH
                    $pathsToAdd = @()

                    if ($currentPath -notlike "*$pythonDir*") {
                        $pathsToAdd += $pythonDir
                    }

                    if ((Microsoft.PowerShell.Management\Test-Path -LiteralPath $scriptsDir) -and ($currentPath -notlike "*$scriptsDir*")) {
                        $pathsToAdd += $scriptsDir
                    }

                    if ($pathsToAdd.Count -gt 0) {
                        $env:PATH = ($pathsToAdd -join ";") + ";" + $env:PATH
                        Microsoft.PowerShell.Utility\Write-Verbose "Added to PATH: $($pathsToAdd -join ', ')"
                    }
                }

                # First, check if python is in PATH
                $pythonCmd = Microsoft.PowerShell.Core\Get-Command python -ErrorAction SilentlyContinue
                if ($pythonCmd) {
                    $foundVersion = Test-PythonInstallation -PythonExePath $pythonCmd.Source
                    if ($foundVersion -and (Test-VersionCompatibility -FoundVersion $foundVersion -RequestedVersion $Version)) {
                        Microsoft.PowerShell.Utility\Write-Verbose "Python ${foundVersion} already available in PATH at: $($pythonCmd.Source) (compatible with ${Version})"
                        return $pythonCmd.Source
                    }
                }

                # Search common Python installation locations
                $versionForPath = $Version -replace '\.', ''
                if ($Version.Split('.').Count -eq 3) {
                    # For x.y.z versions, use x.y for path (e.g., 3.12.11 -> 312)
                    $majorMinor = ($Version.Split('.')[0..1] -join '.')
                    $versionForPath = $majorMinor -replace '\.', ''
                }

                $commonPaths = @(
                    "$env:LOCALAPPDATA\Programs\Python\Python$versionForPath\python.exe",
                    "$env:LOCALAPPDATA\Programs\Python\Python$versionForPath-32\python.exe",
                    "$env:PROGRAMFILES\Python$versionForPath\python.exe",
                    "$env:PROGRAMFILES(X86)\Python$versionForPath\python.exe",
                    "$env:USERPROFILE\AppData\Local\Programs\Python\Python$versionForPath\python.exe",
                    "$env:USERPROFILE\AppData\Local\Programs\Python\Python$versionForPath-32\python.exe"
                )

                # Also search for any Python installations via registry or common paths
                $pythonVersions = Microsoft.PowerShell.Management\Get-ChildItem -LiteralPath "$env:LOCALAPPDATA\Programs\Python" -ErrorAction SilentlyContinue |
                    Microsoft.PowerShell.Core\Where-Object { $_.Name -like "Python*" }

                foreach ($pythonDir in $pythonVersions) {
                    $pythonExe = Microsoft.PowerShell.Management\Join-Path $pythonDir.FullName "python.exe"
                    $commonPaths += $pythonExe
                }

                foreach ($pythonPath in $commonPaths) {
                    $foundVersion = Test-PythonInstallation -PythonExePath $pythonPath
                    if ($foundVersion -and (Test-VersionCompatibility -FoundVersion $foundVersion -RequestedVersion $Version)) {
                        Microsoft.PowerShell.Utility\Write-Verbose "Found Python ${foundVersion} at: ${pythonPath} (compatible with ${Version})"
                        Add-PythonToPath -PythonExePath $pythonPath
                        return $pythonPath
                    }
                }

                Microsoft.PowerShell.Utility\Write-Verbose "Python ${Version} not found in common locations"
            }

            # check for winget availability
            Microsoft.PowerShell.Utility\Write-Progress `
                -Activity "Python Installation" `
                -Status "Checking winget availability..." `
                -PercentComplete 30

            if (-not (Microsoft.PowerShell.Core\Get-Command winget -ErrorAction SilentlyContinue)) {
                Microsoft.PowerShell.Utility\Write-Error `
                    "winget (Windows Package Manager) is not installed. Please install winget and try again."
                return
            }

            # search for requested python version
            Microsoft.PowerShell.Utility\Write-Progress `
                -Activity "Python Installation" `
                -Status "Searching for Python ${Version}..." `
                -PercentComplete 40

            Microsoft.PowerShell.Utility\Write-Verbose `
                "Searching for Python ${Version} via winget"

            # For winget, use major.minor version for package ID (e.g., 3.12.11 -> 3.12)
            $packageVersion = $Version
            if ($Version.Split('.').Count -eq 3) {
                $packageVersion = ($Version.Split('.')[0..1] -join '.')
            }
            $packageId = "Python.Python.${packageVersion}"
            $pythonSearch = winget search python --id $packageId --exact 2>$null

            if (-not $pythonSearch -or $pythonSearch -match "No package found") {
                Microsoft.PowerShell.Utility\Write-Error `
                    "Python ${Version} not found via winget. Available versions may be different."
                return
            }

            # request consent for python installation
            Microsoft.PowerShell.Utility\Write-Progress `
                -Activity "Python Installation" `
                -Status "Requesting installation consent..." `
                -PercentComplete 50

            try {
                $consentResult = GenXdev\Confirm-InstallationConsent `
                    -ApplicationName "Python ${Version}" `
                    -Source "Winget" `
                    -Description "Python interpreter and runtime environment for executing Python scripts and applications" `
                    -Publisher "Python Software Foundation"

                if (-not $consentResult) {
                    Microsoft.PowerShell.Utility\Write-Error `
                        "Python ${Version} installation was declined by user."
                    return
                }
            } catch {
                Microsoft.PowerShell.Utility\Write-Error `
                    "Failed to confirm installation consent: $($_.Exception.Message)"
                return
            }

            # install python via winget
            Microsoft.PowerShell.Utility\Write-Progress `
                -Activity "Python Installation" `
                -Status "Installing Python ${Version}..." `
                -PercentComplete 60

            Microsoft.PowerShell.Utility\Write-Verbose `
                "Installing Python ${Version} via winget"

            try {
                $installArgs = @(
                    "install",
                    "--id", $packageId,
                    "--exact",
                    "--scope", "user",
                    "--accept-package-agreements",
                    "--accept-source-agreements",
                    "--silent"
                )

                $installResult = & winget $installArgs 2>&1

                Microsoft.PowerShell.Utility\Write-Verbose "winget install result: $installResult"

            } catch {
                Microsoft.PowerShell.Utility\Write-Error `
                    "Failed to install Python ${Version} via winget: $($_.Exception.Message)"
                return
            }

            # wait for python to be available and refresh PATH
            Microsoft.PowerShell.Utility\Write-Progress `
                -Activity "Python Installation" `
                -Status "Verifying Python installation..." `
                -PercentComplete 80

            # refresh environment variables from registry
            $machinePath = [System.Environment]::GetEnvironmentVariable("PATH", "Machine")
            $userPath = [System.Environment]::GetEnvironmentVariable("PATH", "User")
            $env:PATH = $machinePath + ";" + $userPath

            # give some time for installation to complete
            Microsoft.PowerShell.Utility\Start-Sleep -Seconds 3

            # try to find python command again
            $attempts = 0
            $maxAttempts = 15

            while ($attempts -lt $maxAttempts) {
                # First check if python is now in PATH
                $pythonCmd = Microsoft.PowerShell.Core\Get-Command python -ErrorAction SilentlyContinue
                if ($pythonCmd) {
                    $foundVersion = Test-PythonInstallation -PythonExePath $pythonCmd.Source
                    if ($foundVersion -and (Test-VersionCompatibility -FoundVersion $foundVersion -RequestedVersion $Version)) {
                        Microsoft.PowerShell.Utility\Write-Verbose "Python ${foundVersion} successfully available in PATH at: $($pythonCmd.Source) (compatible with ${Version})"
                        $pythonPath = $pythonCmd.Source
                        $pythonInstalled = $true
                        break
                    }
                }

                # If not in PATH, search common installation locations again
                $versionForPath = $Version -replace '\.', ''
                if ($Version.Split('.').Count -eq 3) {
                    # For x.y.z versions, use x.y for path (e.g., 3.12.11 -> 312)
                    $majorMinor = ($Version.Split('.')[0..1] -join '.')
                    $versionForPath = $majorMinor -replace '\.', ''
                }

                $commonPaths = @(
                    "$env:LOCALAPPDATA\Programs\Python\Python$versionForPath\python.exe",
                    "$env:LOCALAPPDATA\Programs\Python\Python$versionForPath-32\python.exe",
                    "$env:PROGRAMFILES\Python$versionForPath\python.exe",
                    "$env:PROGRAMFILES(X86)\Python$versionForPath\python.exe",
                    "$env:USERPROFILE\AppData\Local\Programs\Python\Python$versionForPath\python.exe",
                    "$env:USERPROFILE\AppData\Local\Programs\Python\Python$versionForPath-32\python.exe"
                )

                foreach ($testPath in $commonPaths) {
                    $foundVersion = Test-PythonInstallation -PythonExePath $testPath
                    if ($foundVersion -and (Test-VersionCompatibility -FoundVersion $foundVersion -RequestedVersion $Version)) {
                        Microsoft.PowerShell.Utility\Write-Verbose "Found Python ${foundVersion} at: ${testPath} (compatible with ${Version})"
                        Add-PythonToPath -PythonExePath $testPath
                        $pythonPath = $testPath
                        $pythonInstalled = $true
                        break
                    }
                }

                if ($pythonInstalled) { break }

                $attempts++
                Microsoft.PowerShell.Utility\Start-Sleep -Seconds 2
            }

            if (-not $pythonInstalled) {
                Microsoft.PowerShell.Utility\Write-Error `
                    "Failed to verify Python ${Version} installation. Python may not be in PATH."
                return
            }

            # check timeout
            if ($stopwatch.Elapsed.TotalSeconds -gt $Timeout) {
                Microsoft.PowerShell.Utility\Write-Error `
                    "Python installation timed out after ${Timeout} seconds."
                return
            }

            # complete progress
            Microsoft.PowerShell.Utility\Write-Progress `
                -Activity "Python Installation" `
                -Status "Python installation completed" `
                -PercentComplete 100

            Microsoft.PowerShell.Utility\Write-Verbose "Python is ready at: ${pythonPath}"
            return $pythonPath

        } catch {
            Microsoft.PowerShell.Utility\Write-Error `
                "Failed to ensure Python installation: $($_.Exception.Message)"
            return
        }
    }

    end {
        Microsoft.PowerShell.Utility\Write-Progress `
            -Activity "Python Installation" `
            -Completed
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Software
Original cmdlet filename  : EnsureSQLiteStudioInstalled.ps1
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
Ensures SQLiteStudio is installed and accessible from the command line.

.DESCRIPTION
Verifies if SQLiteStudio is installed and available in the system PATH. If not
found, it first checks if the PATH environment variable needs updating. If that
doesn't resolve the issue, it installs SQLiteStudio using WinGet and configures
the PATH environment variable.

.EXAMPLE
EnsureSQLiteStudioInstalled
Checks and ensures SQLiteStudio is installed and accessible.
#>
function EnsureSQLiteStudioInstalled {

    [CmdletBinding()]
    param()

    begin {

        <#
        .SYNOPSIS
        Checks if the WinGet PowerShell client module is installed.
        #>
        function IsWinGetInstalled {

            Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client' -ErrorAction SilentlyContinue
            $ModuleObj = Microsoft.PowerShell.Core\Get-Module 'Microsoft.WinGet.Client' -ErrorAction SilentlyContinue

            return $null -ne $ModuleObj
        }

        <#
        .SYNOPSIS
        Installs the WinGet PowerShell client module.
        #>
        function InstallWinGet {

            # Request consent before installing WinGet PowerShell client
            $consent = GenXdev\Confirm-InstallationConsent `
                -ApplicationName 'Microsoft.WinGet.Client' `
                -Source 'PowerShell Gallery' `
                -Description 'PowerShell module required for package management operations' `
                -Publisher 'Microsoft'

            if (-not $consent) {
                Microsoft.PowerShell.Utility\Write-Error 'Installation consent denied for Microsoft.WinGet.Client module.'
                return
            }

            Microsoft.PowerShell.Utility\Write-Verbose 'Installing WinGet PowerShell client...'
            PowerShellGet\Install-Module 'Microsoft.WinGet.Client' -Force -AllowClobber
            Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client'
        }
    }


    process {

        # check if sqlitestudio executable is available in the system path
        if (@(Microsoft.PowerShell.Core\Get-Command 'SQLiteStudio.exe' -ErrorAction SilentlyContinue).Length -eq 0) {

            # determine the default installation directory for sqlitestudio
            $sqliteStudioPath = (GenXdev\Expand-Path "${env:ProgramFiles}\SQLiteStudio")

            # get current user path environment variable
            $currentPath = [Environment]::GetEnvironmentVariable('PATH', 'User')

            # add sqlitestudio to path if not already present
            if ($currentPath -notlike "*$sqliteStudioPath*") {

                Microsoft.PowerShell.Utility\Write-Verbose 'Adding SQLiteStudio directory to user PATH...'
                [Environment]::SetEnvironmentVariable(
                    'PATH',
                    "$currentPath;$sqliteStudioPath",
                    'User')
            }

            # ensure current session has updated path only if not already present
            if ($env:PATH -notlike "*$sqliteStudioPath*") {
                $env:PATH = "$env:PATH;$sqliteStudioPath"
            }

            # verify if path update resolved the missing executable
            if (@(Microsoft.PowerShell.Core\Get-Command 'SQLiteStudio.exe' -ErrorAction SilentlyContinue).Length -gt 0) {

                return
            }

            Microsoft.PowerShell.Utility\Write-Host 'SQLiteStudio not found. Installing SQLiteStudio...'

            # Request consent before installing SQLiteStudio
            $consent = GenXdev\Confirm-InstallationConsent `
                -ApplicationName 'SQLiteStudio' `
                -Source 'Winget' `
                -Description 'Database management tool required for SQLite operations' `
                -Publisher 'Pawel Salawa'

            if (-not $consent) {
                Microsoft.PowerShell.Utility\Write-Error 'Installation consent denied for SQLiteStudio. SQLite operations may not be available.'
                return
            }

            # ensure winget package manager is available
            if (-not (IsWinGetInstalled)) {

                InstallWinGet
            }

            # attempt installation using winget
            Microsoft.PowerShell.Utility\Write-Verbose 'Installing SQLiteStudio using WinGet...'
            Microsoft.WinGet.Client\Install-WinGetPackage -Id 'PawelSalawa.SQLiteStudio' -Force

            # verify successful installation
            if (-not (Microsoft.PowerShell.Core\Get-Command 'SQLiteStudioU.exe' -ErrorAction SilentlyContinue)) {

                Microsoft.PowerShell.Utility\Write-Error 'SQLiteStudio installation failed.'
                return
            }
        }
    }

    end {}
}
<##############################################################################
Part of PowerShell module : GenXdev.Software
Original cmdlet filename  : EnsureSSMSInstalled.ps1
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
Ensures SSMS is installed and accessible from the command line.

.DESCRIPTION
Verifies if SSMS is installed and available in the system PATH. If not
found, it first checks if the PATH environment variable needs updating. If that
doesn't resolve the issue, it installs SSMS using WinGet and configures
the PATH environment variable.

.EXAMPLE
EnsureSSMSInstalled
Checks and ensures SSMS is installed and accessible.
#>
function EnsureSSMSInstalled {

    [CmdletBinding()]
    param(
        [switch] $Force
    )

    begin {

        <#
        .SYNOPSIS
        Checks if the WinGet PowerShell client module is installed.
        #>
        function IsWinGetInstalled {

            Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client' -ErrorAction SilentlyContinue
            $ModuleObj = Microsoft.PowerShell.Core\Get-Module 'Microsoft.WinGet.Client' -ErrorAction SilentlyContinue

            return $null -ne $ModuleObj
        }

        <#
        .SYNOPSIS
        Installs the WinGet PowerShell client module.
        #>
        function InstallWinGet {

            $consent = GenXdev\Confirm-InstallationConsent `
                -ApplicationName 'Microsoft.WinGet.Client' `
                -Source 'PowerShell Gallery' `
                -Description 'Required for installing SQL Server Management Studio' `
                -Publisher 'Microsoft'

            if (-not $consent) {
                throw "Installation consent denied for Microsoft.WinGet.Client module. Cannot proceed with SSMS installation."
            }

            Microsoft.PowerShell.Utility\Write-Verbose 'Installing WinGet PowerShell client...'
            PowerShellGet\Install-Module 'Microsoft.WinGet.Client' -Force -AllowClobber
            Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client'
        }

        $searchPath  = GenXdev\Find-Item `
             "${Env:ProgramFiles(x86)}\*SQL Server Management*\Ssms.exe",
             "${Env:ProgramFiles}\*SQL Server Management*\Ssms.exe" |
             Microsoft.PowerShell.Utility\Sort-Object LastWriteTime -Descending | Microsoft.PowerShell.Utility\Select-Object -First 1

        if ($Force -or -not $searchPath) {

            # ensure winget package manager is available
            if (-not (IsWinGetInstalled)) {

                InstallWinGet
            }

            $consent = GenXdev\Confirm-InstallationConsent `
                -ApplicationName 'SQL Server Management Studio 22 Preview' `
                -Source 'Winget' `
                -Description 'Required for SQL Server database management and administration' `
                -Publisher 'Microsoft'

            if (-not $consent) {
                throw "Installation consent denied for SQL Server Management Studio. Cannot proceed with SSMS installation."
            }

            Microsoft.WinGet.Client\Install-WinGetPackage -Id "Microsoft.SQLServerManagementStudio.22.Preview"

            $searchPath  = GenXdev\Find-Item  `
             "${Env:ProgramFiles(x86)}\*SQL Server Management*\Ssms.exe",
             "${Env:ProgramFiles}\*SQL Server Management*\Ssms.exe" |
             Microsoft.PowerShell.Utility\Sort-Object LastWriteTime -Descending | Microsoft.PowerShell.Utility\Select-Object -First 1
        }

        if (-not $searchPath) {
            Throw "SSMS not found after installation attempt."
        }
    }


    process {

    }

    end {}
}
<##############################################################################
Part of PowerShell module : GenXdev.Software
Original cmdlet filename  : EnsureVSCodeInstallation.ps1
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
Installs and configures Visual Studio Code with recommended extensions.

.DESCRIPTION
Checks if Visual Studio Code is installed and if not, installs it using WinGet.
Configures user settings, keybindings, and installs recommended extensions from
the workspace configuration. Also sets up PSGallery as a trusted repository and
configures specific extension settings.

.EXAMPLE
EnsureVSCodeInstallation
#>
function EnsureVSCodeInstallation {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    param(

        [switch] $Force

    )

    begin {

        # ensure copilot keyboard shortcut is configured
        $null = GenXdev\EnsureCopilotKeyboardShortCut

        # get the process that's hosting the current PowerShell session
        [System.Diagnostics.Process] $hostProcess = `
            GenXdev\Get-PowershellMainWindowProcess

        # determine default IDE path based on host process availability
        $normalPath = Microsoft.PowerShell.Management\Join-Path `
            $env:LOCALAPPDATA 'Programs\Microsoft VS Code\Code.exe'
        $normalPath2 = Microsoft.PowerShell.Management\Join-Path `
            $env:ProgramFiles 'Microsoft VS Code\Code.exe'
        $previewPath = Microsoft.PowerShell.Management\Join-Path `
            $env:LOCALAPPDATA `
            'Programs\Microsoft VS Code Insiders\Code - Insiders.exe'
        $previewPath2 = Microsoft.PowerShell.Management\Join-Path `
            $env:ProgramFiles `
            '\Microsoft VS Code Insiders\Code - Insiders.exe'

        $idePath = ((($null -eq $hostProcess) -or `
                ($hostProcess -like '*Terminal*')) ? (
                ([IO.File]::Exists($previewPath) ? $previewPath : (
                    ([IO.File]::Exists($previewPath2) ? $previewPath2 : (
                        ([IO.File]::Exists($normalPath) ? $normalPath : (
                            ([IO.File]::Exists($normalPath2) ? $normalPath2 : 'code')))))))) : `
                $hostProcess.Path)

        # check if vscode executable is available in path
        $vSCodeMissing = $idePath -eq 'code'
        Microsoft.PowerShell.Utility\Write-Verbose `
        ("VSCode installation check: $($vSCodeMissing ? 'Missing' : 'Found')")
    }

    process {

        if ($vSCodeMissing -or $Force) {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Installing Visual Studio Code...'

            # check installation consent before proceeding
            $consent = GenXdev\Confirm-InstallationConsent `
                -ApplicationName 'Visual Studio Code Insiders' `
                -Source 'Winget' `
                -Description 'Code editor and development environment for PowerShell module development' `
                -Publisher 'Microsoft'

            if (-not $consent) {
                Microsoft.PowerShell.Utility\Write-Warning `
                    'Visual Studio Code installation cancelled by user.'
                return
            }

            # install visual studio code insiders using winget
            Microsoft.WinGet.Client\Install-WinGetPackage `
                -Id 'Microsoft.VisualStudioCode.Insiders' `
                -Mode Silent `
                -Force `
                -Scope SystemOrUnknown

            # refresh search paths after installation
            GenXdev\Initialize-SearchPaths

            # install recommended extensions from workspace .vscode/extensions.json
            try {

                Microsoft.PowerShell.Utility\Write-Verbose `
                ("Installing recommended VSCode extensions from " +
                    "workspace...")

                # check installation consent for extensions
                $extensionConsent = GenXdev\Confirm-InstallationConsent `
                    -ApplicationName 'VSCode Extensions' `
                    -Source 'VSCode Marketplace' `
                    -Description 'Recommended workspace extensions for enhanced development experience' `
                    -Publisher 'Various'

                if (-not $extensionConsent) {
                    Microsoft.PowerShell.Utility\Write-Warning `
                        'VSCode extensions installation cancelled by user.'
                }
                else {

                    # determine workspace folder path
                    $workspaceFolder = if ($Global:WorkspaceFolder) {

                        $Global:WorkspaceFolder

                    }
                    else {

                        GenXdev\Expand-Path `
                            "$($MyInvocation.MyCommand.Module.ModuleBase)\..\..\..\"
                    }

                    # build path to extensions configuration file
                    $extFile = Microsoft.PowerShell.Management\Join-Path `
                        $workspaceFolder ".vscode/extensions.json"

                    # check if extensions configuration file exists
                    if (Microsoft.PowerShell.Management\Test-Path `
                            -LiteralPath $extFile) {

                        # read and parse extensions configuration
                        $plugins = Microsoft.PowerShell.Management\Get-Content `
                            -LiteralPath $extFile `
                            -Raw |
                            Microsoft.PowerShell.Utility\ConvertFrom-Json

                        if ($plugins.recommendations) {

                            $i = 0

                            $total = $plugins.recommendations.Count

                            # install each recommended extension
                            foreach ($ext in $plugins.recommendations) {

                                # calculate installation progress percentage
                                $percent = if ($total -gt 0) {

                                    [Convert]::ToInt32([Math]::Round(
                                            (100 / $total) * $i, 0))

                                }
                                else {

                                    0
                                }

                                # display progress information
                                Microsoft.PowerShell.Utility\Write-Progress `
                                    -Id 1 `
                                    -Status "Installing VSCode extension $ext" `
                                    -PercentComplete $percent `
                                    -Activity "VSCode extensions"

                                try {

                                    # install extension using vscode command line
                                    & code --install-extension $ext --force

                                }
                                catch {

                                    Microsoft.PowerShell.Utility\Write-Warning `
                                        "Failed to install VSCode extension: $ext"
                                }

                                $i++
                            }

                            Microsoft.PowerShell.Utility\Write-Host `
                                "VSCode recommended extensions installed."

                        }
                        else {

                            Microsoft.PowerShell.Utility\Write-Host `
                                "No recommended extensions found in $extFile."
                        }

                    }
                    else {

                        Microsoft.PowerShell.Utility\Write-Host `
                            "No .vscode/extensions.json found in workspace."
                    }

                }

            }
            catch {

                Microsoft.PowerShell.Utility\Write-Warning $_
            }

            # generate and store MCP server authentication token if not already configured
            try {

                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Checking MCP server authentication token..."

                $existingToken = [System.Environment]::GetEnvironmentVariable(
                    'GENXDEV_MCP_TOKEN', 'User')

                if ([string]::IsNullOrEmpty($existingToken)) {

                    Microsoft.PowerShell.Utility\Write-Host `
                        "Generating secure MCP server authentication token..." `
                        -ForegroundColor Yellow

                    # generate and store token without prompting
                    $null = GenXdev\New-GenXdevMCPToken `
                        -SetEnvironmentVariable `
                        -Force

                    Microsoft.PowerShell.Utility\Write-Host `
                    ("MCP server authentication token generated and " +
                        "stored in GENXDEV_MCP_TOKEN environment variable.") `
                        -ForegroundColor Green

                }
                else {

                    Microsoft.PowerShell.Utility\Write-Verbose `
                        "MCP server authentication token already configured."
                }

            }
            catch {

                Microsoft.PowerShell.Utility\Write-Warning `
                ("Failed to generate MCP server token: " +
                    "$($_.Exception.Message)")
            }

            # copy asset files to workspace
            $sourcePath = GenXdev\Expand-Path `
                "$($MyInvocation.MyCommand.Module.ModuleBase)\Assets\"

            $targetPath = GenXdev\Expand-Path `
                "$($MyInvocation.MyCommand.Module.ModuleBase)\..\..\..\"

            # process each asset file in source directory
            GenXdev\Find-Item "$sourcePath\*" `
                -RelativeBasePath $sourcePath |
                Microsoft.PowerShell.Core\ForEach-Object {

                    # build source and target file paths
                    $sourceFile = GenXdev\Expand-Path `
                        "$sourcePath\$PSItem"

                    $targetFile = GenXdev\Expand-Path `
                    ("$targetPath\$PSItem".Replace('.asset.txt', '')) `
                        -CreateDirectory

                    # determine if file should be overwritten
                    $doOverwrite = ($targetFile -like "\.vscode\tasks.json") -and `
                    (Microsoft.PowerShell.Management\Test-Path `
                            -LiteralPath $targetFile) -and `
                    ([IO.File]::ReadAllText($targetFile) -like `
                            "*-DebugFailedTests*")

                    # skip if target file exists and overwrite is not needed
                    if ([IO.File]::Exists($targetFile) -and (-not $doOverwrite)) {

                        return
                    }

                    # copy asset file to target location
                    Microsoft.PowerShell.Management\Copy-Item `
                        -LiteralPath $sourceFile `
                        -Destination $targetFile
                }
        }
    }

    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Software
Original cmdlet filename  : EnsureWinMergeInstalled.ps1
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
Ensures WinMerge is installed and available for file comparison operations.

.DESCRIPTION
Verifies if WinMerge is installed and properly configured in the system PATH.
If not found, installs WinMerge using WinGet and adds it to the user's PATH.
Handles the complete installation and configuration process automatically.

.EXAMPLE
EnsureWinMergeInstalled
Ensures WinMerge is installed and properly configured.
#>
function EnsureWinMergeInstalled {

    [CmdletBinding()]
    param()

    begin {

        <#
        .SYNOPSIS
        Checks if the WinGet PowerShell module is installed.

        .DESCRIPTION
        Attempts to import the Microsoft.WinGet.Client module and verifies its
        presence.

        .EXAMPLE
        IsWinGetInstalled
        #>
        function IsWinGetInstalled {

            # attempt to load the winget module silently
            Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client' `
                -ErrorAction SilentlyContinue

            # verify if module was loaded successfully
            $ModuleObj = Microsoft.PowerShell.Core\Get-Module 'Microsoft.WinGet.Client' `
                -ErrorAction SilentlyContinue

            return $null -ne $ModuleObj
        }

        <#
        .SYNOPSIS
        Installs the WinGet PowerShell module.

        .DESCRIPTION
        Installs and imports the Microsoft.WinGet.Client module for package
        management.

        .EXAMPLE
        InstallWinGet
        #>
        function InstallWinGet {

            # request user consent before installing winget module
            $consent = GenXdev\Confirm-InstallationConsent `
                -ApplicationName 'Microsoft.WinGet.Client' `
                -Source 'PowerShell Gallery' `
                -Description 'PowerShell module for Windows Package Manager operations' `
                -Publisher 'Microsoft'

            if (-not $consent) {
                throw 'Installation of Microsoft.WinGet.Client was denied by user.'
            }

            # install and import winget module with force to ensure success
            Microsoft.PowerShell.Utility\Write-Verbose 'Installing WinGet PowerShell client...'
            $null = PowerShellGet\Install-Module 'Microsoft.WinGet.Client' -Force -AllowClobber

            # load the newly installed module
            Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client'
        }
    }


    process {

        # verify if winmerge is available in current session
        if (@(Microsoft.PowerShell.Core\Get-Command 'WinMergeU.exe' -ErrorAction SilentlyContinue).Length -eq 0) {

            # define the standard installation location for winmerge
            $winMergePath = Microsoft.PowerShell.Management\Join-Path $env:LOCALAPPDATA 'Programs\WinMerge'

            # get the current user's path environment variable
            $currentPath = [Environment]::GetEnvironmentVariable('PATH', 'User')

            # ensure winmerge path exists in user's path variable
            if ($currentPath -notlike "*$winMergePath*") {

                Microsoft.PowerShell.Utility\Write-Verbose 'Adding WinMerge to system PATH...'
                [Environment]::SetEnvironmentVariable(
                    'PATH',
                    "$currentPath;$winMergePath",
                    'User')
            }

            # update current session's path only if not already present
            if ($env:PATH -notlike "*$winMergePath*") {
                $env:PATH = "$env:PATH;$winMergePath"
            }


            # check if winmerge is now accessible
            if (@(Microsoft.PowerShell.Core\Get-Command 'WinMergeU.exe' -ErrorAction SilentlyContinue).Length -gt 0) {
                return
            }

            Microsoft.PowerShell.Utility\Write-Host 'WinMerge not found. Installing WinMerge...'

            # ensure winget is available for installation
            if (-not (IsWinGetInstalled)) {
                InstallWinGet
            }

            # request user consent before installing winmerge
            $consentWinMerge = GenXdev\Confirm-InstallationConsent `
                -ApplicationName 'WinMerge' `
                -Source 'WinGet' `
                -Description 'Visual diff and merge tool for files and folders' `
                -Publisher 'WinMerge Team'

            if (-not $consentWinMerge) {
                throw 'Installation of WinMerge was denied by user.'
            }

            # install winmerge using winget package manager
            $null = Microsoft.WinGet.Client\Install-WinGetPackage -Id 'WinMerge.WinMerge' -Force
            # define the standard installation location for winmerge
            $winMergePath = Microsoft.PowerShell.Management\Join-Path $env:LOCALAPPDATA 'Programs\WinMerge'

            # get the current user's path environment variable
            $currentPath = [Environment]::GetEnvironmentVariable('PATH', 'User')

            # ensure winmerge path exists in user's path variable
            if ($currentPath -notlike "*$winMergePath*") {

                Microsoft.PowerShell.Utility\Write-Verbose 'Adding WinMerge to system PATH...'
                [Environment]::SetEnvironmentVariable(
                    'PATH',
                    "$currentPath;$winMergePath",
                    'User')
            }

            # update current session's path only if not already present
            if ($env:PATH -notlike "*$winMergePath*") {
                $env:PATH = "$env:PATH;$winMergePath"
            }

            # verify successful installation
            if (-not (Microsoft.PowerShell.Core\Get-Command 'WinMergeU.exe' -ErrorAction SilentlyContinue)) {
                throw 'WinMerge installation failed.'
            }
        }
    }

    end {
    }
}

