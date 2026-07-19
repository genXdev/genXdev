# Set-TaskbarAlignment

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Konfiguriert die Ausrichtung der Taskleiste unter Windows 11+ zwischen zentriert und links.

## Description

Legt die Taskleistenausrichtung in Windows 11 und neueren Versionen fest, indem der Registrierungsschlüssel 'TaskbarAl' unter HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced geändert wird. Die Ausrichtung kann entweder auf Mitte (Wert 1) oder links (Wert 0) eingestellt werden.

## Syntax

```powershell
Set-TaskbarAlignment -Justify <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Justify` | String | ✅ | — | 0 | — | Die Taskleistenausrichtung (Mitte oder Links) |

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
