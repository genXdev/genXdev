# Set-TaskbarAlignment

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Configureert de uitlijning van de taakbalk in Windows 11+ tussen centreren en links.

## Description

Stelt de taakbalkuitlijning in Windows 11 en nieuwere versies in door het registeritem 'TaskbarAl' onder HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced te wijzigen. De uitlijning kan worden ingesteld op gecentreerd (waarde 1) of links (waarde 0).

## Syntax

```powershell
Set-TaskbarAlignment -Justify <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Justify` | String | ✅ | — | 0 | — | Taakbalkuitlijning (Centreren of Links) |

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
