# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames`

## Synopsis

> Ruft alle Präferenznamen aus dem Sitzungsspeicher und den Datenbankspeichern ab.

## Description

* Ruft eine eindeutige Liste von Voreinstellungsnamen ab, indem Schlüssel aus dem Sitzungsspeicher (globalen Variablen) und sowohl dem lokalen als auch dem standardmäßigen Voreinstellungsspeicher kombiniert werden.
* Berücksichtigt die Parameter der Sitzungsverwaltung, um zu steuern, welche Quellen abgefragt werden.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Alternative in der Sitzung gespeicherte Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. verwenden |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Die Sitzungseinstellung (Globale Variable) löschen, bevor abgerufen wird |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | In der Sitzung gespeicherte alternative Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. nicht verwenden |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

Gibt ein sortiertes Array eindeutiger Einstellungsnamen aus dem Sitzungsspeicher und beiden Stores zurück, wobei der angegebene Datenbankpfad verwendet wird.

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

## Parameter Details

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
### `-PreferencesDatabasePath <String>`

> Datenbankpfad für Präferenzdatendateien

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
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
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevPreferencesDatabasePath.md)
