# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ruft den konfigurierten Datenbankpfad für Präferenzdatendateien ab, die in GenXdev.Data-Operationen verwendet werden.

## Description

* Ruft den globalen Datenbankpfad ab, der vom Modul GenXdev.Data für verschiedene Einstellungsspeicher und Datenoperationen verwendet wird.
* Überprüft zuerst globale Variablen (außer wenn SkipSession angegeben ist), greift dann auf persistente Einstellungen zurück und verwendet zuletzt Systemstandardwerte.

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Optionale Überschreibung des Datenbankpfads |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Alternative in der Sitzung gespeicherte Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. verwenden |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Die Sitzungseinstellung (Globale Variable) löschen, bevor abgerufen wird |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | In der Sitzung gespeicherte alternative Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. nicht verwenden |

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

Überspringt die Sitzungsvariable und verwendet dauerhafte Einstellungen.

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

Löscht die Sitzungseinstellung, bevor der Pfad abgerufen wird.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> Optionale Überschreibung des Datenbankpfads

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Alternative in der Sitzung gespeicherte Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. verwenden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Die Sitzungseinstellung (Globale Variable) löschen, bevor abgerufen wird

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> In der Sitzung gespeicherte alternative Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. nicht verwenden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXdevPreferenceNames.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevPreferencesDatabasePath.md)
