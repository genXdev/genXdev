# Add-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-WireGuardPeer -PeerName <String> [[-AllowedIPs] <String>] [[-DNS] <String>] [[-OutputPath] <String>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left <Int32>] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-Right <Int32>] [-SaveConfig] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowQRCode] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | A unique name for the peer |
| `-AllowedIPs` | String | — | — | 1 | `'0.0.0.0/0, ::/0'` | The IP ranges that will be routed through the VPN |
| `-DNS` | String | — | — | 2 | `'1.1.1.1, 1.0.0.1'` | DNS servers to use for this peer |
| `-OutputPath` | String | — | — | 3 | `"$env:USERPROFILE\WireGuardConfigs"` | The path where the peer configuration file should be saved |
| `-ContainerName` | String | — | — | 4 | `'wireguard'` | The name for the Docker container |
| `-VolumeName` | String | — | — | 5 | `'wireguard_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | 6 | `51839` | The port number for the WireGuard service |
| `-HealthCheckTimeout` | Int32 | — | — | 7 | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | 8 | `3` | Interval in seconds between health check attempts |
| `-ImageName` | String | — | — | 9 | `'linuxserver/wireguard'` | Custom Docker image name to use |
| `-PUID` | String | — | — | 10 | `'1000'` | User ID for permissions in the container |
| `-PGID` | String | — | — | 11 | `'1000'` | Group ID for permissions in the container |
| `-TimeZone` | String | — | — | 12 | `'Etc/UTC'` | Timezone to use for the container |
| `-SaveConfig` | SwitchParameter | — | — | Named | — | Save the peer configuration to a file |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Show the WireGuard window when initializing the service |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove window borders when initializing the service |
| `-Width` | Int32 | — | — | Named | `-1` | Set the window width when initializing the service |
| `-Height` | Int32 | — | — | Named | `-1` | Set the window height when initializing the service |
| `-Left` | Int32 | — | — | Named | — | Set the window left position when initializing the service |
| `-Right` | Int32 | — | — | Named | — | Set the window right position when initializing the service |
| `-Bottom` | Int32 | — | — | Named | — | Set the window bottom position when initializing the service |
| `-Centered` | SwitchParameter | — | — | Named | — | Center the window when initializing the service |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Start the service in fullscreen mode |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restore focus to the window after initializing the service |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Show the window side by side when initializing the service |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the window after initializing the service |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the window to foreground after initializing the service |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Send Escape key to the window after initializing the service |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Hold keyboard focus when sending keys after initializing the service |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter when sending keys after initializing the service |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Delay in milliseconds when sending keys after initializing the service |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use session only for the WireGuard service |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear session when initializing the service |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Skip session when initializing the service |
| `-ShowQRCode` | SwitchParameter | — | — | Named | — | Generate QR code for easy mobile setup |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Skip Docker initialization (used when already called by parent function) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |

## Related Links

- [Add-WireGuardPeer on GitHub](https://github.com/genXdev/genXdev)
