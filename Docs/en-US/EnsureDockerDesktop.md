# EnsureDockerDesktop

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Ensures Docker Desktop is installed and available for containerization
operations.

## Description

Verifies if Docker Desktop is installed and properly configured on the system.
If not found, installs Docker Desktop using WinGet and handles the complete
installation process automatically. This function also manages Docker Desktop
service startup, daemon readiness verification, and handles authentication
requirements when necessary. The function includes comprehensive path
management for both system and user-level Docker installations.

## Syntax

```powershell
EnsureDockerDesktop [[-Monitor] <Int32>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [[-KeysToSend] <String[]>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Left] [-NoBorders] [-NoDockerInitialization] [-RestoreFocus] [-Right] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Show Docker Desktop window during initialization |
| `-Monitor` | Int32 | — | — | 0 | `-1` | The monitor to use, 0 = default, -1 is discard |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Removes the borders of the window |
| `-Force` | SwitchParameter | — | — | Named | — | Forces a docker desktop restart |
| `-Width` | Int32 | — | — | 1 | — | The initial width of the window |
| `-Height` | Int32 | — | — | 2 | — | The initial height of the window |
| `-X` | Int32 | — | — | 3 | — | The initial X position of the window |
| `-Y` | Int32 | — | — | 4 | — | The initial Y position of the window |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Place window on the top side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Place window in the center of the screen |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximize the window |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restore PowerShell window focus |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Will either set the window fullscreen on a different monitor than Powershell, or side by side with Powershell on the same monitor |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the window to foreground after opening |
| `-KeysToSend` | String[] | — | — | 5 | — | Keystrokes to send to the Window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Hold keyboard focus on target window when sending keys |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 6 | — | Delay between different input strings in milliseconds when sending keys |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-NoDockerInitialization` | SwitchParameter | — | — | Named | — | Skip Docker initialization and return immediately |

## Examples

### EnsureDockerDesktop

```powershell
EnsureDockerDesktop
```

### EnsureDockerDesktop -ShowWindow -Centered -NoBorders

```powershell
EnsureDockerDesktop -ShowWindow -Centered -NoBorders
```

### EnsureDockerDesktop -ShowWindow -Monitor 1 -Left -Width 800 -Height 600

```powershell
EnsureDockerDesktop -ShowWindow -Monitor 1 -Left -Width 800 -Height 600
```

## Parameter Details

### `-ShowWindow`

> Show Docker Desktop window during initialization

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> The monitor to use, 0 = default, -1 is discard

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Removes the borders of the window

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Forces a docker desktop restart

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> The initial width of the window

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> The initial height of the window

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> The initial X position of the window

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> The initial Y position of the window

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> Place window on the left side of the screen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> Place window on the right side of the screen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Top`

> Place window on the top side of the screen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> Place window on the bottom side of the screen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Place window in the center of the screen

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

> Maximize the window

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

> Restore PowerShell window focus

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

> Will either set the window fullscreen on a different monitor than Powershell, or side by side with Powershell on the same monitor

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

> Focus the window after opening

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

> Set the window to foreground after opening

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Keystrokes to send to the Window, see documentation for cmdlet GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Escape control characters and modifiers when sending keys

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

> Hold keyboard focus on target window when sending keys

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

> Use Shift+Enter instead of Enter when sending keys

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

> Delay between different input strings in milliseconds when sending keys

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Use alternative settings stored in session for AI preferences

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

> Clear alternative settings stored in session for AI preferences

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

> Store settings only in persistent preferences without affecting session

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialization`

> Skip Docker initialization and return immediately

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/CurrentUserHasElevatedRights.md)
- [EnsurePSTools](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePSTools.md)
- [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ActiveUser.md)
- [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ChildProcesses.md)
- [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ClipboardFiles.md)
- [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-CurrentFocusedProcess.md)
- [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-DesktopScalingFactor.md)
- [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ForegroundWindow.md)
- [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-KnownFolderPath.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-MonitorCount.md)
- [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-MpCmdRunPath.md)
- [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-OpenedFileHandleProcesses.md)
- [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-PowershellMainWindow.md)
- [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-PowershellMainWindowProcess.md)
- [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Window.md)
- [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-WindowPosition.md)
- [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Initialize-ScheduledTaskScripts.md)
- [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-WindowsUpdate.md)
- [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Pop-Window.md)
- [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Push-Window.md)
- [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Save-DesktopScreenShot.md)
- [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Send-Key.md)
- [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Send-WakeOnLan.md)
- [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-ClipboardFiles.md)
- [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-ForegroundWindow.md)
- [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-KnownFolderPath.md)
- [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-TaskbarAlignment.md)
- [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-WindowPosition.md)
- [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-WindowPositionForSecondary.md)
- [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-WindowsWallpaper.md)
- [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-ProcessWithPriority.md)
- [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Test-PathUsingWindowsDefender.md)
