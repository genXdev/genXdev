# Set-TaskbarAlignment

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Настраивает выравнивание панели задач Windows 11+ между центральным и левым положением.

## Description

Устанавливает выравнивание панели задач в Windows 11 и более новых версиях путем изменения
раздела реестра 'TaskbarAl' по пути HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\
Explorer\Advanced. Выравнивание может быть установлено по центру (значение 1) или слева
(значение 0).

## Syntax

```powershell
Set-TaskbarAlignment -Justify <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Justify` | String | ✅ | — | 0 | — | Выравнивание панели задач (по центру или слева) |

## Examples

### Set-TaskbarAlignment -Justify Left Sets the Windows 11 taskbar to left alignment

```powershell
Set-TaskbarAlignment -Justify Left
Sets the Windows 11 taskbar to left alignment
```

### Set-TaskAlign Center -WhatIf Shows what would happen if taskbar was set to center alignment

```powershell
Set-TaskAlign Center -WhatIf
Shows what would happen if taskbar was set to center alignment
```

## Related Links

- [Set-TaskbarAlignment on GitHub](https://github.com/genXdev/genXdev)
