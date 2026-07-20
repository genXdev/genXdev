# Set-WindowsWallpaper

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Sets a random wallpaper from a specified directory.

## Description

* Selects a random image file from the specified directory and sets it as
  the Windows desktop wallpaper.
* Supports JPG/JPEG image formats and configures the wallpaper to "fit"
  the screen by default.

## Syntax

```powershell
Set-WindowsWallpaper [[-InputObject] <Object>] [-AllDrives] [-NoRecurse] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | Path to the directory containing the wallpaper images |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Search across all available drives |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Do not recurse into subdirectories |

## Examples

### Example 1

```powershell
Set-WindowsWallpaper -InputObject "C:\Wallpapers\*.jpg"
```

Sets a random wallpaper from the C:\Wallpapers directory.

### Example 2

```powershell
nextbg
```

Sets a random wallpaper from the default directory using the alias.

## Parameter Details

### `-InputObject <Object>`

> Path to the directory containing the wallpaper images

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Path`, `FullName`, `FilePath`, `Input` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllDrives`

> Search across all available drives

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> Do not recurse into subdirectories

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/CurrentUserHasElevatedRights.md)
- [EnsureDockerDesktop](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureDockerDesktop.md)
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
- [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-ProcessWithPriority.md)
- [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Test-PathUsingWindowsDefender.md)
