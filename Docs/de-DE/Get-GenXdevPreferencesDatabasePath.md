# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ruft den konfigurierten Datenbankpfad für Präferenzdatendateien ab, die in GenXdev.Data-Operationen verwendet werden.

## Description

* Ruft den globalen Datenbankpfad ab, der vom GenXdev.Data-Modul für
  verschiedene Speicher- und Datenoperationen von Einstellungen verwendet wird.
* Überprüft zuerst globale Variablen (sofern nicht SkipSession angegeben ist),
  fällt dann auf dauerhafte Einstellungen zurück und verwendet schließlich Systemstandards.

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

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

Ruft den Datenbankpfad aus globalen Variablen oder Einstellungen ab.

### Example 2

```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

Überspringt die Session-Variable und verwendet persistente Präferenzen.

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

Löscht die Sitzungseinstellung, bevor der Pfad abgerufen wird.

## Related Links

- [Get-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
