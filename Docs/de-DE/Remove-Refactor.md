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
| `-Name` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Der Name des Refactorings, akzeptiert Platzhalter 🌐 *Supports wildcards* |
| `-RemoveDefault` | SwitchParameter | — | — | 1 | — | Schalten Sie um, um auch das Standard-Refactor-Set zu entfernen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | Named | — | Der Standardwert, wenn die Einstellung nicht gefunden wird |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Sitzungseinstellung (globale Variable) vor dem Abrufen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Verwenden Sie keine alternativen, in der Sitzung gespeicherten Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. |

## Related Links

- [Remove-Refactor on GitHub](https://github.com/genXdev/genXdev)
