# Set-TaskbarAlignment

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Configura o alinhamento da barra de tarefas do Windows 11+ entre as posições central e esquerda.

## Description

Define o alinhamento da barra de tarefas no Windows 11 e versões mais recentes modificando a chave do registro 'TaskbarAl' em HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ Explorer\Advanced. O alinhamento pode ser definido como centralizado (valor 1) ou à esquerda (valor 0).

## Syntax

```powershell
Set-TaskbarAlignment -Justify <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Justify` | String | ✅ | — | 0 | — | Alinhamento da barra de tarefas (Centralizado ou Esquerda) |

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
