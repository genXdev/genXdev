# Remove-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-WireGuardPeer -PeerName <String> [-Bottom] [-Centered] [-ClearSession] [-ContainerName <String>] [-FocusWindow] [-Force] [-Fullscreen] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-Height <Int32>] [-ImageName <String>] [-Left] [-NoBorders] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-ServicePort <Int32>] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-TimeZone <String>] [-VolumeName <String>] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | The name of the peer to remove |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | The name for the Docker container |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | The name for the Docker volume for persistent storage |
| `-ServicePort` | Int32 | — | — | Named | `51839` | The port number for the WireGuard service |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Interval in seconds between health check attempts |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | Custom Docker image name to use |
| `-PUID` | String | — | — | Named | `'1000'` | User ID for permissions in the container |
| `-PGID` | String | — | — | Named | `'1000'` | Group ID for permissions in the container |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | Timezone to use for the container |
| `-Force` | SwitchParameter | — | — | Named | — | Force removal without confirmation |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Skip Docker initialization when called by parent function |
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

## Related Links

- [Remove-WireGuardPeer on GitHub](https://github.com/genXdev/genXdev)
