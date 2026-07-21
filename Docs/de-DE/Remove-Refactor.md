# Remove-Refactor

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Entfernt Refaktorsets aus dem GenXdev-Präferenzsystem.

## Description

Verwaltet Refaktorierungssets im GenXdev-Präferenzsystem, indem angegebene Einträge entfernt werden. Funktioniert sowohl mit benutzerdefinierten als auch mit Standard-Refaktorierungssets. Standardsets sind geschützt, es sei denn, ihre Entfernung wird ausdrücklich erlaubt. Alle Refaktorierungssets werden im Präferenzsystem durch das Präfix "refactor_set_" identifiziert.

## Syntax

```powershell
Remove-Refactor -Name <String[]> [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Der Name des Refactorings, akzeptiert Platzhalter 🌐 *Supports wildcards* |
| `-RemoveDefault` | SwitchParameter | — | — | Named | — | Wechseln Sie, um auch den standardmäßigen Refactor-Satz zu entfernen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | Named | — | Der Standardwert, wenn die Einstellung nicht gefunden wird |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Alternative in der Sitzung gespeicherte Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. verwenden |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Die Sitzungseinstellung (Globale Variable) löschen, bevor abgerufen wird |
| `-SkipSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. nicht verwenden |

## Examples

### Remove-Refactor -Name "CustomRefactor" -RemoveDefault Removes a specific refactor set named "CustomRefactor" and allows removal of default sets if matched

```powershell
Remove-Refactor -Name "CustomRefactor" -RemoveDefault
Removes a specific refactor set named "CustomRefactor" and allows removal
of default sets if matched
```

## Parameter Details

### `-Name <String[]>`

> Der Name des Refactorings, akzeptiert Platzhalter

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-RemoveDefault`

> Wechseln Sie, um auch den standardmäßigen Refactor-Satz zu entfernen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
### `-DefaultValue <String>`

> Der Standardwert, wenn die Einstellung nicht gefunden wird

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `DefaultPreference` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Alternative in der Sitzung gespeicherte Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. verwenden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Refactor.md)
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/de-DE/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/de-DE/Publish-ReleaseNotesToManifest.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/de-DE/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/de-DE/VSCode.md)
