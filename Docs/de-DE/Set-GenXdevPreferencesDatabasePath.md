# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Legt den Datenbankpfad für die in GenXDev.Data-Vorgängen verwendeten Einstellungen fest.

## Description

* Konfiguriert den globalen Datenbankpfad, der vom Modul GenXdev.Data für verschiedene Einstellungsspeicher und Datenoperationen verwendet wird.
* Die Einstellungen werden in der aktuellen Sitzung gespeichert (mithilfe globaler Variablen) und können aus der Sitzung gelöscht werden (mithilfe von -ClearSession).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Ein Datenbankpfad, in dem Präferenzdatendateien gespeichert sind |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | In der Sitzung gespeicherte alternative Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. nicht verwenden |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Wenn angegeben, wird die Einstellung nur in der aktuellen Sitzung (globale Variable) gespeichert, ohne sie in den Einstellungen beizubehalten |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Wenn angegeben, wird nur die Sitzungseinstellung (globale Variable) gelöscht, ohne dauerhafte Einstellungen zu beeinflussen |

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

Legt den Pfad nur für die aktuelle Sitzung fest, ohne ihn zu speichern.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Löscht die globale Variable für den Datenbankpfad.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> Ein Datenbankpfad, in dem Präferenzdatendateien gespeichert sind

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
### `-SessionOnly`

> Wenn angegeben, wird die Einstellung nur in der aktuellen Sitzung (globale Variable) gespeichert, ohne sie in den Einstellungen beizubehalten

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

> Wenn angegeben, wird nur die Sitzungseinstellung (globale Variable) gelöscht, ohne dauerhafte Einstellungen zu beeinflussen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevPreference.md)
