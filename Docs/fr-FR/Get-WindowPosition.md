# Get-WindowPosition

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `gwp

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-WindowPosition on GitHub](https://github.com/genXdev/genXdev)
