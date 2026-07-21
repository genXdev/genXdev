# Get-Window

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Pobiera informacje o oknach dla określonych procesów lub uchwytów okien.

## Description

* Pobiera informacje o oknie przy użyciu nazwy procesu, identyfikatora lub uchwytu okna.
* Zwraca obiekty WindowObj zawierające szczegóły dotyczące głównych okien pasujących procesów.
* Obsługuje symbole wieloznaczne podczas wyszukiwania według nazwy procesu.

## Syntax

```powershell
Get-Window [[-ProcessName] <String>] [-ProcessId <Int32>] [-WindowHandle <Int64>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | Nazwa procesu, dla którego należy uzyskać informacje o oknie 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | Identyfikator procesu, dla którego chcesz uzyskać informacje o oknie |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | Uchwyt okna, dla którego uzyskać informacje |

## Examples

### Example 1

```powershell
Get-Window -ProcessName "notepad"
```

Pobiera informacje o oknie dla wszystkich procesów o nazwie "notepad".

### Example 2

```powershell
Get-Window -ProcessId 1234
```

Pobiera informacje o oknie dla procesu o ID 1234.

### Example 3

```powershell
Get-Window -WindowHandle 45678
```

Pobiera informacje o oknie dla uchwytu okna 45678.

## Parameter Details

### `-ProcessName <String>`

> Nazwa procesu, dla którego należy uzyskać informacje o oknie

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `Name` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-ProcessId <Int32>`

> Identyfikator procesu, dla którego chcesz uzyskać informacje o oknie

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `Id`, `PID` |
| **Accept wildcard characters?** | No |

<hr/>
### `-WindowHandle <Int64>`

> Uchwyt okna, dla którego uzyskać informacje

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `Handle`, `hWnd` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/CurrentUserHasElevatedRights.md)
- [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Enable-Screensaver.md)
- [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ActiveUser.md)
- [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ChildProcesses.md)
- [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ClipboardFiles.md)
- [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-CurrentFocusedProcess.md)
- [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-DesktopScalingFactor.md)
- [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ForegroundWindow.md)
- [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-KnownFolderPath.md)
- [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-MpCmdRunPath.md)
- [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-OpenedFileHandleProcesses.md)
- [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-PowershellMainWindow.md)
- [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-PowershellMainWindowProcess.md)
- [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WindowPosition.md)
- [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Initialize-ScheduledTaskScripts.md)
- [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-WindowsUpdate.md)
- [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Pop-Window.md)
- [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Push-Window.md)
- [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Save-DesktopScreenShot.md)
- [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Send-Key.md)
- [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Send-WakeOnLan.md)
- [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-ClipboardFiles.md)
- [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-ForegroundWindow.md)
- [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-KnownFolderPath.md)
- [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-MonitorPowerOff.md)
- [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-MonitorPowerOn.md)
- [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-TaskbarAlignment.md)
- [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-WindowPosition.md)
- [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-WindowPositionForSecondary.md)
- [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-WindowsWallpaper.md)
- [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-ProcessWithPriority.md)
- [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-PathUsingWindowsDefender.md)
