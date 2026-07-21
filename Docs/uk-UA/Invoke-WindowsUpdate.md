# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows`

## Synopsis

> Перевіряє, чи Windows має всі оновлення, і за бажанням встановлює доступні оновлення.

## Description

Ця функція перевіряє наявність оновлень Windows, оновлень пакетів winget і оновлень модулів PowerShell. Вона може відображати доступні оновлення або автоматично їх встановлювати. Функція вимагає прав адміністратора для встановлення оновлень Windows і може за бажанням перезавантажити систему, якщо для оновлень потрібне перезавантаження.

## Syntax

```powershell
Invoke-WindowsUpdate [[-Criteria] <String>] [-AutoReboot] [-GroupByCategory] [-IncludeDrivers] [-Install] [-NoBanner] [-NoRebootCheck] [-ProcessOptionalUpdates] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Install` | SwitchParameter | — | — | Named | — | Автоматично встановлювати доступні оновлення Windows |
| `-AutoReboot` | SwitchParameter | — | — | Named | — | Автоматично перезавантажувати, якщо для оновлень потрібне перезавантаження |
| `-Criteria` | String | — | — | 0 | `"IsInstalled=0 and IsHidden=0 and AutoSelectOnWebSites=1"` | Користувацькі критерії пошуку оновлень Windows |
| `-IncludeDrivers` | SwitchParameter | — | — | Named | — | Включити драйвери в пошук оновлень |
| `-ProcessOptionalUpdates` | SwitchParameter | — | — | Named | — | Включити необов’язкові оновлення та пропозицію встановити кожне з них |
| `-GroupByCategory` | SwitchParameter | — | — | Named | — | Групувати та кольорово виділяти вихідні дані за категорією оновлень |
| `-NoBanner` | SwitchParameter | — | — | Named | — | Вимкнення виведення банера/статусу |
| `-NoRebootCheck` | SwitchParameter | — | — | Named | — | Пропустити перевірку/сповіщення про потребу у перезавантаженні |

## Examples

### Invoke-WindowsUpdate

```powershell
Invoke-WindowsUpdate
```

Перевіряє наявність доступних оновлень Windows та winget без їх встановлення.

### Invoke-WindowsUpdate -Install

```powershell
Invoke-WindowsUpdate -Install
```

Автоматично встановлює всі доступні оновлення Windows та winget.

### updatewindows -Install -AutoReboot

```powershell
updatewindows -Install -AutoReboot
```

Встановлює всі оновлення та автоматично перезавантажує, якщо потрібно, за допомогою псевдоніма.

### Invoke-WindowsUpdate -GroupByCategory

```powershell
Invoke-WindowsUpdate -GroupByCategory
```

Відображає доступні оновлення, згруповані за категоріями для кращої організації.

### Invoke-WindowsUpdate -Install -ProcessOptionalUpdates

```powershell
Invoke-WindowsUpdate -Install -ProcessOptionalUpdates
```

Автоматично встановлює всі важливі оновлення та пропонує кожне додаткове оновлення окремо, дозволяючи вибіркове встановлення додаткових оновлень.

### Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"

```powershell
Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"
```

Перевіряє наявність оновлень, включаючи драйвери, за користувацькими критеріями пошуку.

## Parameter Details

### `-Install`

> Автоматично встановлювати доступні оновлення Windows

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoReboot`

> Автоматично перезавантажувати, якщо для оновлень потрібне перезавантаження

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Criteria <String>`

> Користувацькі критерії пошуку оновлень Windows

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `"IsInstalled=0 and IsHidden=0 and AutoSelectOnWebSites=1"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeDrivers`

> Включити драйвери в пошук оновлень

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ProcessOptionalUpdates`

> Включити необов’язкові оновлення та пропозицію встановити кожне з них

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GroupByCategory`

> Групувати та кольорово виділяти вихідні дані за категорією оновлень

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBanner`

> Вимкнення виведення банера/статусу

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRebootCheck`

> Пропустити перевірку/сповіщення про потребу у перезавантаженні

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

- [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/CurrentUserHasElevatedRights.md)
- [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Enable-Screensaver.md)
- [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ActiveUser.md)
- [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ChildProcesses.md)
- [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ClipboardFiles.md)
- [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-CurrentFocusedProcess.md)
- [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-DesktopScalingFactor.md)
- [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ForegroundWindow.md)
- [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-KnownFolderPath.md)
- [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-MpCmdRunPath.md)
- [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-OpenedFileHandleProcesses.md)
- [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-PowershellMainWindow.md)
- [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-PowershellMainWindowProcess.md)
- [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Window.md)
- [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-WindowPosition.md)
- [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Initialize-ScheduledTaskScripts.md)
- [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Pop-Window.md)
- [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Push-Window.md)
- [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Save-DesktopScreenShot.md)
- [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Send-Key.md)
- [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Send-WakeOnLan.md)
- [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-ClipboardFiles.md)
- [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-ForegroundWindow.md)
- [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-KnownFolderPath.md)
- [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-MonitorPowerOff.md)
- [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-MonitorPowerOn.md)
- [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-TaskbarAlignment.md)
- [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-WindowPosition.md)
- [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-WindowPositionForSecondary.md)
- [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-WindowsWallpaper.md)
- [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-ProcessWithPriority.md)
- [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Test-PathUsingWindowsDefender.md)
