<##############################################################################
Part of PowerShell module : GenXdev.Windows.WireGuard
Original cmdlet filename  : Add-WireGuardPeer.ps1
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
Adds a new WireGuard VPN peer (client) configuration to the server.

.DESCRIPTION
This function adds a new peer to the WireGuard VPN server running in a Docker
container. It generates a new client configuration with a unique IP address,
creates necessary cryptographic keys, and returns the configuration details.
The function can optionally save the configuration to a file or generate a QR
code for easy mobile device setup. The function validates peer names, checks
for duplicates, and handles various error conditions gracefully.

.PARAMETER PeerName
A unique name for the peer that will be used to identify the peer in the
WireGuard configuration and for the generated configuration filename. The name
must be less than 100 characters and cannot contain invalid characters like
< > " / \ | ? * :

.PARAMETER AllowedIPs
The IP ranges that will be routed through the VPN for this peer. Specify
multiple ranges separated by commas. Default is "0.0.0.0/0, ::/0" which
routes all IPv4 and IPv6 traffic through the VPN tunnel.

.PARAMETER DNS
DNS servers to use for this peer when connected to the VPN. Specify multiple
servers separated by commas. Default is "1.1.1.1, 1.0.0.1" which uses
Cloudflare's secure DNS servers.

.PARAMETER OutputPath
The directory path where the peer configuration file should be saved when
SaveConfig is enabled. The directory will be created if it doesn't exist.
Default is "$env:USERPROFILE\WireGuardConfigs".

.PARAMETER ContainerName
The name of the Docker container running the WireGuard service. Must match
the container name used when initializing the service. Default is "wireguard".

.PARAMETER VolumeName
The name of the Docker volume used for persistent storage of WireGuard
configurations and keys. Must match the volume name used during
initialization. Default is "wireguard_data".

.PARAMETER ServicePort
The UDP port number that the WireGuard service listens on for VPN
connections. Must be a valid port number between 1 and 65535. Default is
51839 which is the standard WireGuard port.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for the WireGuard service health check to
complete. Valid range is 10 to 300 seconds. Default is 60 seconds.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts when waiting for the
service to become ready. Valid range is 1 to 10 seconds. Default is 3
seconds.

.PARAMETER ImageName
The Docker image name to use for the WireGuard container. Default is
"linuxserver/wireguard" which is the official LinuxServer.io WireGuard image.

.PARAMETER PUID
User ID for file permissions inside the Docker container. Should match the
host user ID to avoid permission issues with volume mounts. Default is "1000".

.PARAMETER PGID
Group ID for file permissions inside the Docker container. Should match the
host group ID to avoid permission issues with volume mounts. Default is
"1000".

.PARAMETER TimeZone
Timezone to use for the container logs and scheduling. Should be a valid
timezone identifier. Default is "Etc/UTC" for consistent UTC timestamps.

.PARAMETER SaveConfig
When specified, saves the generated peer configuration to a .conf file in the
OutputPath directory. The file will be named with the peer name followed by
.conf extension.

.PARAMETER ShowQRCode
When specified, generates a PNG QR code that can be scanned by the WireGuard
mobile app for easy configuration import. The QR code is saved to the
OutputPath directory.

.PARAMETER NoDockerInitialize
When specified, skips the Docker container initialization check. Use this
when the function is called by another function that has already ensured the
WireGuard service is running.

.PARAMETER Force
When specified, forces a rebuild of the Docker container and removes existing
data. This will destroy all existing peer configurations and server keys.

.PARAMETER WhatIf
Shows what would happen if the cmdlet runs. The cmdlet is not run.

.PARAMETER Confirm
Prompts you for confirmation before running the cmdlet.

.EXAMPLE
Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `
    -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `
    "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `
    -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `
    -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `
    -PGID "1000" -TimeZone "Etc/UTC"

.EXAMPLE
Add-WireGuardPeer "MyTablet" -ShowQRCode

