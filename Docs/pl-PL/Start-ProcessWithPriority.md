# Start-ProcessWithPriority

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `nice`

## Synopsis

> Uruchamia proces z określonym poziomem priorytetu.

## Description

* Uruchamia plik wykonywalny z możliwością ustawienia poziomu priorytetu i zapewnia
  opcje oczekiwania i obsługi procesu.
* Rozszerza Start-Process o dodatkowe funkcje do kontroli priorytetu procesu
  i zachowania podczas wykonywania.

## Syntax

```powershell
Start-ProcessWithPriority -FilePath <String> [[-ArgumentList] <String[]>] [[-Priority] <String>] [-NoWait] [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Ścieżka do pliku wykonywalnego do uruchomienia |
| `-ArgumentList` | String[] | — | — | 1 | — | Argumenty do przekazania do pliku wykonywalnego |
| `-Priority` | String | — | — | 2 | — | Poziom priorytetu procesu |
| `-NoWait` | SwitchParameter | — | — | Named | `False` | Nie czekaj na zakończenie procesu |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Zwróć obiekt procesu |

## Examples

### Example 1

```powershell
Start-ProcessWithPriority -FilePath "notepad.exe" -Priority "Low" -NoWait
```

Uruchamia Notatnik z niskim priorytetem i natychmiast kończy działanie.

### Example 2

```powershell
nice notepad.exe -Priority High
```

Używa aliasu 'nice', aby uruchomić proces z wysokim priorytetem.

## Parameter Details

### `-FilePath <String>`

> Ścieżka do pliku wykonywalnego do uruchomienia

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ArgumentList <String[]>`

> Argumenty do przekazania do pliku wykonywalnego

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Priority <String>`

> Poziom priorytetu procesu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoWait`

> Nie czekaj na zakończenie procesu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Zwróć obiekt procesu

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
- [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Window.md)
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
- [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-PathUsingWindowsDefender.md)
