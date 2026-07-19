# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> Проверяет актуальность обновлений Windows и при необходимости устанавливает доступные обновления.

## Description

Эта функция проверяет обновления Windows, обновления пакетов winget и обновления модулей PowerShell. Она может отображать доступные обновления или автоматически устанавливать их. Для установки обновлений Windows требуются права администратора, и при необходимости функция может перезагрузить систему, если обновления требуют перезагрузки.

## Syntax

```powershell
Invoke-WindowsUpdate [[-Criteria] <String>] [-AutoReboot] [-GroupByCategory] [-IncludeDrivers] [-Install] [-NoBanner] [-NoRebootCheck] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Install` | SwitchParameter | — | — | Named | — | Автоматически установить доступные обновления Windows |
| `-AutoReboot` | SwitchParameter | — | — | Named | — | Автоматически перезагружать, если для обновления требуется перезагрузка |
| `-Criteria` | String | — | — | 0 | `"IsInstalled=0 and IsHidden=0"` | Пользовательские критерии поиска обновлений Windows |
| `-IncludeDrivers` | SwitchParameter | — | — | Named | — | Включить драйверы в поиск обновлений |
| `-GroupByCategory` | SwitchParameter | — | — | Named | — | Группировка и цветовой вывод по категории обновления |
| `-NoBanner` | SwitchParameter | — | — | Named | — | Отключить вывод баннера/статуса |
| `-NoRebootCheck` | SwitchParameter | — | — | Named | — | Пропустить проверку/отчет о необходимости перезагрузки |

## Examples

### Invoke-WindowsUpdate

```powershell
Invoke-WindowsUpdate
```

Проверяет наличие обновлений Windows и winget без их установки.

### Invoke-WindowsUpdate -Install

```powershell
Invoke-WindowsUpdate -Install
```

Автоматически устанавливает все доступные обновления Windows и winget.

### updatewindows -Install -AutoReboot

```powershell
updatewindows -Install -AutoReboot
```

Устанавливает все обновления и автоматически перезагружается при необходимости, используя псевдоним.

### Invoke-WindowsUpdate -GroupByCategory

```powershell
Invoke-WindowsUpdate -GroupByCategory
```

Отображает доступные обновления, сгруппированные по категориям для лучшей организации.

### Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"

```powershell
Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"
```

Проверяет наличие обновлений, включая драйверы, с использованием пользовательских критериев поиска.

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
