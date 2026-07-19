# EnsureWireGuard

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Ensures WireGuard VPN service is installed and running via Docker container.

## Description

This function sets up and manages the WireGuard VPN service using Docker
Desktop. It automatically ensures Docker Desktop is running, pulls the latest
WireGuard Docker image, creates persistent storage volumes, and manages the
container lifecycle including health monitoring and restart capabilities.

WireGuard is a simple, fast, and modern VPN that utilizes state-of-the-art
cryptography. It offers superior performance and simplicity compared to
traditional VPN solutions like OpenVPN, with minimal configuration overhead
and excellent cross-platform support.

## Syntax

```powershell
EnsureWireGuard [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left] [-NoBorders] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | The name for the Docker container |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | The port number for the WireGuard service |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Interval in seconds between health check attempts |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Custom Docker image name to use |
| `-PUID` | String | — | — | 6 | `'1000'` | User ID for permissions in the container |
| `-PGID` | String | — | — | 7 | `'1000'` | Group ID for permissions in the container |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Timezone to use for the container |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Show Docker Desktop window during initialization |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Removes the borders of the window |
| `-Width` | Int32 | — | — | Named | `-1` | The initial width of the window |
| `-Height` | Int32 | — | — | Named | `-1` | The initial height of the window |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Place window in the center of the screen |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximize the window |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restore PowerShell window focus |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Will either set the window fullscreen on a different monitor than Powershell, or side by side with Powershell on the same monitor |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the window to foreground after opening |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Hold keyboard focus on target window when sending keys |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Delay between different input strings in milliseconds when sending keys |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |

## Examples

### EnsureWireGuard

```powershell
EnsureWireGuard
```

### EnsureWireGuard -ContainerName "my_wireguard" -ServicePort 51821

```powershell
EnsureWireGuard -ContainerName "my_wireguard" -ServicePort 51821
```

### EnsureWireGuard -VolumeName "custom_vpn_data" -HealthCheckTimeout 120

```powershell
EnsureWireGuard -VolumeName "custom_vpn_data" -HealthCheckTimeout 120
```

### EnsureWireGuard -PUID 1001 -PGID 1001 -TimeZone "America/New_York"

```powershell
EnsureWireGuard -PUID 1001 -PGID 1001 -TimeZone "America/New_York"
```

### EnsureWireGuard -Force

```powershell
EnsureWireGuard -Force
```

## Outputs

- `Boolean`

## Related Links

- [EnsureWireGuard on GitHub](https://github.com/genXdev/genXdev)