.NOTES
This function interacts with the linuxserver/wireguard Docker container to
manage WireGuard peers. It requires Docker to be installed and the WireGuard
container to be running. Use EnsureWireGuard function first to initialize the
service if needed.
#>
function Add-WireGuardPeer {

    [CmdletBinding(SupportsShouldProcess)]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $true,
            HelpMessage = 'A unique name for the peer'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PeerName,
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = ('The IP ranges that will be routed through the ' +
                'VPN')
        )]
        [ValidateNotNullOrEmpty()]
        [string] $AllowedIPs = '0.0.0.0/0, ::/0',
        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'DNS servers to use for this peer'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $DNS = '1.1.1.1, 1.0.0.1',
        [Parameter(
            Position = 3,
            Mandatory = $false,
            HelpMessage = ('The path where the peer configuration file ' +
                'should be saved')
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('outfile', 'OutputFile')]
        [string] $OutputPath = "$env:USERPROFILE\WireGuardConfigs",
        [Parameter(
            Position = 4,
            Mandatory = $false,
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'wireguard',
        [Parameter(
            Position = 5,
            Mandatory = $false,
            HelpMessage = ('The name for the Docker volume for persistent ' +
                'storage')
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'wireguard_data',
        [Parameter(
            Position = 6,
            Mandatory = $false,
            HelpMessage = 'The port number for the WireGuard service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 51839,
        [Parameter(
            Position = 7,
            Mandatory = $false,
            HelpMessage = ('Maximum time in seconds to wait for service ' +
                'health check')
        )]
        [ValidateRange(10, 300)]
        [int] $HealthCheckTimeout = 60,
        [Parameter(
            Position = 8,
            Mandatory = $false,
            HelpMessage = ('Interval in seconds between health check ' +
                'attempts')
        )]
        [ValidateRange(1, 10)]
        [int] $HealthCheckInterval = 3,
        [Parameter(
            Position = 9,
            Mandatory = $false,
            HelpMessage = 'Custom Docker image name to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImageName = 'linuxserver/wireguard',
        [Parameter(
            Position = 10,
            Mandatory = $false,
            HelpMessage = 'User ID for permissions in the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PUID = '1000',
        [Parameter(
            Position = 11,
            Mandatory = $false,
            HelpMessage = 'Group ID for permissions in the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PGID = '1000',
        [Parameter(
            Position = 12,
            Mandatory = $false,
            HelpMessage = 'Timezone to use for the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $TimeZone = 'Etc/UTC',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Save the peer configuration to a file'
        )]
        [switch] $SaveConfig,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show the WireGuard window when initializing the service'
        )]
        [switch] $ShowWindow,
        [Alias('nb')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Remove window borders when initializing the service'
        )]
        [switch] $NoBorders,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the window width when initializing the service'
        )]
        [int] $Width = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the window height when initializing the service'
        )]
        [int] $Height = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the window left position when initializing the service'
        )]
        [int] $Left,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the window right position when initializing the service'
        )]
        [int] $Right,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the window bottom position when initializing the service'
        )]
        [int] $Bottom,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Center the window when initializing the service'
        )]
        [switch] $Centered,
        [Alias('fs')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Start the service in fullscreen mode'
        )]
        [switch] $Fullscreen,
        [Alias('rf','bg')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore focus to the window after initializing the service'
        )]
        [switch] $RestoreFocus,
        [Alias('sbs')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show the window side by side when initializing the service'
        )]
        [switch] $SideBySide,
        [Alias('fw','focus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the window after initializing the service'
        )]
        [switch] $FocusWindow,
        [Alias('fg')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the window to foreground after initializing the service'
        )]
        [switch] $SetForeground,
        [Alias('Escape')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Send Escape key to the window after initializing the service'
        )]
        [switch] $SendKeyEscape,
        [Alias('HoldKeyboardFocus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hold keyboard focus when sending keys after initializing the service'
        )]
        [switch] $SendKeyHoldKeyboardFocus,
        [Alias('UseShiftEnter')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Shift+Enter when sending keys after initializing the service'
        )]
        [switch] $SendKeyUseShiftEnter,
        [Alias('DelayMilliSeconds')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Delay in milliseconds when sending keys after initializing the service'
        )]
        [int] $SendKeyDelayMilliSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use session only for the WireGuard service'
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear session when initializing the service'
        )]
        [switch] $ClearSession,
        [Alias('FromPreferences')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Skip session when initializing the service'
        )]
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Generate QR code for easy mobile setup')
        )]
        [switch] $ShowQRCode,
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
        [switch] $Force
    )

    begin {

        # ensure the wireguard service is running unless explicitly skipped
        if (-not $NoDockerInitialize) {

            # log verbose message about ensuring service availability
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Ensuring WireGuard service is available'

            # copy matching parameters to pass to ensurewireguard function
            $ensureParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\EnsureWireGuard' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

            # initialize wireguard service with specified parameters
            $null = GenXdev\EnsureWireGuard @ensureParams
        }
        else {

            # log verbose message about skipping docker initialization
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Skipping Docker initialization as requested'
        }

        # define helper function to validate peer name format and constraints
        function TestPeerNameFormat {

            param([string]$peerName)

            # check for null or whitespace peer name
            if ([string]::IsNullOrWhiteSpace($peerName)) {
                throw 'Peer name cannot be empty or whitespace'
            }

            # check for peer name length exceeding maximum allowed
            if ($peerName.Length -gt 100) {
                throw ('Peer name is too long. Maximum length is 100 ' +
                    'characters')
            }

            # define list of characters that are invalid for peer names
            $invalidChars = @('<', '>', '"', '/', '\', '|', '?', '*', ':')

            # check each character in peer name for invalid characters
            foreach ($char in $invalidChars) {

                # throw error if invalid character is found
                if ($peerName.Contains($char)) {
                    throw "Peer name contains invalid character '$char'"
                }
            }

            return $true
        }

        # define helper function to check if peer configuration already exists
        function TestPeerExist {

            param([string]$peerName)

            try {

                # determine peer id format (peer_<name> for named peers)
                $peerId = "peer_${peerName}"

                # check if peer directory exists in container
                $peerExists = docker exec $ContainerName sh -c `
                    "test -d /config/$peerId && echo 'exists' || echo 'not found'"

                # check if main server config exists and contains peer reference
                $serverConfigExists = docker exec $ContainerName sh -c `
                    "test -f /config/wg_confs/wg0.conf && echo 'exists' || echo 'not found'"

                if ($serverConfigExists -eq 'exists') {
                    $peerInConfig = docker exec $ContainerName sh -c `
                        "grep -q '# $peerId' /config/wg_confs/wg0.conf && echo 'found' || echo 'not found'"

                    return ($peerExists -eq 'exists' -or $peerInConfig -eq 'found')
                }

                return ($peerExists -eq 'exists')
            }
            catch {

                # log warning if unable to verify peer existence
                Microsoft.PowerShell.Utility\Write-Warning `
                    "Unable to verify peer existence: $_"

                # proceed with creation attempt if verification fails
                return $false
            }
        }

        # define helper function to ensure server configuration exists
        function EnsureServerConfig {

            try {
                # check if server config exists
                $serverConfigExists = docker exec $ContainerName sh -c `
                    "test -f /config/wg_confs/wg0.conf && echo 'exists' || echo 'not found'"

                if ($serverConfigExists -eq 'not found') {
                    # create server keys if they don't exist
                    docker exec $ContainerName sh -c `
                        "mkdir -p /config/server"

                    docker exec $ContainerName sh -c `
                        "wg genkey | tee /config/server/privatekey-server | wg pubkey > /config/server/publickey-server"

                    # set permissions on server keys
                    docker exec $ContainerName sh -c `
                        "chmod 600 /config/server/privatekey-server /config/server/publickey-server"

                    # create basic server configuration
                    $serverConfig = @"
[Interface]
Address = 10.13.13.1/24
ListenPort = $ServicePort
PrivateKey = $(docker exec $ContainerName sh -c "cat /config/server/privatekey-server")
PostUp = iptables -A FORWARD -i %i -j ACCEPT; iptables -A FORWARD -o %i -j ACCEPT; iptables -t nat -A POSTROUTING -o eth+ -j MASQUERADE
PostDown = iptables -D FORWARD -i %i -j ACCEPT; iptables -D FORWARD -o %i -j ACCEPT; iptables -t nat -D POSTROUTING -o eth+ -j MASQUERADE
"@

                    # clean up server config for Unix compatibility
                    $serverConfig = $serverConfig -replace "`r`n", "`n"
                    $serverConfig = $serverConfig.Trim()

                    # escape special characters in server config
                    $escapedConfig = $serverConfig -replace "'", "'\\''" -replace '\$', '\\$' -replace '\\', '\\\\'

                    # write server config to container
                    docker exec $ContainerName sh -c `
                        "echo '$escapedConfig' > /config/wg_confs/wg0.conf && chmod 600 /config/wg_confs/wg0.conf"

                    # restart wireguard interface
                    docker exec $ContainerName sh -c `
                        "wg-quick down wg0 2>/dev/null || true; wg-quick up wg0"
                }

                return $true
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Warning `
                    "Failed to ensure server configuration: $_"
                return $false
            }
        }

        # define helper function to get next available IP address
        function GetNextClientIP {

            try {
                # get existing client IPs from server config
                $existingIPs = docker exec $ContainerName sh -c `
                    "grep -o '10\.13\.13\.[0-9]\+' /config/wg_confs/wg0.conf || true"

                # find next available IP (starting from 10.13.13.2)
                for ($i = 2; $i -le 254; $i++) {
                    $testIP = "10.13.13.$i"
                    if ($existingIPs -notcontains $testIP) {
                        return $testIP
                    }
                }

                throw "No available IP addresses in range 10.13.13.2-254"
            }
            catch {
                throw "Failed to determine next client IP: $_"
            }
        }
    }

    process {

        try {

            # validate peer name format using helper function
            TestPeerNameFormat -peerName $PeerName

            # check if peer already exists using helper function
            if (TestPeerExist -peerName $PeerName) {
                throw "A peer with name '$PeerName' already exists"
            }

            # ensure server configuration exists
            if (-not (EnsureServerConfig)) {
                throw "Failed to ensure WireGuard server configuration"
            }

            # ask for confirmation before creating the peer
            if ($PSCmdlet.ShouldProcess("WireGuard peer '$PeerName'",
                    'Add peer')) {

                # log verbose message about adding new peer
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Adding new WireGuard peer: $PeerName"

                # determine peer ID and get next available IP
                $peerId = "peer_${PeerName}"
                $clientIP = GetNextClientIP
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Assigned IP: $clientIP for peer $PeerName"

                # create peer directory in container
                docker exec $ContainerName sh -c `
                    "mkdir -p /config/$peerId"

                # generate peer keys
                docker exec $ContainerName sh -c `
                    "wg genkey | tee /config/$peerId/privatekey-$peerId | wg pubkey > /config/$peerId/publickey-$peerId"

                # set permissions on peer keys
                docker exec $ContainerName sh -c `
                    "chmod 600 /config/$peerId/privatekey-$peerId /config/$peerId/publickey-$peerId"

                # generate preshared key
                docker exec $ContainerName sh -c `
                    "wg genpsk > /config/$peerId/presharedkey-$peerId"

                # set permissions on preshared key
                docker exec $ContainerName sh -c `
                    "chmod 600 /config/$peerId/presharedkey-$peerId"

                # get server public key
                $serverPublicKey = docker exec $ContainerName sh -c `
                    "cat /config/server/publickey-server"

                # get peer public key
                $peerPublicKey = docker exec $ContainerName sh -c `
                    "cat /config/$peerId/publickey-$peerId"

                # get external IP for endpoint
                try {
                    $externalIP = Microsoft.PowerShell.Utility\Invoke-RestMethod `
                        -Verbose:$false `
                        -ProgressAction Continue `
                        -Uri "https://api.ipify.org" `
                        -TimeoutSec 10
                } catch {
                    $externalIP = "YOUR_SERVER_IP"
                    Microsoft.PowerShell.Utility\Write-Warning `
                        "Could not determine external IP address. Please replace YOUR_SERVER_IP in the configuration."
                }

                # create peer configuration file
                $peerConfig = @"
[Interface]
Address = $clientIP/24
PrivateKey = $(docker exec $ContainerName sh -c "cat /config/$peerId/privatekey-$peerId")
DNS = $DNS

[Peer]
PublicKey = $serverPublicKey
PresharedKey = $(docker exec $ContainerName sh -c "cat /config/$peerId/presharedkey-$peerId")
Endpoint = ${externalIP}:$ServicePort
AllowedIPs = $AllowedIPs
"@

                # clean up peer config for Unix compatibility
                $peerConfig = $peerConfig -replace "`r`n", "`n"
                $peerConfig = $peerConfig.Trim()

                # escape special characters in peer config
                $escapedConfig = $peerConfig -replace "'", "'\\''" -replace '\$', '\\$' -replace '\\', '\\\\'

                # save peer configuration in container
                docker exec $ContainerName sh -c `
                    "echo -n '$escapedConfig' > /config/$peerId/$peerId.conf && chmod 600 /config/$peerId/$peerId.conf"

                # create peer section for server configuration
                $peerSection = @"

# $peerId
[Peer]
PublicKey = $peerPublicKey
PresharedKey = $(docker exec $ContainerName sh -c "cat /config/$peerId/presharedkey-$peerId")
AllowedIPs = $clientIP/32
"@

                # clean up peer section for Unix compatibility
                $peerSection = $peerSection -replace "`r`n", "`n"
                $peerSection = $peerSection.Trim()

                # escape special characters in peer section
                $escapedSection = $peerSection -replace "'", "'\\''" -replace '\$', '\\$' -replace '\\', '\\\\'

                # append peer to server config
                docker exec $ContainerName sh -c `
                    "echo '$escapedSection' >> /config/wg_confs/wg0.conf && chmod 600 /config/wg_confs/wg0.conf"

                # verify peer section was added
                $peerInConfig = docker exec $ContainerName sh -c `
                    "grep -q '# $peerId' /config/wg_confs/wg0.conf && echo 'found' || echo 'not found'"
                if ($peerInConfig -ne 'found') {
                    throw "Failed to verify peer '$PeerName' in server configuration"
                }

                # restart wireguard to apply changes
                docker exec $ContainerName sh -c `
                    "wg-quick down wg0 2>/dev/null || true; wg-quick up wg0"

                # check if peer creation was successful
                if ($LASTEXITCODE -ne 0) {
                    throw "Failed to restart WireGuard with new peer configuration"
                }

                # log verbose message about successful peer addition
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Peer $PeerName added successfully with IP $clientIP"

                # verify configurations
                Microsoft.PowerShell.Utility\Write-Verbose "Generated peer configuration:`n$peerConfig"
                docker exec $ContainerName cat /config/$peerId/$peerId.conf | Microsoft.PowerShell.Utility\Write-Verbose
                Microsoft.PowerShell.Utility\Write-Verbose "Updated server configuration:`n$peerSection"
                docker exec $ContainerName cat /config/wg_confs/wg0.conf | Microsoft.PowerShell.Utility\Write-Verbose

                # save configuration to file if requested by user
                if ($SaveConfig) {

                    # ask for confirmation before saving configuration file
                    if ($PSCmdlet.ShouldProcess(
                            "Configuration file for peer '$PeerName'",
                            "Save to $OutputPath")) {

                        # create output directory if it doesn't exist
                        if (-not (Microsoft.PowerShell.Management\Test-Path `
                                    -LiteralPath $OutputPath)) {

                            # create directory with force flag to create parent dirs
                            $null = Microsoft.PowerShell.Management\New-Item `
                                -ItemType Directory `
                                -Path $OutputPath `
                                -Force
                        }

                        # build full path for configuration file
                        $configFile = Microsoft.PowerShell.Management\Join-Path `
                            -Path $OutputPath `
                            -ChildPath "$PeerName.conf"

                        # write peer configuration to file with utf8 encoding
                        $peerConfig | Microsoft.PowerShell.Utility\Out-File `
                            -FilePath $configFile `
                            -Encoding utf8 `
                            -Force

                        # set permissions on local config file
                        if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $configFile) {
                            $acl = Microsoft.PowerShell.Security\Get-Acl $configFile
                            $acl.SetAccessRuleProtection($true, $false)
                            $rule = Microsoft.PowerShell.Utility\New-Object System.Security.AccessControl.FileSystemAccessRule(
                                [System.Security.Principal.WindowsIdentity]::GetCurrent().Name,
                                "FullControl",
                                "Allow"
                            )
                            $acl.SetAccessRule($rule)
                            Microsoft.PowerShell.Security\Set-Acl $configFile $acl
                        }

                        # display success message with configuration file location
                        Microsoft.PowerShell.Utility\Write-Host `
                            -ForegroundColor Green `
                            "Peer configuration saved to: $configFile"
                    }
                }

                # show qr code if requested by user
                if ($ShowQRCode) {

                   $params = GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $PSBoundParameters `
                    -FunctionName "GenXdev\Get-WireGuardPeerQRCode" `
                    -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                        -Scope Local `
                        -ErrorAction SilentlyContinue)

                    GenXdev\Get-WireGuardPeerQRCode @params
                }

                # create hash table with peer details for return object
                $peerDetails = @{
                    PeerName          = $PeerName
                    ClientIP          = $clientIP
                    Configuration     = $peerConfig
                    ConfigurationPath = if ($SaveConfig) { $configFile } else { $null }
                    QRCodeGenerated   = $ShowQRCode
                }

                # return peer details as powershell custom object
                return [PSCustomObject]$peerDetails
            }
        }
        catch [System.Net.WebException] {

            # log error for network-related exceptions
            Microsoft.PowerShell.Utility\Write-Error `
                "Network error when adding WireGuard peer: $_"
            throw
        }
        catch [System.TimeoutException] {

            # log error for timeout-related exceptions
            Microsoft.PowerShell.Utility\Write-Error `
                "Timeout when adding WireGuard peer: $_"
            throw
        }
        catch {

            # log error for all other exceptions
            Microsoft.PowerShell.Utility\Write-Error `
                "Failed to add WireGuard peer: $_"
            throw
        }
    }

    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows.WireGuard
Original cmdlet filename  : EnsureWireGuard.ps1
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
Ensures WireGuard VPN service is installed and running via Docker container.

.DESCRIPTION
This function sets up and manages the WireGuard VPN service using Docker
Desktop. It automatically ensures Docker Desktop is running, pulls the latest
WireGuard Docker image, creates persistent storage volumes, and manages the
container lifecycle including health monitoring and restart capabilities.

WireGuard is a simple, fast, and modern VPN that utilizes state-of-the-art
cryptography. It offers superior performance and simplicity compared to
traditional VPN solutions like OpenVPN, with minimal configuration overhead
and excellent cross-platform support.

.PARAMETER ContainerName
The name for the Docker container. Default: "wireguard"

.PARAMETER VolumeName
The name for the Docker volume for persistent storage of configuration files
and client certificates. Default: "wireguard_data"

.PARAMETER ServicePort
The UDP port number for the WireGuard service to listen on. Must be between
1-65535. Default: 51839

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check before timing out.
Must be between 10-300 seconds. Default: 60

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts during startup validation.
Must be between 1-10 seconds. Default: 3

.PARAMETER ImageName
Custom Docker image name to use instead of the default. If not specified,
uses the official "linuxserver/wireguard" image from Docker Hub.

.PARAMETER PUID
User ID for file permissions inside the container. Should match your host
system user ID for proper file access. Default: "1000"

.PARAMETER PGID
Group ID for file permissions inside the container. Should match your host
system group ID for proper file access. Default: "1000"

.PARAMETER TimeZone
Timezone identifier to use for container logging and timestamps. Uses standard
timezone database format. Default: "Etc/UTC"

.PARAMETER Force
Forces complete rebuilding of Docker container and removes all existing data.
This will stop and remove existing containers and volumes, pull the latest
WireGuard image, and create a fresh container with clean configuration.

.EXAMPLE
EnsureWireGuard

.EXAMPLE
EnsureWireGuard -ContainerName "my_wireguard" -ServicePort 51821

.EXAMPLE
EnsureWireGuard -VolumeName "custom_vpn_data" -HealthCheckTimeout 120

.EXAMPLE
EnsureWireGuard -PUID 1001 -PGID 1001 -TimeZone "America/New_York"

.EXAMPLE
EnsureWireGuard -Force

.NOTES
To generate client configurations after setup:
- Run: docker exec -it wireguard /app/show-peer 1

For Android 10 and above:
- Install the official WireGuard app from Google Play Store
- Scan the QR code or import the config file to connect

For more information, see: https://www.wireguard.com/
###############################################################################>
function EnsureWireGuard {

    [CmdletBinding()]
    [OutputType([System.Boolean])]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'wireguard',
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = ('The name for the Docker volume for persistent ' +
                'storage')
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'wireguard_data',
        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'The port number for the WireGuard service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 51839,
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
            HelpMessage = 'Interval in seconds between health check attempts'
        )]
        [ValidateRange(1, 10)]
        [int] $HealthCheckInterval = 3,
        [Parameter(
            Position = 5,
            Mandatory = $false,
            HelpMessage = 'Custom Docker image name to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImageName = 'linuxserver/wireguard',
        [Parameter(
            Position = 6,
            Mandatory = $false,
            HelpMessage = 'User ID for permissions in the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PUID = '1000',
        [Parameter(
            Position = 7,
            Mandatory = $false,
            HelpMessage = 'Group ID for permissions in the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PGID = '1000',
        [Parameter(
            Position = 8,
            Mandatory = $false,
            HelpMessage = 'Timezone to use for the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $TimeZone = 'Etc/UTC',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show Docker Desktop window during initialization'
        )]
        [switch] $ShowWindow,
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
        [int] $Width = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial height of the window'
        )]
        [int] $Height = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the left side of the screen'
        )]
        [switch] $Left,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the right side of the screen'
        )]
        [switch] $Right,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the bottom side of the screen'
        )]
        [switch] $Bottom,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window in the center of the screen'
        )]
        [switch] $Centered,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximize the window'
        )]
        [Alias('fs')]
        [switch] $Fullscreen,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore PowerShell window focus'
        )]
        [Alias('rf', 'bg')]
        [switch] $RestoreFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Will either set the window fullscreen on a ' +
                'different monitor than Powershell, or side by side with ' +
                'Powershell on the same monitor')
        )]
        [Alias('sbs')]
        [switch] $SideBySide,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the window after opening'
        )]
        [Alias('fw','focus')]
        [switch] $FocusWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the window to foreground after opening'
        )]
        [Alias('fg')]
        [switch] $SetForeground,
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
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for ' +
                'AI preferences')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Store settings only in persistent preferences ' +
                'without affecting session')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force rebuild of Docker container and remove ' +
                'existing data')
        )]
        [Alias('ForceRebuild')]
        [switch] $Force
    )    begin {

        # set script-scoped variables from parameters for container management
    $script:wireguardContainerName = $ContainerName

    # set docker image name for pulling and container creation
    $script:wireguardImageName = $ImageName

    # set script-scoped variables for docker volume and networking
    $script:wireguardVolumeName = $VolumeName

    # set script-scoped variables for service configuration
    $script:wireguardServicePort = $ServicePort

    # set script-scoped variables for health monitoring timeouts
    $script:wireguardHealthCheckTimeout = $HealthCheckTimeout

    # set script-scoped variable for health check retry intervals
    $script:wireguardHealthCheckInterval = $HealthCheckInterval

    # set script-scoped variables for container environment settings
    $script:wireguardPuid = $PUID

    $script:wireguardPgid = $PGID

    $script:wireguardTimezone = $TimeZone

    # store original location for cleanup at the end of the function
    $script:wireguardOriginalLocation = (Microsoft.PowerShell.Management\Get-Location).Path

        <#
        .SYNOPSIS
        Tests if Docker is available and responsive to commands.

        .DESCRIPTION
        Verifies Docker Desktop is running by attempting to query the Docker
        version. Returns true if Docker responds successfully, false otherwise.
        #>
        function Test-DockerAvailability {

            try {

                # attempt to get docker version to verify docker is running
                $null = docker version --format '{{.Server.Version}}' 2>$null

                return $LASTEXITCODE -eq 0
            }
            catch {

                return $false
            }
        }
        <#
        .SYNOPSIS
        Tests if a Docker image exists locally.

        .DESCRIPTION
        Queries Docker for the existence of a specific image by name. Returns
        true if the image is found locally, false if not found or on error.

        .PARAMETER ImageName
        The Docker image name to search for in the local image repository.
        #>
        function Test-DockerImage {

            param([string]$ImageName)

            try {

                # query docker for existing images matching the specified name
                $images = docker images $ImageName --format '{{.Repository}}' `
                    2>$null

                return -not [string]::IsNullOrWhiteSpace($images)
            }
            catch {

                return $false
            }
        }
        <#
        .SYNOPSIS
        Tests if a Docker container exists (running or stopped).

        .DESCRIPTION
        Searches for a Docker container by exact name match, including both
        running and stopped containers. Returns true if found, false otherwise.

        .PARAMETER ContainerName
        The exact container name to search for in Docker container list.
        #>
        function Test-DockerContainer {

            param([string]$ContainerName)

            try {

                # search for containers with exact name match including stopped ones
                $containers = docker ps -a --filter "name=^${ContainerName}$" `
                    --format '{{.ID}}' 2>$null

                return -not [string]::IsNullOrWhiteSpace($containers)
            }
            catch {

                return $false
            }
        }
        <#
        .SYNOPSIS
        Tests if a Docker container is currently running.

        .DESCRIPTION
        Checks specifically for running containers with the given name. Returns
        true if the container exists and is actively running, false otherwise.

        .PARAMETER ContainerName
        The exact container name to check for running status.
        #>
        function Test-DockerContainerRunning {

            param([string]$ContainerName)

            try {

                # search for running containers with exact name match
                $containers = docker ps --filter "name=^${ContainerName}$" `
                    --format '{{.ID}}' 2>$null

                return -not [string]::IsNullOrWhiteSpace($containers)
            }
            catch {

                return $false
            }
        }
        <#
        .SYNOPSIS
        Safely removes a Docker container with proper error handling.

        .DESCRIPTION
        Stops and removes a Docker container if it exists. Uses ShouldProcess
        for confirmation and provides verbose logging. Handles errors gracefully
        without throwing exceptions.

        .PARAMETER ContainerName
        The name of the container to stop and remove from Docker.
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

                        # stop the container gracefully before removal
                        $null = docker stop $ContainerName 2>$null

                        # remove the container completely from docker
                        $null = docker rm $ContainerName 2>$null
                    }
                }
            }
            catch {

                # warn about container removal failures without throwing
                Microsoft.PowerShell.Utility\Write-Warning `
                    "Failed to remove container ${ContainerName}: $_"
            }
        }
        <#
        .SYNOPSIS
        Safely removes a Docker volume with proper error handling.

        .DESCRIPTION
        Removes a Docker volume if it exists. Uses ShouldProcess for
        confirmation and provides verbose logging. Handles errors gracefully
        without throwing exceptions.

        .PARAMETER VolumeName
        The name of the Docker volume to remove from the system.
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
            }
            catch {

                # warn about volume removal failures without throwing
                Microsoft.PowerShell.Utility\Write-Warning `
                    "Failed to remove volume ${VolumeName}: $_"
            }
        }
        <#
        .SYNOPSIS
        Tests if the WireGuard service is healthy and responding.

        .DESCRIPTION
        Performs health checks on the WireGuard container by examining container
        logs for startup indicators and checking if the service port is
        listening. Returns true if healthy, false otherwise.
        #>
        function Test-ServiceHealth {
            [CmdletBinding()]
            [OutputType([System.Boolean])]
            param()
            try {

                # first check if container is running before health tests
                $containerRunning = Test-DockerContainerRunning `
                    $script:wireguardContainerName

                if (-not $containerRunning) {

                    return $false
                }

                # check container logs for successful startup messages
                $logs = docker logs $script:wireguardContainerName 2>&1

                # look for indications that wireguard is running properly
                # linuxserver/wireguard outputs these specific messages when ready
                if ($logs -match 'All tunnels are now active' -or
                    $logs -match '\[ls\.io-init\] done\.' -or
                    $logs -match 'ip link add wg0 type wireguard') {

                    # log successful health check for debugging
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        'WireGuard service health check passed'

                    return $true
                }

                # alternatively check if the port is listening using netstat
                $netstatOutput = & netstat -an |
                    Microsoft.PowerShell.Utility\Select-String `
                        -Pattern ":$($script:wireguardServicePort) "

                if (-not [string]::IsNullOrEmpty($netstatOutput)) {

                    # log successful health check for debugging
                    Microsoft.PowerShell.Utility\Write-Verbose `
                    ('WireGuard service health check passed ' +
                        '(port is listening)')

                    return $true
                }

                return $false
            }
            catch {

                # log failed health check with error details for debugging
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "WireGuard service health check failed: $_"

                return $false
            }
        }
        <#
        .SYNOPSIS
        Waits for the WireGuard service to become healthy and ready.

        .DESCRIPTION
        Repeatedly checks service health until it becomes ready or timeout is
        reached. Uses configurable timeout and interval settings for retry
        logic. Returns true if service becomes ready, false on timeout.
        #>
        function Wait-ServiceReady {
            [CmdletBinding()]
            [OutputType([System.Boolean])]
            param()
            # output verbose information about waiting for service readiness
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Waiting for WireGuard service to become ready...'

            # initialize retry counter for health check attempts
            $retryCount = 0

            # calculate maximum retry attempts based on timeout and interval
        $maxRetries = [math]::Floor($script:wireguardHealthCheckTimeout / `
            $script:wireguardHealthCheckInterval)

            while ($retryCount -lt $maxRetries) {

                # test service health and return success if ready
                if (Test-ServiceHealth) {

                    # log successful service readiness
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        'WireGuard service is ready and responding'

                    return $true
                }

                # increment retry counter for next attempt
                $retryCount++

                # output verbose information about retry attempt progress
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Service not ready yet, attempt $retryCount/$maxRetries..."

                # wait between health check attempts as configured
                Microsoft.PowerShell.Utility\Start-Sleep `
                    -Seconds $script:wireguardHealthCheckInterval
            }

            # warn about service readiness timeout after all retries
            Microsoft.PowerShell.Utility\Write-Warning `
            ('WireGuard service did not become ready within ' +
                "$script:wireguardHealthCheckTimeout seconds")

            return $false
        }
        <#
        .SYNOPSIS
        Gets a list of existing WireGuard peer from the container.

        .DESCRIPTION
        Queries the WireGuard container for existing peer configurations by
        examining the /config directory structure. Returns an array of peer
        names found in the container.
        #>
        function Get-ExistingPeer {
            try {
                # list peer directories in the container's config folder
                $peerDirs = docker exec $script:wireguardContainerName sh -c "ls -d /config/peer_* 2>/dev/null | grep -o 'peer_[^/]*' | sed 's/peer_//'" 2>$null
                if ($LASTEXITCODE -eq 0 -and -not [string]::IsNullOrWhiteSpace($peerDirs)) {
                    # split the output into individual peer names
                    $peers = $peerDirs -split "`n" |
                        Microsoft.PowerShell.Core\Where-Object { -not [string]::IsNullOrWhiteSpace($_) } |
                        Microsoft.PowerShell.Core\ForEach-Object { $_.Trim() }
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        "Found existing peer: $($peers -join ', ')"
                    return $peers
                }
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'No existing peer found'
                return @()
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Warning `
                    "Failed to get existing peer: $_"
                return @()
            }
        }
        <#
        .SYNOPSIS
        Checks the status of a WireGuard peer and activates it if inactive.

        .DESCRIPTION
        Uses the container's /app/show-peer script to check peer status and
        attempts to activate inactive peers by restarting the WireGuard service
        or reloading the configuration files.

        .PARAMETER PeerName
        The name of the peer to check and potentially activate.
        #>
        function Enable-PeerIfNeeded {
            [CmdletBinding()]
            [OutputType([System.Boolean])]

            param([string]$PeerName)

            try {

                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Checking status of peer: $PeerName"

                # check peer status using container's show-peer script
                $peerStatus = docker exec $script:wireguardContainerName /app/show-peer $PeerName 2>&1

                # check if peer is marked as inactive
                if ($peerStatus -match 'is not active') {

                    Microsoft.PowerShell.Utility\Write-Verbose `
                        "Peer '$PeerName' is inactive, attempting to activate..."

                    # try multiple approaches to activate the peer

                    # approach 1: restart the entire container to reload all configs
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        "Restarting WireGuard container to reload configurations..."

                    docker restart $script:wireguardContainerName 2>&1

                    if ($LASTEXITCODE -eq 0) {

                        # wait for container to fully restart
                        Microsoft.PowerShell.Utility\Start-Sleep -Seconds 15

                        # wait for service to become ready after restart
                        $serviceReady = Wait-ServiceReady

                        if ($serviceReady) {

                            # check peer status again after container restart
                            $newStatus = docker exec $script:wireguardContainerName /app/show-peer $PeerName 2>&1

                            if ($newStatus -notmatch 'is not active') {

                                Microsoft.PowerShell.Utility\Write-Verbose `
                                    "✅ Peer '$PeerName' is now active after container restart"

                                return $true
                            }
                        }
                    }

                    Microsoft.PowerShell.Utility\Write-Warning `
                        ("Peer '$PeerName' appears to be configured but inactive. " +
                         "This may be normal for peers that haven't connected yet, " +
                         "or the peer configuration may need to be regenerated.")

                    return $false
                }
                else {

                    Microsoft.PowerShell.Utility\Write-Verbose `
                        "✅ Peer '$PeerName' status check completed"

                    return $true
                }
            }
            catch {

                Microsoft.PowerShell.Utility\Write-Warning `
                    "Failed to check/activate peer '${PeerName}': $_"

                return $false
            }
        }
        <#
        .SYNOPSIS
        Resets the WireGuard server configuration to include all existing peer.

        .DESCRIPTION
        This function resets the main WireGuard server configuration file
        (/config/wg_confs/wg0.conf) to include all peer configurations found
        in the persistent storage, then restarts the WireGuard interface.
        #>
        function Reset-WireGuardConfiguration {
            [CmdletBinding(SupportsShouldProcess)]
            [OutputType([System.Boolean])]
            param()
            try {
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Resetting WireGuard configuration to include all existing peer..."
                # get list of existing peer
                $existingPeer = Get-ExistingPeer
                if ($existingPeer.Count -eq 0) {
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        'No peer to add to configuration'
                    return $true
                }
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Found $($existingPeer.Count) peer(s) to include in configuration"
                # read the current server configuration
                $serverConfig = docker exec $script:wireguardContainerName cat /config/wg_confs/wg0.conf 2>$null
                if ($LASTEXITCODE -ne 0) {
                    Microsoft.PowerShell.Utility\Write-Warning "Could not read server configuration"
                    return $false
                }
                # split into server section and peer sections
                $configLines = $serverConfig -split "`n"
                $serverSection = @()
                foreach ($line in $configLines) {
                    if ($line.Trim() -match '^\[Peer\]') {
                        break
                    }
                    $serverSection += $line
                }
                # build new configuration with all existing peer
                $newConfig = $serverSection -join "`n"
                foreach ($peerName in $existingPeer) {
                    # read peer configuration
                    $peerConfigPath = "/config/peer_$peerName/peer_$peerName.conf"
                    $peerConfig = docker exec $script:wireguardContainerName cat $peerConfigPath 2>$null
                    if ($LASTEXITCODE -eq 0 -and -not [string]::IsNullOrWhiteSpace($peerConfig)) {
                        # extract peer public key and allowed IPs for server config
                        $publicKey = $null
                        $allowedIPs = $null
                        foreach ($line in $peerConfig -split "`n") {
                            if ($line -match '^PublicKey\s*=\s*(.+)$') {
                                $publicKey = $matches[1].Trim()
                            }
                            elseif ($line -match '^Address\s*=\s*(.+)$') {
                                $allowedIPs = $matches[1].Trim()
                            }
                        }
                        if ($publicKey -and $allowedIPs) {
                            Microsoft.PowerShell.Utility\Write-Verbose `
                                "Adding peer '$peerName' to server configuration"
                            $newConfig += "`n`n[Peer]"
                            $newConfig += "`nPublicKey = $publicKey"
                            $newConfig += "`nAllowedIPs = $allowedIPs"
                        }
                    }
                }
                # write the new configuration
                $tempConfigPath = "/tmp/wg0_rebuilt.conf"
                docker exec $script:wireguardContainerName sh -c "cat > $tempConfigPath << 'EOL'`n$newConfig`nEOL"
                if ($LASTEXITCODE -eq 0) {
                    # backup current config and replace with new one
                    docker exec $script:wireguardContainerName cp /config/wg_confs/wg0.conf /config/wg_confs/wg0.conf.backup 2>$null
                    docker exec $script:wireguardContainerName cp $tempConfigPath /config/wg_confs/wg0.conf
                    if ($LASTEXITCODE -eq 0) {
                        Microsoft.PowerShell.Utility\Write-Verbose `
                            "Successfully reset WireGuard configuration"
                        # restart WireGuard interface
                        docker exec $script:wireguardContainerName wg-quick down wg0 2>$null
                        docker exec $script:wireguardContainerName wg-quick up wg0 2>$null
                        if ($LASTEXITCODE -eq 0) {
                            Microsoft.PowerShell.Utility\Write-Verbose `
                                "✅ WireGuard interface restarted with new configuration"
                            return $true
                        }
                    }
                }
                Microsoft.PowerShell.Utility\Write-Warning `
                    "Failed to reset WireGuard configuration"
                return $false
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Warning `
                    "Error resetting WireGuard configuration: $_"
                return $false
            }
        }
        <#
        .SYNOPSIS
        Ensures all existing peer are active and operational.

        .DESCRIPTION
        Scans for existing peer configurations and ensures they are all
        properly loaded and active in the WireGuard interface. If inactive
        peer are found, resets the WireGuard configuration to include them.
        #>
        function Confirm-AllPeerActive {
             [CmdletBinding()]
            [OutputType([System.Boolean])]
            param()
            try {
                # get list of existing peer from container
                $existingPeer = Get-ExistingPeer
                if ($existingPeer.Count -eq 0) {
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        'No existing peer to validate'
                    return $true
                }
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Validating $($existingPeer.Count) existing peer(s)..."
                $inactivePeerFound = $false
                # check each peer's status
                foreach ($peer in $existingPeer) {
                    $peerActive = Enable-PeerIfNeeded -PeerName $peer
                    if (-not $peerActive) {
                        $inactivePeerFound = $true
                    }
                }
                # if inactive peer were found, reset the configuration
                if ($inactivePeerFound) {
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        'Inactive peer detected - resetting WireGuard configuration...'
                    $resetSuccessful = GenXdev\Reset-WireGuardConfiguration
                    if ($resetSuccessful) {
                        Microsoft.PowerShell.Utility\Write-Verbose `
                            '✅ WireGuard configuration reset successfully'
                        # wait for interface to stabilize
                        Microsoft.PowerShell.Utility\Start-Sleep -Seconds 5
                        # verify peer are now active
                        foreach ($peer in $existingPeer) {
                            $peerStatus = docker exec $script:wireguardContainerName /app/show-peer $peer 2>&1
                            if ($peerStatus -match 'is not active') {
                                Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Yellow `
                                    "ℹ️  Peer '$peer' still shows as inactive (normal for clients that haven't connected)"
                            }
                            else {
                                Microsoft.PowerShell.Utility\Write-Verbose `
                                    "✅ Peer '$peer' is now properly configured"
                            }
                        }
                        Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Green `
                            '✅ All existing peer configurations have been restored to WireGuard interface'
                    }
                    else {
                        Microsoft.PowerShell.Utility\Write-Warning `
                            'Failed to reset WireGuard configuration - some peer may remain inactive'
                    }
                }
                else {
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        '✅ All existing peer have been validated'
                }
                # always return true since the configuration has been reset
                return $true
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Warning `
                    "Failed to validate peer: $_"
                return $false
            }
        }
        <#
        .SYNOPSIS
        Pulls the latest WireGuard Docker image from registry.

        .DESCRIPTION
        Downloads the specified WireGuard Docker image from Docker Hub or
        configured registry. Provides verbose logging and error handling.
        Returns true on success, false on failure.
        #>
        function Get-WireGuardImage {
            [CmdletBinding()]
            [OutputType([System.Boolean])]
            param()
            try {

                # output verbose information about docker image pull operation
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Pulling WireGuard image: $script:wireguardImageName"

                # pull the specified docker image from registry
                $pullResult = docker pull $script:wireguardImageName 2>&1

                # check if docker pull command failed
                if ($LASTEXITCODE -ne 0) {

                    throw "Failed to pull WireGuard image: $pullResult"
                }

                # log successful image pull completion
                Microsoft.PowerShell.Utility\Write-Verbose `
                    '✅ WireGuard image pulled successfully'

                return $true
            }
            catch {

                # log error details for image pull failure
                Microsoft.PowerShell.Utility\Write-Error `
                    "Failed to pull WireGuard image: $_"

                return $false
            }
        }
        <#
        .SYNOPSIS
        Creates and starts a new WireGuard Docker container.

        .DESCRIPTION
        Creates a new WireGuard container with proper configuration including
        networking capabilities, persistent volume mounting, environment
        variables, and restart policies. Uses ShouldProcess for confirmation.
        #>
        function New-WireGuardContainer {

            [CmdletBinding(SupportsShouldProcess)]
            [OutputType([System.Boolean])]
            param()

            try {

                # output verbose information about container creation process
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'Creating WireGuard container...'

                # check if docker volume already exists in the system
                $volumeExists = docker volume ls `
                    --filter "name=^${script:wireguardVolumeName}$" `
                    --format '{{.Name}}' 2>$null

                # create docker volume if it doesn't exist yet
                if ([string]::IsNullOrWhiteSpace($volumeExists)) {

                    # use shouldprocess to confirm volume creation
            if ($PSCmdlet.ShouldProcess("$script:wireguardVolumeName",
                'Create Docker volume')) {

                        # output verbose information about volume creation
                        Microsoft.PowerShell.Utility\Write-Verbose `
                            "Creating Docker volume: $script:wireguardVolumeName"

                        # create the docker volume for persistent storage
                        $volumeResult = docker volume create $script:wireguardVolumeName `
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
                    '--name', $script:wireguardContainerName
                    '--cap-add', 'NET_ADMIN'
                    '--cap-add', 'SYS_MODULE'
                    '-e', "PUID=$($script:wireguardPuid)"
                    '-e', "PGID=$($script:wireguardPgid)"
                    '-e', "TZ=$($script:wireguardTimezone)"
                    '-e', "SERVERURL=auto"
                    '-e', "SERVERPORT=$($script:wireguardServicePort)"
                    '-e', "PEERS=1"
                    '-e', "PEERDNS=auto"
                    '-e', "INTERNAL_SUBNET=10.13.13.0"
                    '-e', "ALLOWEDIPS=0.0.0.0/0",
                    '-e', "UPNP=on",
                    '-p', "$($script:wireguardServicePort):51839/udp"
                    '-v', "$($script:wireguardVolumeName):/config"
                    '--restart', 'unless-stopped'
                )

                # add the docker image name as final argument
                $dockerArgs += $script:wireguardImageName

                # output verbose information about docker command execution
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Docker command: docker $($dockerArgs -join ' ')"

                # use shouldprocess to confirm container creation
        if ($PSCmdlet.ShouldProcess("$script:wireguardContainerName",
            'Create WireGuard container')) {

                    # execute docker run command to create container
                    $result = & docker @dockerArgs 2>&1

                    # check if container creation failed
                    if ($LASTEXITCODE -ne 0) {

                        throw "Failed to create container: $result"
                    }
                }

                # wait for container to initialize properly after creation
                Microsoft.PowerShell.Utility\Start-Sleep -Seconds 5

                # log successful container creation
                Microsoft.PowerShell.Utility\Write-Verbose `
                    '✅ WireGuard container created successfully'

                return $true
            }
            catch {

                # log error details for container creation failure
                Microsoft.PowerShell.Utility\Write-Error `
                    "Failed to create WireGuard container: $_"

                return $false
            }
        }
    }

    process {

        try {

            # ensure docker desktop is available and running properly
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Ensuring Docker Desktop is available...'

            # Copy identical parameters between functions
            $params = GenXdev\Copy-IdenticalParamValues `
                -FunctionName 'GenXdev\EnsureDockerDesktop' `
                -BoundParameters $PSBoundParameters `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

            GenXdev\EnsureDockerDesktop @params

            # verify docker is responding to commands after ensuring it's running
            if (-not (Test-DockerAvailability)) {

                throw 'Docker is not available or not responding'
            }

            # handle force cleanup if requested by user for fresh installation
            if ($Force) {

                # output verbose information about forced cleanup process
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'Force flag specified - cleaning up existing resources...'

                # remove existing container and volume for clean slate
                Remove-DockerContainer $script:wireguardContainerName

                Remove-DockerVolume $script:wireguardVolumeName
            }

            # ensure we have the latest wireguard image available locally
            if (-not (Test-DockerImage $script:wireguardImageName) -or $Force) {

                # pull the docker image if not present or force specified
                if (-not (Get-WireGuardImage)) {

                    throw 'Failed to obtain WireGuard Docker image'
                }
            }
            else {

                # log that image is already available locally
                Microsoft.PowerShell.Utility\Write-Verbose `
                    '✅ WireGuard image already available'
            }

            # check current container state for appropriate action
            $containerExists = Test-DockerContainer $script:wireguardContainerName

            $containerRunning = Test-DockerContainerRunning $script:wireguardContainerName

            # handle existing container scenarios based on current state
            if ($containerExists) {

                # check if container is currently running
                if ($containerRunning) {

                    # verify container health for running container
                    if (Test-ServiceHealth) {

                        # log successful health check result
                        Microsoft.PowerShell.Utility\Write-Verbose `
                            '✅ WireGuard container is healthy and responding'
                    }
                    else {

                        # restart unhealthy running container to fix issues
                        Microsoft.PowerShell.Utility\Write-Verbose `
                        ('Container is running but not responding - ' +
                            'restarting...')

                        # restart the container to fix health issues
                        $null = docker restart $script:wireguardContainerName 2>$null

                        # wait for container to restart properly
                        Microsoft.PowerShell.Utility\Start-Sleep -Seconds 10

                        # wait for service to become ready after restart
                        $serviceReady = Wait-ServiceReady

                        # warn if service is not ready after restart attempt
                        if (-not $serviceReady) {

                            Microsoft.PowerShell.Utility\Write-Warning `
                            ('WireGuard service may not be fully ready ' +
                                'after restart')
                        }
                    }
                }
                else {

                    # start existing stopped container
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        'Starting existing container...'

                    # start the stopped container
                    $null = docker start $script:wireguardContainerName 2>$null

                    # wait for container to start properly
                    Microsoft.PowerShell.Utility\Start-Sleep -Seconds 10

                    # wait for service to become ready after start
                    $serviceReady = Wait-ServiceReady

                    # log or warn about service readiness after start
                    if ($serviceReady) {

                        Microsoft.PowerShell.Utility\Write-Verbose `
                            '✅ WireGuard service is ready after container start'
                    }
                    else {

                        Microsoft.PowerShell.Utility\Write-Warning `
                        ('WireGuard service may not be fully ready ' +
                            'after start')
                    }
                }
            }
            else {

                # create and start new container when none exists
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'No existing container found - creating fresh installation...'

                # clean up any existing volume for a fresh start
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'Removing any existing volumes for clean installation...'

                Remove-DockerVolume $script:wireguardVolumeName

                # attempt to create new wireguard container
                if (-not (New-WireGuardContainer)) {

                    throw 'Failed to create WireGuard container'
                }

                # wait for service to be ready after creation
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'Waiting for WireGuard service to be ready...'

                $serviceReady = Wait-ServiceReady

                # log or warn about service readiness after creation
                if ($serviceReady) {

                    Microsoft.PowerShell.Utility\Write-Verbose `
                        '✅ WireGuard service is ready'
                }
                else {

                    Microsoft.PowerShell.Utility\Write-Warning `
                    ('WireGuard service may not be fully ready ' +
                        'after creation')
                }
            }

            # perform final validation of service state before returning
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Performing final validation...'

            # check if container is running and service is healthy
            if ((Test-DockerContainerRunning $script:wireguardContainerName) -and `
                (Test-ServiceHealth)) {

                # only validate peers if container already existed (not fresh install)
                if ($containerExists) {
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        'Validating existing peer configurations...'
                    Confirm-AllPeerActive
                }

                # log successful service operation
                Microsoft.PowerShell.Utility\Write-Verbose `
                ('✅ WireGuard VPN service is fully ' +
                    "operational on port $script:wireguardServicePort")

                # display instructions for client configuration to user
                Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Green @"

To generate client configurations:
- Run: docker exec -it $script:wireguardContainerName /app/show-peer 1
This will display a QR code or config file for the client.

For Android 10 and above:
1. Install the official WireGuard app from Google Play Store
2. Scan the QR code or import the config file to connect
"@

                return $true
            }
            else {

                # warn about potential service issues
                Microsoft.PowerShell.Utility\Write-Warning `
                    'WireGuard service may not be fully operational'

                return $false
            }
        }
        catch {

            # log error details for any failures in the process
            Microsoft.PowerShell.Utility\Write-Error `
                "Failed to ensure WireGuard service: $_"

            throw
        }
    }

    end {

        Microsoft.PowerShell.Management\Set-Location -LiteralPath $script:wireguardOriginalLocation
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows.WireGuard
Original cmdlet filename  : Get-WireGuardPeerQRCode.ps1
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
Generates a QR code for a WireGuard VPN peer configuration.

.DESCRIPTION
This function generates a QR code for a WireGuard VPN peer configuration that
can be scanned by mobile devices for easy setup. The QR code is displayed in
the console and can be used to quickly configure WireGuard clients on
smartphones and tablets. The function interacts with the linuxserver/wireguard
Docker container to generate QR codes for peer configurations.

.PARAMETER PeerName
The name of the peer to generate a QR code for.

.PARAMETER NoDockerInitialize
Skip Docker initialization (used when already called by parent function).

.PARAMETER Force
Force rebuild of Docker container and remove existing data.

.PARAMETER ContainerName
The name for the Docker container.

.PARAMETER VolumeName
The name for the Docker volume for persistent storage.

.PARAMETER ServicePort
The port number for the WireGuard service.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts.

.PARAMETER ImageName
Custom Docker image name to use.

.PARAMETER PUID
User ID for permissions in the container.

.PARAMETER PGID
Group ID for permissions in the container.

.PARAMETER TimeZone
Timezone to use for the container.

.EXAMPLE
Get-WireGuardPeerQRCode -PeerName "MyPhone"

.EXAMPLE
Get-WireGuardPeerQRCode -PeerName "Tablet" -NoDockerInitialize

.NOTES
This function requires the container to be running (use EnsureWireGuard first)
and the peer to exist (use Add-WireGuardPeer to create peers).
#>

function Get-WireGuardPeerQRCode {

    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $true,
            HelpMessage = 'The name of the peer to generate a QR code for'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PeerName,
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
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'wireguard',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The name for the Docker volume for persistent storage'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'wireguard_data',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The port number for the WireGuard service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 51839,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Maximum time in seconds to wait for service ' +
                'health check')
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
        [string] $ImageName = 'linuxserver/wireguard',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'User ID for permissions in the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PUID = '1000',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Group ID for permissions in the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PGID = '1000',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Timezone to use for the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $TimeZone = 'Etc/UTC'
    )    begin {

        # ensure the WireGuard service is running
        if (-not $NoDockerInitialize) {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Ensuring WireGuard service is available'

            # copy matching parameters to pass to EnsureWireGuard function
            $ensureParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\EnsureWireGuard' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

            # initialize WireGuard service with specified parameters
            $null = GenXdev\EnsureWireGuard @ensureParams
        }
        else {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Skipping Docker initialization as requested'
        }
    }

    process {

        try {

            Microsoft.PowerShell.Utility\Write-Verbose `
                "Displaying QR code for peer: $PeerName"

            # use the container's built-in QR code display
            docker exec $ContainerName /app/show-peer $PeerName

            if ($LASTEXITCODE -ne 0) {
                throw "Failed to display QR code for peer '$PeerName'"
            }

            Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Green `
                "QR code displayed for peer '$PeerName'"
        }
        catch {

            Microsoft.PowerShell.Utility\Write-Error `
                "Failed to generate QR code for peer '$PeerName': $_"

            throw
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows.WireGuard
Original cmdlet filename  : Get-WireGuardPeers.ps1
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
Gets information about all WireGuard VPN peers configured on the system.

.DESCRIPTION
This function retrieves comprehensive information about all WireGuard VPN peers
configured on the server running in a Docker container. It provides detailed
information including peer names, public keys, allowed IP addresses, connection
endpoints, handshake status, data transfer statistics, and current connection
status. The function can operate in conjunction with parent functions or
independently manage Docker container initialization.

.PARAMETER NoDockerInitialize
Skip Docker initialization process when this function is called by a parent
function that has already handled container setup.

.PARAMETER Force
Force complete rebuild of the Docker container and remove all existing
persistent data before starting fresh.

.PARAMETER ContainerName
The name identifier for the Docker container running the WireGuard service.
Must be a valid Docker container name.

.PARAMETER VolumeName
The name identifier for the Docker volume used for persistent storage of
WireGuard configuration and peer data.

.PARAMETER ServicePort
The UDP port number on which the WireGuard service listens for VPN connections.
Must be within valid port range.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for the WireGuard service to respond to health
check attempts before considering it failed.

.PARAMETER HealthCheckInterval
Interval in seconds between consecutive health check attempts when waiting for
the service to become ready.

.PARAMETER ImageName
Custom Docker image name to use instead of the default linuxserver/wireguard
image for the container.

.PARAMETER PUID
User ID for file permissions and process ownership within the Docker container.
Used for security and permission management.

.PARAMETER PGID
Group ID for file permissions and process ownership within the Docker container.
Used for security and permission management.

.PARAMETER TimeZone
Timezone setting to use for the container's system clock and log timestamps.
Should be a valid timezone identifier.

.EXAMPLE
Get-WireGuardPeers

.EXAMPLE
Get-WireGuardPeers -NoDockerInitialize -ContainerName "custom_wireguard" `
                   -ServicePort 55555

.NOTES
This function interacts with the linuxserver/wireguard Docker container to
retrieve information about configured WireGuard peers. The container must be
running and accessible. Use EnsureWireGuard function first if container setup
is required.
###############################################################################>
function Get-WireGuardPeers {



    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]

    param(
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Skip Docker initialization (used when already called ' +
                'by parent function)')
        )]
        [switch] $NoDockerInitialize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force rebuild of Docker container and remove existing ' +
                'data')
        )]
        [Alias('ForceRebuild')]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'wireguard',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The name for the Docker volume for persistent storage'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'wireguard_data',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The port number for the WireGuard service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 51839,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Maximum time in seconds to wait for service health ' +
                'check')
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
        [string] $ImageName = 'linuxserver/wireguard',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'User ID for permissions in the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PUID = '1000',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Group ID for permissions in the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PGID = '1000',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Timezone to use for the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $TimeZone = 'Etc/UTC',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show the Docker window when running WireGuard'
        )]
        [switch] $ShowWindow,
        [Alias('nb')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Remove window borders for the Docker window'
        )]
        [switch] $NoBorders,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the width of the Docker window'
        )]
        [int] $Width = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the height of the Docker window'
        )]
        [int] $Height = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the left position of the Docker window'
        )]
        [int] $Left,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the right position of the Docker window'
        )]
        [int] $Right,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the bottom position of the Docker window'
        )]
        [int] $Bottom,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Center the Docker window on the screen'
        )]
        [switch] $Centered,
        [Alias('fs')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Run the Docker window in fullscreen mode'
        )]
        [switch] $Fullscreen,
        [Alias('rf','bg')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore focus to the previous window after running Docker'
        )]
        [switch] $RestoreFocus,
        [Alias('sbs')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show Docker window side by side with other windows'
        )]
        [switch] $SideBySide,
        [Alias('fw','focus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the Docker window after launching'
        )]
        [switch] $FocusWindow,
        [Alias('fg')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the Docker window as foreground window'
        )]
        [switch] $SetForeground,
        [Alias('Escape')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Send Escape key to the Docker window after launch'
        )]
        [switch] $SendKeyEscape,
        [Alias('HoldKeyboardFocus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hold keyboard focus in the Docker window after launch'
        )]
        [switch] $SendKeyHoldKeyboardFocus,
        [Alias('UseShiftEnter')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Shift+Enter when sending keys to Docker window'
        )]
        [switch] $SendKeyUseShiftEnter,
        [Alias('DelayMilliSeconds')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Delay in milliseconds between sending keys to Docker window'
        )]
        [int] $SendKeyDelayMilliSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use session only for Docker window'
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear session for Docker window before running'
        )]
        [switch] $ClearSession,
        [Alias('FromPreferences')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Skip session for Docker window'
        )]
        [switch] $SkipSession
    )

    begin {

        # ensure the WireGuard service is running
        if (-not $NoDockerInitialize) {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Ensuring WireGuard service is available'

            # copy matching parameters to pass to EnsureWireGuard function
            $ensureParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\EnsureWireGuard' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

            # initialize WireGuard service with specified parameters
            $null = GenXdev\EnsureWireGuard @ensureParams
        }
        else {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Skipping Docker initialization as requested'
        }
    }

    process {

        try {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Retrieving WireGuard peers'

            # get peer information from WireGuard container using wg show command
            $wgOutput = docker exec $ContainerName wg show

            # check if the docker command executed successfully
            if ($LASTEXITCODE -ne 0) {

                throw "Failed to retrieve WireGuard peers: $wgOutput"
            }

            # parse the wg show output and convert to objects
            $peers = @()
            $currentPeer = $null

            # process each line of the wg show output
            foreach ($line in $wgOutput -split "`n") {

                # check if line contains peer public key information
                if ($line -match '^peer: (.+)$') {

                    # save previous peer if it exists
                    if ($null -ne $currentPeer) {

                        $peers += $currentPeer
                    }

                    # create new peer object with default values
                    $currentPeer = @{
                        PublicKey           = $matches[1]
                        Name                = $null
                        AllowedIPs          = $null
                        Endpoint            = $null
                        LatestHandshake     = $null
                        TransferRx          = $null
                        TransferTx          = $null
                        PersistentKeepalive = $null
                        Status              = $null
                    }
                }
                elseif ($null -ne $currentPeer) {

                    # check if line contains allowed IPs information
                    if ($line -match '^\s+allowed ips: (.+)$') {

                        $currentPeer.AllowedIPs = $matches[1]
                    }
                    # check if line contains endpoint information
                    elseif ($line -match '^\s+endpoint: (.+)$') {

                        $currentPeer.Endpoint = $matches[1]
                    }
                    # check if line contains latest handshake information
                    elseif ($line -match '^\s+latest handshake: (.+)$') {

                        $currentPeer.LatestHandshake = $matches[1]

                        # determine status based on handshake time
                        if ($matches[1] -match 'Never') {

                            $currentPeer.Status = 'Disconnected'
                        }
                        else {

                            # calculate time since last handshake
                            $handshakeTime = if ($matches[1] -match '(\d+) minutes? ago') {

                                [int]$matches[1]
                            }
                            elseif ($matches[1] -match '(\d+) seconds? ago') {

                                0  # Less than a minute
                            }
                            else {

                                9999  # Some other format, assume old
                            }

                            # if handshake was less than 3 minutes ago, consider connected
                            $currentPeer.Status = if ($handshakeTime -le 3) {

                                'Connected'
                            }
                            else {

                                'Inactive'
                            }
                        }
                    }                    # check if line contains transfer statistics information
                    elseif ($line -match ('^\\s+transfer: (\\d+\\.?\\d* \\w+) received, ' +
                            '(\\d+\\.?\\d* \\w+) sent$')) {

                        $currentPeer.TransferRx = $matches[1]
                        $currentPeer.TransferTx = $matches[2]
                    }
                    # check if line contains persistent keepalive information
                    elseif ($line -match '^\s+persistent keepalive: (.+)$') {

                        $currentPeer.PersistentKeepalive = $matches[1]
                    }
                }
            }

            # add the last peer if it exists
            if ($null -ne $currentPeer) {

                $peers += $currentPeer
            }

            # get peer names from configuration folders
            $peerFolders = docker exec $ContainerName sh -c 'ls -1d /config/peer_*' `
                2>$null

            # process peer folders if command was successful
            if ($LASTEXITCODE -eq 0 -and -not [string]::IsNullOrEmpty($peerFolders)) {

                # iterate through each peer folder
                foreach ($folder in $peerFolders -split "`n") {

                    # extract peer name from folder path
                    if ($folder -match '/config/peer_(.+)$') {

                        $peerName = $matches[1]

                        # get the public key for this peer
                        $publicKey = docker exec $ContainerName sh -c `
                            "cat /config/peer_$peerName/publickey" 2>$null

                        # process if public key was retrieved successfully
                        if ($LASTEXITCODE -eq 0 -and `
                                -not [string]::IsNullOrEmpty($publicKey)) {

                            # find the peer with this public key and add the name
                            foreach ($peer in $peers) {

                                if ($peer.PublicKey -eq $publicKey.Trim()) {

                                    $peer.Name = $peerName
                                    break
                                }
                            }

                            # if not found in peers list (disconnected), add it
                            if (-not ($peers | `
                                            Microsoft.PowerShell.Core\Where-Object { `
                                                $_.PublicKey -eq $publicKey.Trim() })) {

                                $peers += @{
                                    PublicKey           = $publicKey.Trim()
                                    Name                = $peerName
                                    AllowedIPs          = 'Unknown'
                                    Endpoint            = 'Unknown'
                                    LatestHandshake     = 'Never'
                                    TransferRx          = '0 B'
                                    TransferTx          = '0 B'
                                    PersistentKeepalive = 'Off'
                                    Status              = 'Disconnected'
                                }
                            }
                        }
                    }
                }
            }

            # convert to custom objects
            $peerObjects = $peers | `
                    Microsoft.PowerShell.Core\ForEach-Object {

                    [PSCustomObject]@{
                        Name                = $_.Name
                        PublicKey           = $_.PublicKey
                        AllowedIPs          = $_.AllowedIPs
                        Endpoint            = $_.Endpoint
                        LatestHandshake     = $_.LatestHandshake
                        TransferReceived    = $_.TransferRx
                        TransferSent        = $_.TransferTx
                        PersistentKeepalive = $_.PersistentKeepalive
                        Status              = $_.Status
                    }
                }

            # return the results
            return $peerObjects
        }
        catch {

            Microsoft.PowerShell.Utility\Write-Error `
                "Failed to retrieve WireGuard peers: $_"
            throw
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows.WireGuard
Original cmdlet filename  : Get-WireGuardStatus.ps1
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
Gets detailed status information about the WireGuard VPN server.

.DESCRIPTION
This function retrieves detailed status information about the WireGuard VPN
server running in a Docker container, including interface details, listening
port, connected peers, and server health. It provides comprehensive information
about the WireGuard service including server status, peer counts, uptime, and
network configuration details.

.PARAMETER NoDockerInitialize
Skip Docker initialization (used when already called by parent function).

.PARAMETER Force
Force rebuild of Docker container and remove existing data.

.PARAMETER ContainerName
The name for the Docker container.

.PARAMETER VolumeName
The name for the Docker volume for persistent storage.

.PARAMETER ServicePort
The port number for the WireGuard service.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts.

.PARAMETER ImageName
Custom Docker image name to use.

.PARAMETER PUID
User ID for permissions in the container.

.PARAMETER PGID
Group ID for permissions in the container.

.PARAMETER TimeZone
Timezone to use for the container.

.EXAMPLE
Get-WireGuardStatus

Returns the status of the WireGuard server with default settings.

.EXAMPLE
Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"

Retrieves status for a custom container without initializing Docker.

.NOTES
This function interacts with the linuxserver/wireguard Docker container to
retrieve status information about the WireGuard server. It requires the
container to be running (use EnsureWireGuard first).
#>
function Get-WireGuardStatus {

    [CmdletBinding()]

    param(        ###############################################################################
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
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'wireguard',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The name for the Docker volume for persistent storage'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'wireguard_data',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The port number for the WireGuard service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 51839,
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
        [string] $ImageName = 'linuxserver/wireguard',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'User ID for permissions in the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PUID = '1000',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Group ID for permissions in the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PGID = '1000',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Timezone to use for the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $TimeZone = 'Etc/UTC',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show the window when running the container (pass-through)'
        )]
        [switch] $ShowWindow,
        [Alias('nb')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Remove window borders (pass-through)'
        )]
        [switch] $NoBorders,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Window width in characters or pixels (pass-through)'
        )]
        [int] $Width = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Window height in characters or pixels (pass-through)'
        )]
        [int] $Height = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Window left position (pass-through)'
        )]
        [int] $Left,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Window right position (pass-through)'
        )]
        [int] $Right,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Window bottom position (pass-through)'
        )]
        [int] $Bottom,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Center the window (pass-through)'
        )]
        [switch] $Centered,
        [Alias('fs')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open window in fullscreen mode (pass-through)'
        )]
        [switch] $Fullscreen,
        [Alias('rf','bg')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore focus to window after operation (pass-through)'
        )]
        [switch] $RestoreFocus,
        [Alias('sbs')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Show side-by-side window (pass-through)'
        )]
        [switch] $SideBySide,
        [Alias('fw','focus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the window after opening (pass-through)'
        )]
        [switch] $FocusWindow,
        [Alias('fg')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set window to foreground (pass-through)'
        )]
        [switch] $SetForeground,
        [Alias('Escape')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Send Escape key to window (pass-through)'
        )]
        [switch] $SendKeyEscape,
        [Alias('HoldKeyboardFocus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hold keyboard focus when sending keys (pass-through)'
        )]
        [switch] $SendKeyHoldKeyboardFocus,
        [Alias('UseShiftEnter')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Shift+Enter when sending keys (pass-through)'
        )]
        [switch] $SendKeyUseShiftEnter,
        [Alias('DelayMilliSeconds')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Delay in milliseconds between sending keys (pass-through)'
        )]
        [int] $SendKeyDelayMilliSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Session only mode (pass-through)'
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear session data (pass-through)'
        )]
        [switch] $ClearSession,
        [Alias('FromPreferences')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Skip session initialization (pass-through)'
        )]
        [switch] $SkipSession
    )

    begin {

        # ensure the wireguard service is running
        if (-not $NoDockerInitialize) {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Ensuring WireGuard service is available'

            # copy matching parameters to pass to EnsureWireGuard function
            $ensureParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\EnsureWireGuard' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

            # initialize wireguard service with specified parameters
            $null = GenXdev\EnsureWireGuard @ensureParams
        }
        else {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Skipping Docker initialization as requested'
        }
    }    process {

        try {

            Microsoft.PowerShell.Utility\Write-Verbose 'Retrieving WireGuard status'

            # check container status
            $containerRunning = docker ps -q -f name=$ContainerName

            if (-not $containerRunning) {

                throw 'WireGuard container is not running'
            }

            # get container uptime
            $containerInfo = docker inspect --format '{{.State.StartedAt}}' `
                $ContainerName

            $startTime = [DateTime]::Parse($containerInfo)

            $uptime = [DateTime]::UtcNow - $startTime

            # get interface details
            $interfaceInfo = docker exec $ContainerName wg show wg0

            if ($LASTEXITCODE -ne 0) {

                throw 'Failed to retrieve WireGuard interface information'
            }

            # get server ip address
            $serverIP = $null

            $ipInfo = docker exec $ContainerName sh -c `
                'ip -o addr show wg0 | grep -v inet6'

            if ($LASTEXITCODE -eq 0) {

                if ($ipInfo -match 'inet\s+(\d+\.\d+\.\d+\.\d+)') {

                    $serverIP = $matches[1]
                }
            }

            # get server configuration
            $serverConfig = docker exec $ContainerName sh -c `
                'cat /config/wg0.conf 2>/dev/null'

            $listenPort = if ($serverConfig -match 'ListenPort\s*=\s*(\d+)') {
                $matches[1]
            } else {
                $ServicePort
            }

            # count peers
            $peerFolders = docker exec $ContainerName sh -c `
                'ls -1d /config/peer_* 2>/dev/null | wc -l'

            $peerCount = if ($LASTEXITCODE -eq 0) {
                [int]$peerFolders
            } else {
                0
            }

            # get connected peers
            $connectedPeers = 0

            if ($interfaceInfo -match 'peer:') {

                $handshakes = [regex]::Matches($interfaceInfo, 'latest handshake:')

                foreach ($handshake in $handshakes) {

                    $line = $interfaceInfo.Substring($handshake.Index)

                    if ($line -match `
                            'latest handshake: (\d+) (second|minute|hour)s? ago') {

                        $connectedPeers++
                    }
                }
            }

            # generate external url
            $externalIP = docker exec $ContainerName sh -c `
                "curl -s https://api.ipify.org || echo 'unknown'"

            $externalEndpoint = if ($externalIP -ne 'unknown') {
                ('{0}:{1}' -f $externalIP, $listenPort)
            } else {
                'unknown'
            }

            # create status object
            $status = [PSCustomObject]@{
                ServerStatus     = 'Running'
                ServerIP         = $serverIP
                ListenPort       = $listenPort
                TotalPeers       = $peerCount
                ConnectedPeers   = $connectedPeers
                ContainerUptime  = ('{0}d {1:D2}h {2:D2}m {3:D2}s' -f `
                        $uptime.Days, $uptime.Hours, $uptime.Minutes, $uptime.Seconds)
                ExternalEndpoint = $externalEndpoint
                Interface        = 'wg0'
                ServerPublicKey  = if ($interfaceInfo -match 'public key: (.+)') {
                    $matches[1]
                } else {
                    'unknown'
                }
                ContainerName    = $ContainerName
                ServicePort      = $ServicePort
            }

            # display status information
            Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Cyan `
                'WireGuard Server Status'

            Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Cyan `
                '======================='

            Microsoft.PowerShell.Utility\Write-Host 'Server Status    : ' `
                -NoNewline

            Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Green `
                'Running'

            Microsoft.PowerShell.Utility\Write-Host 'Interface        : wg0'

            Microsoft.PowerShell.Utility\Write-Host `
                "Server IP        : $serverIP"

            Microsoft.PowerShell.Utility\Write-Host `
                "Listen Port      : $listenPort"

            Microsoft.PowerShell.Utility\Write-Host `
                "External Endpoint: $externalEndpoint"

            Microsoft.PowerShell.Utility\Write-Host `
                "Server Public Key: $($status.ServerPublicKey)"

            Microsoft.PowerShell.Utility\Write-Host `
                "Container Uptime : $($status.ContainerUptime)"

            Microsoft.PowerShell.Utility\Write-Host `
                "Total Peers      : $peerCount"

            Microsoft.PowerShell.Utility\Write-Host `
                "Connected Peers  : $connectedPeers"

            Microsoft.PowerShell.Utility\Write-Host ''

            Microsoft.PowerShell.Utility\Write-Host `
            ('Use Get-WireGuardPeers for detailed information about ' + `
                    'peer connections.')

            # return the status object
            return $status
        }
        catch {

            Microsoft.PowerShell.Utility\Write-Error `
                "Failed to retrieve WireGuard status: $_"

            throw
        }
    }    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows.WireGuard
Original cmdlet filename  : Remove-WireGuardPeer.ps1
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
Removes a WireGuard VPN peer configuration.

.DESCRIPTION
This function removes a WireGuard VPN peer configuration from the server running
in a Docker container. It deletes the peer's configuration files and updates the
WireGuard server to stop accepting connections from this peer. The function
validates peer existence before removal and provides confirmation prompts unless
the Force parameter is specified.

.PARAMETER PeerName
The name of the peer to remove from the WireGuard configuration.

.PARAMETER Force
If specified, bypasses confirmation prompts when removing the peer.

.PARAMETER NoDockerInitialize
Skip Docker initialization when already called by parent function.

.PARAMETER ContainerName
The name for the Docker container running the WireGuard service.

.PARAMETER VolumeName
The name for the Docker volume used for persistent storage.

.PARAMETER ServicePort
The port number for the WireGuard service.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts.

.PARAMETER ImageName
Custom Docker image name to use for the WireGuard container.

.PARAMETER PUID
User ID for permissions in the container.

.PARAMETER PGID
Group ID for permissions in the container.

.PARAMETER TimeZone
Timezone to use for the container.

.EXAMPLE
Remove-WireGuardPeer -PeerName "MyPhone"

Removes the peer named "MyPhone" with confirmation prompt.

.EXAMPLE
Remove-WireGuardPeer -PeerName "Tablet" -Force

Removes the peer named "Tablet" without confirmation prompt.

.EXAMPLE
Remove-WireGuardPeer "WorkLaptop"

Removes the peer using positional parameter syntax.

.NOTES
This function interacts with the linuxserver/wireguard Docker container to manage
WireGuard peers. It requires the container to be running (use EnsureWireGuard
first). The function will validate peer existence before attempting removal and
provides detailed error handling for failed operations.
###############################################################################>
function Remove-WireGuardPeer {

    [CmdletBinding(SupportsShouldProcess)]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $true,
            HelpMessage = 'The name of the peer to remove'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PeerName,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'wireguard',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The name for the Docker volume for persistent storage'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'wireguard_data',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The port number for the WireGuard service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 51839,
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
        [string] $ImageName = 'linuxserver/wireguard',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'User ID for permissions in the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PUID = '1000',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Group ID for permissions in the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PGID = '1000',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Timezone to use for the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $TimeZone = 'Etc/UTC',
        [Alias('ForceRebuild')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force removal without confirmation'
        )]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Skip Docker initialization when called by parent function'
        )]
        [switch] $NoDockerInitialize,
        [Parameter(Mandatory = $false, HelpMessage = 'Show Docker Desktop window during initialization')]
        [switch] $ShowWindow,
        [Alias('nb')]
        [Parameter(Mandatory = $false, HelpMessage = 'Removes the borders of the window')]
        [switch] $NoBorders,
        [Parameter(Mandatory = $false, HelpMessage = 'The initial width of the window')]
        [int] $Width = -1,
        [Parameter(Mandatory = $false, HelpMessage = 'The initial height of the window')]
        [int] $Height = -1,
        [Parameter(Mandatory = $false, HelpMessage = 'Place window on the left side of the screen')]
        [switch] $Left,
        [Parameter(Mandatory = $false, HelpMessage = 'Place window on the right side of the screen')]
        [switch] $Right,
        [Parameter(Mandatory = $false, HelpMessage = 'Place window on the bottom side of the screen')]
        [switch] $Bottom,
        [Parameter(Mandatory = $false, HelpMessage = 'Place window in the center of the screen')]
        [switch] $Centered,
        [Alias('fs')]
        [Parameter(Mandatory = $false, HelpMessage = 'Maximize the window')]
        [switch] $Fullscreen,
        [Alias('rf', 'bg')]
        [Parameter(Mandatory = $false, HelpMessage = 'Restore PowerShell window focus')]
        [switch] $RestoreFocus,
        [Alias('sbs')]
        [Parameter(Mandatory = $false, HelpMessage = 'Will either set the window fullscreen on a different monitor than Powershell, or side by side with Powershell on the same monitor')]
        [switch] $SideBySide,
        [Alias('fw','focus')]
        [Parameter(Mandatory = $false, HelpMessage = 'Focus the window after opening')]
        [switch] $FocusWindow,
        [Alias('fg')]
        [Parameter(Mandatory = $false, HelpMessage = 'Set the window to foreground after opening')]
        [switch] $SetForeground,
        [Alias('Escape')]
        [Parameter(Mandatory = $false, HelpMessage = 'Escape control characters and modifiers when sending keys')]
        [switch] $SendKeyEscape,
        [Alias('HoldKeyboardFocus')]
        [Parameter(Mandatory = $false, HelpMessage = 'Hold keyboard focus on target window when sending keys')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Alias('UseShiftEnter')]
        [Parameter(Mandatory = $false, HelpMessage = 'Use Shift+Enter instead of Enter when sending keys')]
        [switch] $SendKeyUseShiftEnter,
        [Alias('DelayMilliSeconds')]
        [Parameter(Mandatory = $false, HelpMessage = 'Delay between different input strings in milliseconds when sending keys')]
        [int] $SendKeyDelayMilliSeconds,
        [Parameter(Mandatory = $false, HelpMessage = 'Use alternative settings stored in session for AI preferences')]
        [switch] $SessionOnly,
        [Parameter(Mandatory = $false, HelpMessage = 'Clear alternative settings stored in session for AI preferences')]
        [switch] $ClearSession,
        [Alias('FromPreferences')]
        [Parameter(Mandatory = $false, HelpMessage = 'Store settings only in persistent preferences without affecting session')]
        [switch] $SkipSession
    )
    begin {

        # ensure the wireguard service is running if not skipped
        if (-not $NoDockerInitialize) {
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Ensuring WireGuard service is available'

            # copy matching parameters to pass to ensurewireguard function
            $ensureParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\EnsureWireGuard' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

            # initialize wireguard service with specified parameters
            $null = GenXdev\EnsureWireGuard @ensureParams
        }
        else {
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Skipping Docker initialization as requested'
        }

        # define helper function to check if peer configuration exists
        function Test-PeerExist {
            param([string]$peerName)

            try {
                # check for existing peer configuration folder using docker exec
                $result = docker exec $ContainerName sh -c ("[ -d /config/peer_$peerName ] && " +
                    "echo 'exists' || echo 'not exists'")

                if ($result -eq 'exists') {
                    return $true
                }

                return $false
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Warning `
                    "Unable to verify peer existence: $_"

                # if we cannot verify assume it exists for safety
                return $true
            }
        }
    }    process {

        try {
            # check if peer exists before attempting removal
            if (-not (Test-PeerExist -peerName $PeerName)) {
                throw "Peer '$PeerName' does not exist"
            }

            # get the peer's public key for wireguard configuration removal
            $publicKey = docker exec $ContainerName sh -c ("cat /config/peer_$PeerName/publickey " +
                '2>/dev/null')

            if ($LASTEXITCODE -ne 0 -or [string]::IsNullOrEmpty($publicKey)) {
                Microsoft.PowerShell.Utility\Write-Warning ('Could not retrieve public key for ' +
                    "peer '$PeerName', but will attempt removal anyway")
                $publicKey = $null
            }
            else {
                # trim whitespace from the public key
                $publicKey = $publicKey.Trim()
            }

            # confirm the removal if force is not specified
            $confirmMessage = "Are you sure you want to remove the WireGuard peer '$PeerName'?"
            $operationName = "Removing WireGuard peer '$PeerName'"

            if ($Force -or $PSCmdlet.ShouldProcess($confirmMessage, $operationName)) {
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Removing WireGuard peer: $PeerName"

                # remove from wireguard configuration if we have the public key
                if (-not [string]::IsNullOrEmpty($publicKey)) {
                    $removeResult = docker exec $ContainerName sh -c ('wg set wg0 peer ' +
                        "$publicKey remove")

                    if ($LASTEXITCODE -ne 0) {
                        Microsoft.PowerShell.Utility\Write-Warning `
                            "Failed to remove peer from WireGuard: $removeResult"
                    }
                    else {
                        Microsoft.PowerShell.Utility\Write-Verbose `
                            'Peer removed from WireGuard configuration'
                    }
                }

                # remove peer directory from container filesystem
                $deleteResult = docker exec $ContainerName sh -c "rm -rf /config/peer_$PeerName"

                if ($LASTEXITCODE -ne 0) {
                    throw "Failed to remove peer directory: $deleteResult"
                }

                # save wireguard configuration to persist changes
                $saveResult = docker exec $ContainerName sh -c 'wg-quick save wg0'

                if ($LASTEXITCODE -ne 0) {
                    Microsoft.PowerShell.Utility\Write-Warning `
                        "Failed to save WireGuard configuration: $saveResult"
                }

                Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Green `
                    "Peer '$PeerName' removed successfully"

                # return success information for pipeline use
                return [PSCustomObject]@{
                    PeerName  = $PeerName
                    PublicKey = $publicKey
                    Success   = $true
                    Message   = "Peer '$PeerName' removed successfully"
                }
            }

            # return cancellation information when user declines
            return [PSCustomObject]@{
                PeerName  = $PeerName
                PublicKey = $publicKey
                Success   = $false
                Message   = 'Peer removal was canceled by user'
            }
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Error `
                "Failed to remove WireGuard peer '$PeerName': $_"
            throw
        }
    }    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows.WireGuard
Original cmdlet filename  : Reset-WireGuardConfiguration.ps1
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
Resets the WireGuard VPN server configuration, removing all peers.

.DESCRIPTION
This function resets the WireGuard VPN server configuration running in a Docker
container by removing all peers and generating a fresh server configuration.
This is a destructive operation that cannot be undone and will permanently
remove all peer configurations. The function stops the WireGuard service,
removes all peer directories and configuration files, removes server keys,
restarts the container, and verifies that a new configuration is generated.

.PARAMETER ContainerName
The name for the Docker container. Defaults to 'wireguard' if not specified.
Used to identify which container to operate on.

.PARAMETER VolumeName
The name for the Docker volume for persistent storage. Defaults to
'wireguard_data' if not specified. Used for data persistence across container
restarts.

.PARAMETER ServicePort
The port number for the WireGuard service. Must be between 1 and 65535.
Defaults to 51839. This is the UDP port WireGuard will listen on.

.PARAMETER HealthCheckTimeout
Maximum time in seconds to wait for service health check. Must be between 10
and 300 seconds. Defaults to 60 seconds. Used when verifying service health.

.PARAMETER HealthCheckInterval
Interval in seconds between health check attempts. Must be between 1 and 10
seconds. Defaults to 3 seconds. Controls how often health checks are performed.

.PARAMETER ImageName
Custom Docker image name to use. Defaults to 'linuxserver/wireguard'. This
allows using alternative WireGuard Docker images if needed.

.PARAMETER PUID
User ID for permissions in the container. Defaults to '1000'. This controls
file ownership and permissions within the container.

.PARAMETER PGID
Group ID for permissions in the container. Defaults to '1000'. This controls
group ownership and permissions within the container.

.PARAMETER TimeZone
Timezone to use for the container. Defaults to 'Etc/UTC'. This sets the
container's timezone for logging and scheduling purposes.

.PARAMETER NoDockerInitialize
Skip Docker initialization (used when already called by parent function).
When specified, assumes Docker and WireGuard are already initialized.

.PARAMETER Force
If specified, bypasses confirmation prompts when removing all peer
configurations. Use with caution as this is a destructive operation.

.EXAMPLE
Reset-WireGuardConfiguration

Resets the WireGuard configuration with default settings and prompts for
confirmation before proceeding.

.EXAMPLE
Reset-WireGuardConfiguration -Force -ContainerName "my-wireguard"

Resets the WireGuard configuration for a custom container name without
confirmation prompts.

.NOTES
This function interacts with the linuxserver/wireguard Docker container to reset
the WireGuard server configuration. It requires the container to be running
(use EnsureWireGuard first). This operation will remove all peer configurations
and cannot be undone. The function will restart the container to regenerate
a fresh configuration.
###############################################################################>
function Reset-WireGuardConfiguration {

    [CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'High')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = 'The name for the Docker container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ContainerName = 'wireguard',
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = 'The name for the Docker volume for persistent storage'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $VolumeName = 'wireguard_data',
        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'The port number for the WireGuard service'
        )]
        [ValidateRange(1, 65535)]
        [int] $ServicePort = 51839,
        [Parameter(
            Position = 3,
            Mandatory = $false,
            HelpMessage = 'Maximum time in seconds to wait for service health check'
        )]
        [ValidateRange(10, 300)]
        [int] $HealthCheckTimeout = 60,
        [Parameter(
            Position = 4,
            Mandatory = $false,
            HelpMessage = 'Interval in seconds between health check attempts'
        )]
        [ValidateRange(1, 10)]
        [int] $HealthCheckInterval = 3,
        [Parameter(
            Position = 5,
            Mandatory = $false,
            HelpMessage = 'Custom Docker image name to use'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $ImageName = 'linuxserver/wireguard',
        [Parameter(
            Position = 6,
            Mandatory = $false,
            HelpMessage = 'User ID for permissions in the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PUID = '1000',
        [Parameter(
            Position = 7,
            Mandatory = $false,
            HelpMessage = 'Group ID for permissions in the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PGID = '1000',
        [Parameter(
            Position = 8,
            Mandatory = $false,
            HelpMessage = 'Timezone to use for the container'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $TimeZone = 'Etc/UTC',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Skip Docker initialization (used when already called by parent function)'
        )]
        [switch] $NoDockerInitialize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force reset without confirmation'
        )]
        [switch] $Force
    )

    begin {

        # check if docker initialization should be skipped
        if (-not $NoDockerInitialize) {

            # output verbose message about ensuring wireguard service
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Ensuring WireGuard service is available'

            # copy matching parameters to pass to EnsureWireGuard function
            $ensureParams = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\EnsureWireGuard' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

            # initialize wireguard service with specified parameters
                $null = GenXdev\EnsureWireGuard @ensureParams

        } else {

            # output verbose message about skipping docker initialization
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Skipping Docker initialization as requested'
        }
    }

    process {

        try {

            # count existing peers to show in warning message
            $peerFolders = docker exec $ContainerName sh -c `
                'ls -1d /config/peer_* 2>/dev/null | wc -l'

            # initialize peer count variable
            $peerCount = 0

            # check if peer count command was successful
            if ($LASTEXITCODE -eq 0) {

                # convert peer folders output to integer count
                $peerCount = [int]$peerFolders
            }

            # check if server configuration file exists for reporting
            $serverConfigExists = docker exec $ContainerName sh -c `
                "[ -f /config/wg0.conf ] && echo 'exists' || echo 'not exists'"

            # determine if server configuration is present
            $hasServerConfig = ($serverConfigExists -eq 'exists')

            # build confirmation message with peer count information
            $confirmMessage = ('WARNING: You are about to reset the WireGuard ' +
                "configuration. This will remove all $peerCount " +
                'peer configurations and cannot be undone. Are ' +
                'you sure you want to proceed?')

            # define operation name for shouldprocess
            $operationName = 'Resetting WireGuard configuration'

            # check if user confirmed the operation or force flag is set
            if ($Force -or $PSCmdlet.ShouldProcess($confirmMessage,
                    $operationName)) {

                # output verbose message about starting reset process
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'Resetting WireGuard configuration, removing all peers...'

                # stop wireguard service in the container gracefully
                $null = docker exec $ContainerName sh -c `
                    'wg-quick down wg0 2>/dev/null || true'

                # wait for service to stop completely
                Microsoft.PowerShell.Utility\Start-Sleep -Seconds 2

                # remove all peer directories from configuration
                $null = docker exec $ContainerName sh -c `
                    'rm -rf /config/peer_* 2>/dev/null || true'

                # check if peer removal was successful
                $peersRemoved = ($LASTEXITCODE -eq 0)

                # remove wireguard configuration file
                $null = docker exec $ContainerName sh -c `
                    'rm -f /config/wg0.conf 2>/dev/null || true'

                # check if configuration removal was successful
                $configRemoved = ($LASTEXITCODE -eq 0)

                # remove server private and public keys
                $null = docker exec $ContainerName sh -c `
                    'rm -f /config/server_* 2>/dev/null || true'

                # check if key removal was successful
                $keysRemoved = ($LASTEXITCODE -eq 0)

                # output verbose message about restarting container
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'Restarting WireGuard container to regenerate configuration...'

                # restart the container to regenerate fresh configuration
                docker restart $ContainerName

                # check if container restart was successful
                if ($LASTEXITCODE -ne 0) {

                    # throw error if container restart failed
                    throw 'Failed to restart WireGuard container'
                }

                # wait for container to fully initialize after restart
                Microsoft.PowerShell.Utility\Start-Sleep -Seconds 10

                # verify container is running after restart
                $containerStatus = docker ps -q -f name=$ContainerName

                # check if container is actually running
                if (-not $containerStatus) {

                    # throw error if container failed to restart
                    throw 'WireGuard container failed to restart'
                }

                # check if new configuration was generated successfully
                $newConfigExists = docker exec $ContainerName sh -c `
                    "[ -f /config/wg0.conf ] && echo 'exists' || echo 'not exists'"

                # verify new configuration file was created
                if ($newConfigExists -ne 'exists') {

                    # throw error if configuration generation failed
                    throw 'Failed to generate new WireGuard configuration'
                }

                # display success message to user
                Microsoft.PowerShell.Utility\Write-Host -ForegroundColor Green `
                ('WireGuard configuration reset successfully. All peers ' +
                    'have been removed.')

                # provide guidance for next steps
                Microsoft.PowerShell.Utility\Write-Host `
                    'Use Add-WireGuardPeer to create new peer configurations.'

                # return success information object
                return [PSCustomObject]@{
                    Success             = $true
                    Message             = 'WireGuard configuration reset successfully'
                    PeersRemoved        = $peerCount
                    InitialConfig       = $hasServerConfig
                    PeersRemoveSuccess  = $peersRemoved
                    ConfigRemoveSuccess = $configRemoved
                    KeysRemoveSuccess   = $keysRemoved
                }
            }

            # return cancellation information if user declined
            return [PSCustomObject]@{
                Success      = $false
                Message      = 'WireGuard configuration reset was canceled by user'
                PeersRemoved = 0
            }

        } catch {

            # output error message for any failures during reset
            Microsoft.PowerShell.Utility\Write-Error `
                "Failed to reset WireGuard configuration: $_"

            # re-throw the exception to caller
            throw
        }
    }

    end {
    }
}

