# Get-ActiveUser

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `gusers`

## Synopsis

> Retrieves a list of unique usernames from currently active system processes.

## Description

Queries all running processes on the system, extracts the associated username for
each process, and returns a deduplicated list of users who have active processes.
This is useful for system administration and security monitoring.

## Syntax

```powershell
Get-ActiveUser [<CommonParameters>]
```

## Examples

### Get-ActiveUser Returns a list of all unique usernames with active processes.

```powershell
Get-ActiveUser
Returns a list of all unique usernames with active processes.
```

### gusers Uses the alias to get the same results. ##############################################################################

```powershell
gusers
Uses the alias to get the same results.
##############################################################################
```

## Related Links

- [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/CurrentUserHasElevatedRights.md)
- [EnsureDockerDesktop](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureDockerDesktop.md)
- [EnsurePSTools](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePSTools.md)
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
