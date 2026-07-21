# Get-WireGuardPeers

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Gets information about all WireGuard VPN peers configured on the system.

## Description

This function retrieves comprehensive information about all WireGuard VPN peers
configured on the server running in a Docker container. It provides detailed
information including peer names, public keys, allowed IP addresses, connection
endpoints, handshake status, data transfer statistics, and current connection
status. The function can operate in conjunction with parent functions or
independently manage Docker container initialization.

## Syntax

```powershell
Get-WireGuardPeers [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Skip Docker initialization (used when already called by parent function) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | The name for the Docker container |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | The port number for the WireGuard service |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Interval in seconds between health check attempts |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Custom Docker image name to use |
| `-PUID` | String | — | — | 6 | `'1000'` | User ID for permissions in the container |
| `-PGID` | String | — | — | 7 | `'1000'` | Group ID for permissions in the container |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Timezone to use for the container |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Show the Docker window when running WireGuard |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove window borders for the Docker window |
| `-Width` | Int32 | — | — | 9 | `-1` | Set the width of the Docker window |
| `-Height` | Int32 | — | — | 10 | `-1` | Set the height of the Docker window |
| `-Left` | Int32 | — | — | 11 | — | Set the left position of the Docker window |
| `-Right` | Int32 | — | — | 12 | — | Set the right position of the Docker window |
| `-Bottom` | Int32 | — | — | 13 | — | Set the bottom position of the Docker window |
| `-Centered` | SwitchParameter | — | — | Named | — | Center the Docker window on the screen |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Run the Docker window in fullscreen mode |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restore focus to the previous window after running Docker |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Show Docker window side by side with other windows |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the Docker window after launching |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the Docker window as foreground window |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Send Escape key to the Docker window after launch |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Hold keyboard focus in the Docker window after launch |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter when sending keys to Docker window |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Delay in milliseconds between sending keys to Docker window |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use session only for Docker window |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear session for Docker window before running |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Skip session for Docker window |

## Examples

### Get-WireGuardPeers

```powershell
Get-WireGuardPeers
```

### Get-WireGuardPeers -NoDockerInitialize -ContainerName "custom_wireguard" `                    -ServicePort 55555

```powershell
Get-WireGuardPeers -NoDockerInitialize -ContainerName "custom_wireguard" `
                   -ServicePort 55555
```

## Parameter Details

### `-NoDockerInitialize`

> Skip Docker initialization (used when already called by parent function)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Force rebuild of Docker container and remove existing data

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ForceRebuild` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> The name for the Docker container

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VolumeName <String>`

> The name for the Docker volume for persistent storage

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'wireguard_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> The port number for the WireGuard service

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `51839` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckTimeout <Int32>`

> Maximum time in seconds to wait for service health check

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `60` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckInterval <Int32>`

> Interval in seconds between health check attempts

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageName <String>`

> Custom Docker image name to use

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | `'linuxserver/wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PUID <String>`

> User ID for permissions in the container

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PGID <String>`

> Group ID for permissions in the container

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 7 |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeZone <String>`

> Timezone to use for the container

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 8 |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Show the Docker window when running WireGuard

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Remove window borders for the Docker window

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Set the width of the Docker window

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 9 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Set the height of the Docker window

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 10 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> Set the left position of the Docker window

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 11 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right <Int32>`

> Set the right position of the Docker window

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 12 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom <Int32>`

> Set the bottom position of the Docker window

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 13 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Center the Docker window on the screen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Fullscreen`

> Run the Docker window in fullscreen mode

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Restore focus to the previous window after running Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Show Docker window side by side with other windows

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Focus the Docker window after launching

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> Set the Docker window as foreground window

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Send Escape key to the Docker window after launch

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Hold keyboard focus in the Docker window after launch

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Use Shift+Enter when sending keys to Docker window

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Delay in milliseconds between sending keys to Docker window

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 14 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Use session only for Docker window

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Clear session for Docker window before running

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Skip session for Docker window

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Reset-WireGuardConfiguration.md)
