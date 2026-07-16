# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-GenXdevDefaultPreference [-Name] <string> [[-Value] <string>] [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | De naam van de voorkeur die in standaardwaarden moet worden ingesteld |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | De waarde die moet worden opgeslagen voor de voorkeur |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Databasepad voor voorkeursgegevensbestanden |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Gebruik alternatieve instellingen opgeslagen in sessie voor Data voorkeuren zoals Taal, Database paden, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Het sessie-instelling (Globale variabele) wissen voordat u ophaalt |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Gebruik geen alternatieve instellingen opgeslagen in sessie voor Data-voorkeuren zoals Taal, Database-paden, etc. |

## Related Links

- [Set-GenXdevDefaultPreference on GitHub](https://github.com/genXdev/genXdev)
