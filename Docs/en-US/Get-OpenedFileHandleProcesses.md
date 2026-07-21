# Get-OpenedFileHandleProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Retrieves processes that have open file handles to specified files.

## Description

* Uses the Sysinternals handle.exe tool to identify processes that
  currently have open handles to one or more specified files.
* Useful for determining which processes are preventing file operations
  like deletion or modification.
* Requires handle.exe from the Sysinternals suite to be installed and
  available in the system path.

## Syntax

```powershell
Get-OpenedFileHandleProcesses -FilePath <String[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The path to the file(s) to check for open handles |

## Examples

### Example 1

```powershell
Get-OpenedFileHandleProcesses -FilePath "C:\temp\example.txt"
```

Identifies all processes that have open handles to the specified file.

### Example 2

```powershell
"file1.txt", "file2.txt" | Get-OpenedFileHandleProcesses
```

Checks multiple files via pipeline input for processes with open handles.

## Parameter Details

### `-FilePath <String[]>`

> The path to the file(s) to check for open handles

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/CurrentUserHasElevatedRights.md)
- [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Enable-Screensaver.md)
- [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ActiveUser.md)
- [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ChildProcesses.md)
- [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ClipboardFiles.md)
- [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-CurrentFocusedProcess.md)
- [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-DesktopScalingFactor.md)
- [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ForegroundWindow.md)
- [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-KnownFolderPath.md)
- [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-MpCmdRunPath.md)
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
- [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-MonitorPowerOff.md)
- [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-MonitorPowerOn.md)
- [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-TaskbarAlignment.md)
- [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-WindowPosition.md)
- [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-WindowPositionForSecondary.md)
- [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-WindowsWallpaper.md)
- [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-ProcessWithPriority.md)
- [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Test-PathUsingWindowsDefender.md)
