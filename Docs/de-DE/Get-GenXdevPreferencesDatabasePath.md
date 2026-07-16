# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Optionale Überschreibung des Datenbankpfads |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Sitzungseinstellung (globale Variable) vor dem Abrufen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Verwenden Sie keine alternativen, in der Sitzung gespeicherten Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. |

## Related Links

- [Get-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
