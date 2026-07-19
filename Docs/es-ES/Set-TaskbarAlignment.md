# Set-TaskbarAlignment

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Configura la alineación de la barra de tareas de Windows 11+ entre las posiciones centrada e izquierda.

## Description

Establece la alineación de la barra de tareas en Windows 11 y versiones más recientes modificando la clave del registro 'TaskbarAl' bajo HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced. La alineación puede configurarse como centrada (valor 1) o izquierda (valor 0).

## Syntax

```powershell
Set-TaskbarAlignment -Justify <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Justify` | String | ✅ | — | 0 | — | Alineación de la barra de tareas (Centro o Izquierda) |

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
