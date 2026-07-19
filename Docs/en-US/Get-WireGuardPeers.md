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

## Related Links

- [Get-WireGuardPeers on GitHub](https://github.com/genXdev/genXdev)
