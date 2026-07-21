# Start-NextRefactor

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `nextrefactor`

## Synopsis

> Setzt eine Code-Umgestaltungssitzung fort oder startet sie neu.

## Description

Verwaltet Code-Refactoring-Vorgänge, indem Refactoring-Definitionen in Prioritätsreihenfolge verarbeitet werden. Behandelt Dateiauswahl, Fortschrittsverfolgung, Fehlerbehandlung und bietet interaktive Benutzersteuerung über den Refactoring-Prozess.

## Syntax

```powershell
Start-NextRefactor [[-Name] <String[]>] [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-CleanUpDeletedFiles] [-MarkAllCompleted] [-RedoLast] [-Reset] [-ResetLMSelections] [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | Der Name des Refactorings, akzeptiert Platzhalter 🌐 *Supports wildcards* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 1 | `@()` | Hinzuzufügende Dateinamen |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 2 | `@()` | Zu entfernende Dateinamen |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | Bereinigen Sie gelöschte Dateien |
| `-Reset` | SwitchParameter | — | — | Named | — | Beginnen Sie mit dem Anfang des Refactor-Sets |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Alle LLM-Auswahlen neu starten |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Alle Dateien als umgestaltet markieren |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Letzten Refactor wiederholen |
| `-Speak` | SwitchParameter | — | — | Named | — | Sprechen Sie die Details der nächsten Umgestaltung aus |

## Examples

### Start-NextRefactor -Name "RefactorProject" -Reset -CleanUpDeletedFiles Restarts refactoring for "RefactorProject" and removes deleted files.

```powershell
Start-NextRefactor -Name "RefactorProject" -Reset -CleanUpDeletedFiles
Restarts refactoring for "RefactorProject" and removes deleted files.
```

### nextrefactor -Name "*Test*" -Speak Processes all refactor sets matching "*Test*" pattern with speech enabled.

```powershell
nextrefactor -Name "*Test*" -Speak
Processes all refactor sets matching "*Test*" pattern with speech enabled.
```

## Parameter Details

### `-Name <String[]>`

> Der Name des Refactorings, akzeptiert Platzhalter

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@('*')` |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-FilesToAdd <IO.FileInfo[]>`

> Hinzuzufügende Dateinamen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesToRemove <IO.FileInfo[]>`

> Zu entfernende Dateinamen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CleanUpDeletedFiles`

> Bereinigen Sie gelöschte Dateien

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reset`

> Beginnen Sie mit dem Anfang des Refactor-Sets

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetLMSelections`

> Alle LLM-Auswahlen neu starten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkAllCompleted`

> Alle Dateien als umgestaltet markieren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RedoLast`

> Letzten Refactor wiederholen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> Sprechen Sie die Details der nächsten Umgestaltung aus

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-Refactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/de-DE/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/de-DE/VSCode.md)
