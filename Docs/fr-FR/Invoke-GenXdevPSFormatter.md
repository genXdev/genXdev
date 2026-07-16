# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-GenXdevPSFormatter -Path <String> [-Range <Int32[]>] [-Recurse] [-Settings <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Spécifie le chemin du fichier de script à formater. |
| `-Settings` | Object | — | — | Named | — | Une table de hachage de paramètres ou un chemin vers un fichier de données PowerShell (.psd1) qui contient les paramètres de formatage. |
| `-Range` | Int32[] | — | — | Named | — | The range within which formatting should take place as an array of four integers: starting line number, starting column number, ending line number, ending column number. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Traiter récursivement les fichiers dans les sous-répertoires. |

## Related Links

- [Invoke-GenXdevPSFormatter on GitHub](https://github.com/genXdev/genXdev)
