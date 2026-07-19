# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference

## Synopsis

> Entfernt einen Präferenzwert aus dem GenXdev-Präferenzspeicher.

## Description

* Entfernt einen Präferenzwert aus dem lokalen Speicher und optional aus dem Standardspeicher.
* Bietet zwei Parametersätze – einen für das lokale Entfernen und einen weiteren für das Entfernen aus dem lokalen und dem Standardspeicher.
* Stellt eine ordnungsgemäße Synchronisierung beim Ändern des Standardspeichers sicher.

## Syntax

```powershell
Remove-GenXdevPreference [-Name] <string> [-RemoveDefault] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Der Name der zu entfernenden Einstellung |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | Umschalten, um die Einstellung auch aus den Standardeinstellungen zu entfernen |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Sitzungseinstellung (globale Variable) vor dem Abrufen löschen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Verwenden Sie keine alternativen, in der Sitzung gespeicherten Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

Entfernt die Einstellung „Theme“ nur aus dem lokalen Speicher.

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

Entfernt die "Theme"-Einstellung sowohl aus dem lokalen als auch aus dem Standard-Speicher.

## Related Links

- [Remove-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
