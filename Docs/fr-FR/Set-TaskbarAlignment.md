# Set-TaskbarAlignment

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Configure l'alignement de la barre des tâches Windows 11+ entre les positions centrée et gauche.

## Description

Définit l'alignement de la barre des tâches dans Windows 11 et les versions ultérieures en modifiant la clé de registre 'TaskbarAl' sous HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced. L'alignement peut être défini sur centré (valeur 1) ou à gauche (valeur 0).

## Syntax

```powershell
Set-TaskbarAlignment -Justify <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Justify` | String | ✅ | — | 0 | — | Alignement de la barre des tâches (Centré ou Gauche) |

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
