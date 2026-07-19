# Get-WindowPosition

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `gwp

## Synopsis

> Obtient la position et les informations d'état des fenêtres.

## Description

Récupère des informations détaillées sur le positionnement, la taille, le placement sur le moniteur, l'état d'ancrage et le statut de focus des fenêtres pour des processus ou des handles de fenêtre spécifiés.

## Syntax

```powershell
Get-WindowPosition [[-ProcessName] <String>] [<CommonParameters>]

Get-WindowPosition [-Process <Diagnostics.Process>] [<CommonParameters>]

Get-WindowPosition [-WindowHelper <GenXdev.Helpers.WindowObj[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByValue, ByPropertyName) | 0 | — | Le nom du processus de la fenêtre pour obtenir la position *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Process` | Diagnostics.Process | — | ✅ (ByValue, ByPropertyName) | Named | — | Le processus de la fenêtre pour obtenir la position *(Parameter set: )* |
| `-WindowHelper` | GenXdev.Helpers.WindowObj[] | — | ✅ (ByValue, ByPropertyName) | Named | — | Objet d'aide Get-Window pour la manipulation directe des fenêtres *(Parameter set: )* |

## Examples

### Get-WindowPosition -ProcessName notepad Gets position information for all notepad windows

```powershell
Get-WindowPosition -ProcessName notepad
Gets position information for all notepad windows
```

### Get-Process notepad | Get-WindowPosition Gets position information for notepad processes via pipeline

```powershell
Get-Process notepad | Get-WindowPosition
Gets position information for notepad processes via pipeline
```

### Get-Window -ProcessName notepad | Get-WindowPosition Gets position information using window helper objects

```powershell
Get-Window -ProcessName notepad | Get-WindowPosition
Gets position information using window helper objects
```

## Related Links

- [Get-WindowPosition on GitHub](https://github.com/genXdev/genXdev)
