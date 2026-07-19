# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Legt den Datenbankpfad für die in GenXdev.Data-Operationen verwendeten Einstellungen fest.

## Description

* Konfiguriert den globalen Datenbankpfad, der vom Modul GenXdev.Data für
  verschiedene Speichervorgänge von Einstellungen und Datenoperationen verwendet wird.
* Einstellungen werden in der aktuellen Sitzung gespeichert (mithilfe von Global-Variablen) und
  können aus der Sitzung gelöscht werden (mithilfe von -ClearSession).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SkipSession] [-SessionOnly] [-ClearSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Ein Datenbankpfad, in dem Präferenzdatendateien gespeichert sind |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Verwenden Sie keine alternativen, in der Sitzung gespeicherten Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Wenn angegeben, speichert die Einstellung nur in der aktuellen Sitzung (globale Variable), ohne sie in den Einstellungen zu speichern |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Wenn angegeben, löscht nur die Sitzungseinstellung (globale Variable), ohne die dauerhaften Einstellungen zu beeinträchtigen |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

Legt den Datenbankpfad in der aktuellen Sitzung fest (Globale Variable).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

Legt den Datenbankpfad mithilfe des Positionsparameters fest.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

Legt den Pfad nur für die aktuelle Sitzung fest, ohne ihn dauerhaft zu speichern.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Löscht die globale Variable für den Datenbankpfad.

## Related Links

- [Set-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
