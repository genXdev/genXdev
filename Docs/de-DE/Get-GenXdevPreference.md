# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference`

## Synopsis

> Ruft einen Voreinstellungswert aus dem GenXdev-Voreinstellungsspeicher ab.

## Description

* Implementiert ein zweistufiges Präferenzabrufsystem.
* Prüft zuerst den lokalen Speicher auf einen Präferenzwert.
* Wenn nicht gefunden, wird auf den Standardspeicher zurückgegriffen.
* Wenn immer noch nicht gefunden, wird der angegebene Standardwert zurückgegeben.

## Syntax

```powershell
Get-GenXdevPreference -Name <String> [[-DefaultValue] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Der Name der abzurufenden Einstellung |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | 1 | — | Der Standardwert, wenn die Einstellung nicht gefunden wird |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Alternative in der Sitzung gespeicherte Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. verwenden |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Die Sitzungseinstellung (Globale Variable) löschen, bevor abgerufen wird |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | In der Sitzung gespeicherte alternative Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. nicht verwenden |

## Examples

### Example 1

```powershell
Get-GenXdevPreference -Name "Theme" -DefaultValue "Dark"
```

Ruft die Einstellung 'Theme' mit Rückfall auf die Standardeinstellung 'Dark' ab.

### Example 2

```powershell
getPreference "Theme" "Dark"
```

Verwendet den Alias und positionsbezogene Parameter.

## Parameter Details

### `-Name <String>`

> Der Name der abzurufenden Einstellung

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DefaultValue <String>`

> Der Standardwert, wenn die Einstellung nicht gefunden wird

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `DefaultPreference` |
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

- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevPreferencesDatabasePath.md)
