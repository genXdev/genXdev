# Remove-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-Refactor -Name <String[]> [-RemoveDefault] [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | De naam van de refactor, accepteert wildcards 🌐 *Supports wildcards* |
| `-RemoveDefault` | SwitchParameter | — | — | 1 | — | Overschakelen om ook de standaard refactor-set te verwijderen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | Named | — | De standaardwaarde als voorkeur niet wordt gevonden |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor Data voorkeuren zoals Taal, Database paden, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Het sessie-instelling (Globale variabele) wissen voordat u ophaalt |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Gebruik geen alternatieve instellingen opgeslagen in sessie voor Data-voorkeuren zoals Taal, Database-paden, etc. |

## Related Links

- [Remove-Refactor on GitHub](https://github.com/genXdev/genXdev)
