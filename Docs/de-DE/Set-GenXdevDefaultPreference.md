# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault

## Synopsis

> Legt einen Standard-Einstellungswert im GenXdev-Einstellungsspeicher fest.

## Description

* Verwaltet Standardvoreinstellungen im GenXdev-Voreinstellungssystem.
* Behandelt das Speichern von Werten, das Entfernen von Voreinstellungen, wenn Werte leer sind, und stellt sicher, dass Änderungen im gesamten System synchronisiert werden.
* Unterstützt Nullwerte, indem die Voreinstellung in solchen Fällen vollständig entfernt wird.

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

## Examples

### Example 1

```powershell
Set-GenXdevDefaultPreference -Name "Theme" -Value "Dark"
```

Setzt die Standard-Designpräferenz auf "Dunkel".

### Example 2

```powershell
setPreferenceDefault "EmailNotifications" "Disabled"
```

Verwendet den Alias, um E-Mail-Benachrichtigungen in den Standardeinstellungen zu deaktivieren.

## Related Links

- [Set-GenXdevDefaultPreference on GitHub](https://github.com/genXdev/genXdev)
