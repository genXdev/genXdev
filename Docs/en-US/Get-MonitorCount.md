# Get-MonitorCount

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Gets the total number of display monitors connected to the system.

## Description

* Uses the Windows Presentation Foundation (WPF) Screen helper class to
  accurately determine the number of physical display monitors currently
  connected to the system.
* This includes both active and detected but disabled monitors.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Returns the total number of connected monitors (e.g. 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Returns monitor count with verbose output showing detection process.

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
