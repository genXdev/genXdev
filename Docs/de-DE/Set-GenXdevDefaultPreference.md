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
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | Der Name der Einstellung, die in den Voreinstellungen festgelegt werden soll |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | Der für die Einstellung zu speichernde Wert |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Datenbankpfad für Präferenzdatendateien |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Sitzungseinstellung (globale Variable) vor dem Abrufen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Verwenden Sie keine alternativen, in der Sitzung gespeicherten Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. |

## Related Links

- [Set-GenXdevDefaultPreference on GitHub](https://github.com/genXdev/genXdev)
