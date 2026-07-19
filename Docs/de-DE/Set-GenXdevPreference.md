# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference

## Synopsis

> Setzt einen Präferenzwert im GenXdev-Präferenzspeicher.

## Description

* Verwaltet Präferenzen im lokalen GenXdev-Speicher.
* Kann neue Präferenzen festlegen, bestehende aktualisieren oder entfernen, wenn ein
  null/leerer Wert angegeben wird.
* Präferenzen werden mit der Synchronisierungseinstellung "Lokal" gespeichert.

## Syntax

```powershell
Set-GenXdevPreference [-Name] <string> [[-Value] <string>] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Der Name der einzustellenden Präferenz |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | Der für die Einstellung zu speichernde Wert |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Sitzungseinstellung (globale Variable) vor dem Abrufen löschen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Verwenden Sie keine alternativen, in der Sitzung gespeicherten Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. |

## Examples

### Example 1

```powershell
Set-GenXdevPreference -Name "Theme" -Value "Dark"
```

Setzt die Einstellung "Theme" auf "Dark" im lokalen Speicher.

### Example 2

```powershell
setPreference Theme Light
```

Verwendet den Alias und Positionsparameter, um die Theme-Einstellung festzulegen.

## Related Links

- [Set-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
