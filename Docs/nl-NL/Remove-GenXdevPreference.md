# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-GenXdevPreference [-Name] <string> [-RemoveDefault] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | De naam van de voorkeur die verwijderd moet worden |
| `-RemoveDefault` | SwitchParameter | — | — | 1 | `False` | Schakel ook over om de voorkeur uit standaardwaarden te verwijderen |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Gebruik alternatieve instellingen opgeslagen in sessie voor Data voorkeuren zoals Taal, Database paden, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Het sessie-instelling (Globale variabele) wissen voordat u ophaalt |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Gebruik geen alternatieve instellingen opgeslagen in sessie voor Data-voorkeuren zoals Taal, Database-paden, etc. |

## Related Links

- [Remove-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
