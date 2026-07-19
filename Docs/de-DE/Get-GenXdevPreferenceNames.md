# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames

## Synopsis

> Ruft alle Präferenznamen aus dem Sitzungsspeicher und den Datenbankspeichern ab.

## Description

* Ruft eine eindeutige Liste von Präferenznamen ab, indem Schlüssel aus dem
  Sitzungsspeicher (globale Variablen) sowie aus dem lokalen und dem Standard-
  Präferenzspeicher kombiniert werden.
* Berücksichtigt Parameter für die Sitzungsverwaltung, um zu steuern, welche
  Quellen abgefragt werden.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Sitzungseinstellung (globale Variable) vor dem Abrufen löschen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Verwenden Sie keine alternativen, in der Sitzung gespeicherten Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

Gibt ein sortiertes Array mit eindeutigen Präferenznamen aus dem Sitzungsspeicher und beiden Speichern unter Verwendung des angegebenen Datenbankpfads zurück.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

Gibt nur Präferenznamen aus dem Sitzungsspeicher zurück.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

Gibt nur Präferenznamen aus Datenbankspeichern zurück.

## Related Links

- [Get-GenXdevPreferenceNames on GitHub](https://github.com/genXdev/genXdev)
