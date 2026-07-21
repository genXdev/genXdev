# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference`

## Synopsis

> Entfernt einen Präferenzwert aus dem GenXdev-Präferenzspeicher.

## Description

* Entfernt einen Präferenzwert aus dem lokalen Speicher und optional aus dem Standardspeicher.
* Bietet zwei Parametersätze – einen nur für die lokale Entfernung und einen anderen für die Entfernung aus dem lokalen und dem Standardspeicher.
* Stellt eine ordnungsgemäße Synchronisierung bei der Änderung des Standardspeichers sicher.

## Syntax

```powershell
Remove-GenXdevPreference -Name <String> [-ClearSession] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Der Name der zu entfernenden Einstellung |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | Wechseln, um die Einstellung auch aus den Standardeinstellungen zu entfernen |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Alternative in der Sitzung gespeicherte Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. verwenden |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Die Sitzungseinstellung (Globale Variable) löschen, bevor abgerufen wird |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | In der Sitzung gespeicherte alternative Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. nicht verwenden |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

Entfernt die Einstellung „Design“ nur aus dem lokalen Speicher.

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

Entfernt die Einstellung „Design“ sowohl aus den lokalen als auch aus den Standardspeichern.

## Parameter Details

### `-Name <String>`

> Der Name der zu entfernenden Einstellung

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveDefault`

> Wechseln, um die Einstellung auch aus den Standardeinstellungen zu entfernen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXdevPreferencesDatabasePath.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-GenXdevPreferencesDatabasePath.md)
