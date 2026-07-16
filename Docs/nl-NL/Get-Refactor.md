# Get-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `refactors

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-Refactor [[-Name] <String[]>] [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | Patro(o)n(en) om te zoeken naar refactor-definities 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-DefaultValue` | String | — | — | Named | — | De standaardwaarde als voorkeur niet wordt gevonden |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor Data voorkeuren zoals Taal, Database paden, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Het sessie-instelling (Globale variabele) wissen voordat u ophaalt |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Gebruik geen alternatieve instellingen opgeslagen in sessie voor Data-voorkeuren zoals Taal, Database-paden, etc. |

## Outputs

- `GenXdev.Helpers.RefactorDefinition[]`

## Related Links

- [Get-Refactor on GitHub](https://github.com/genXdev/genXdev)
