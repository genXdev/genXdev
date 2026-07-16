# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SkipSession] [-SessionOnly] [-ClearSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Een databasepad waar voorkeursbestanden zich bevinden |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Gebruik geen alternatieve instellingen opgeslagen in sessie voor Data-voorkeuren zoals Taal, Database-paden, etc. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Wanneer gespecificeerd, slaat de instelling alleen op in de huidige sessie (globale variabele) zonder deze te bewaren in voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Wanneer opgegeven, wist alleen de sessie-instelling (globale variabele) zonder permanente voorkeuren te beïnvloeden |

## Related Links

- [Set-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
