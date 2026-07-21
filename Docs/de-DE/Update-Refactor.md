# Update-Refactor

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `updaterefactor`

## Synopsis

> Aktualisiert und verwaltet Refactoring-Sets, einschließlich Dateiauswahl und -verarbeitung.

## Description

Bietet umfassende Verwaltung von Refactoring-Sets durch:
- Hinzufügen oder Entfernen von Dateien aus Verarbeitungswarteschlangen
- Bereinigen gelöschter Dateien aus dem Set
- Verwalten von Zustandsinformationen und Fortschrittsverfolgung
- Verarbeiten von LLM-basierter Dateiauswahl und -verarbeitung
- Unterstützung sowohl automatischer als auch manueller Dateiverwaltung
- Führen detaillierter Protokolle aller Vorgänge
- Graceful-Umgang mit gelöschten Dateien (übersprungen, außer wenn CleanUpDeletedFiles verwendet wird)

## Syntax

```powershell
Update-Refactor [[-Name] <String[]>] [<CommonParameters>]

Update-Refactor [[-Refactor] <GenXdev.Helpers.RefactorDefinition[]>] [<CommonParameters>]

Update-Refactor [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AskBeforeLLMSelection] [-CleanUpDeletedFiles] [-Clear] [-ClearLog] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-KeysToSend <String[]>] [-LLMQueryType <String>] [-MarkAllCompleted] [-Model <String>] [-NoSupportForJsonSchema <String>] [-PerformAISelections] [-PerformAutoSelections] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-Prompt <String>] [-PromptKey <String>] [-RedoLast] [-ReprocessModifiedFiles] [-Reset] [-ResetLMSelections] [-RetryFailedLLMSelections] [-SelectByCreationDateFrom <DateTime>] [-SelectByCreationDateTo <DateTime>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SelectByModifiedDateFrom <DateTime>] [-SelectByModifiedDateTo <DateTime>] [-SelectionPrompt <String>] [-SelectionScript <String>] [-SessionOnly] [-SkipSession] [-Speak] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | Der Name des Refactorings, akzeptiert Platzhalter *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Refactor` | GenXdev.Helpers.RefactorDefinition[] | — | — | 1 | — | Der zu aktualisierende Refactor *(Parameter set: )* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 2 | `@()` | Hinzuzufügende Dateinamen |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 3 | `@()` | Zu entfernende Dateinamen |
| `-SelectByModifiedDateFrom` | DateTime | — | — | Named | — | Dateien nach Änderungsdatum auswählen von |
| `-SelectByModifiedDateTo` | DateTime | — | — | Named | — | Dateien nach Änderungsdatum auswählen, um |
| `-SelectByCreationDateFrom` | DateTime | — | — | Named | — | Wählen Sie Dateien nach Erstellungsdatum ab |
| `-SelectByCreationDateTo` | DateTime | — | — | Named | — | Wählen Sie Dateien nach Erstellungsdatum aus. |
| `-PromptKey` | String | — | — | Named | — | Der Prompt-Schlüssel gibt an, welches Prompt-Skript verwendet werden soll |
| `-Prompt` | String | — | — | Named | `''` | Der Prompt-Schlüssel gibt an, welches Prompt-Skript verwendet werden soll |
| `-SelectionScript` | String | — | — | Named | — | PowerShell-Skript für Funktion zum Auswählen von Elementen zum Refactoring |
| `-SelectionPrompt` | String | — | — | Named | — | Falls angegeben, wird LLM aufgerufen, um die Auswahl basierend auf dem Inhalt des Skripts durchzuführen. |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Die Modellkennung oder das Muster, das für KI-Operationen verwendet werden soll |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatur für die Zufälligkeit der Antwort (0,0–1,0) |
| `-ApiEndpoint` | String | — | — | Named | — | Der API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Gibt an, dass das LLM keine Unterstützung für JSON-Schemas hat |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Das Zeitlimit in Sekunden für KI-Operationen |
| `-Priority` | Int32 | — | — | Named | — | Priorität für dieses Refactoring festlegen |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array von PowerShell-Befehlsdefinitionen zur Verwendung als Tools während der LLM-Auswahl |
| `-KeysToSend` | String[] | — | — | Named | `@()` | Die Tasten, die nach dem Öffnen der Datei als Tastenanschläge ausgelöst werden |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | Bereinigen Sie gelöschte Dateien |
| `-AskBeforeLLMSelection` | SwitchParameter | — | — | Named | — | Schalter zur Unterdrückung der Benutzerinteraktion |
| `-PerformAutoSelections` | SwitchParameter | — | — | Named | — | Aktivieren, um LLM-basierte Dateiauswahlverarbeitung zu verwenden |
| `-PerformAISelections` | SwitchParameter | — | — | Named | — | Wechseln, um alle Dateien im Refactoring-Satz zu verarbeiten |
| `-RetryFailedLLMSelections` | SwitchParameter | — | — | Named | — | Wechsel zu fehlgeschlagenen LLM-Auswahlen, um es erneut zu versuchen |
| `-Clear` | SwitchParameter | — | — | Named | — | Alle Dateien aus dem Refactor-Satz löschen |
| `-ClearLog` | SwitchParameter | — | — | Named | — | Löschen Sie das Protokoll des Refactoring-Satzes |
| `-Reset` | SwitchParameter | — | — | Named | — | Beginnen Sie mit dem Anfang des Refactor-Sets |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Starten Sie alle LLMSelections neu |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Alle Dateien als umgestaltet markieren |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Letzten Refactor wiederholen |
| `-ReprocessModifiedFiles` | SwitchParameter | — | — | Named | — | Automatisch seit der letzten Aktualisierung geänderte Dateien erneut verarbeiten |
| `-Code` | SwitchParameter | — | — | Named | — | Die IDE, um die Datei zu öffnen |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | In Visual Studio öffnen |
| `-Speak` | SwitchParameter | — | — | Named | — | Sprechen Sie die Details der nächsten Umgestaltung aus |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | Konfiguration basierend auf verfügbarem Systemspeicher auswählen |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | Konfiguration basierend auf verfügbarem GPU-RAM auswählen |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Alternative, in der Sitzung gespeicherte Einstellungen für KI-Präferenzen verwenden |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Löschen Sie alternative Einstellungen, die für KI-Präferenzen in der Sitzung gespeichert sind |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Einstellungen nur in persistenten Voreinstellungen speichern, ohne die Sitzung zu beeinflussen |

## Examples

### Update-Refactor -Name "CodeCleanup" -FilesToAdd ".\src\*.cs" `     -CleanUpDeletedFiles -PerformAutoSelections -ReprocessModifiedFiles

```powershell
Update-Refactor -Name "CodeCleanup" -FilesToAdd ".\src\*.cs" `
    -CleanUpDeletedFiles -PerformAutoSelections -ReprocessModifiedFiles
```

### Get-Refactor "MyRefactor" | Update-Refactor -Reset -Clear

```powershell
Get-Refactor "MyRefactor" | Update-Refactor -Reset -Clear
```

### updaterefactor * -Clear -Reset

```powershell
updaterefactor * -Clear -Reset
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
| **Parameter set** | Name |

<hr/>
### `-Refactor <GenXdev.Helpers.RefactorDefinition[]>`

> Der zu aktualisierende Refactor

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Refactor |

<hr/>
### `-FilesToAdd <IO.FileInfo[]>`

> Hinzuzufügende Dateinamen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
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
| **Position?** | 3 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByModifiedDateFrom <DateTime>`

> Dateien nach Änderungsdatum auswählen von

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByModifiedDateTo <DateTime>`

> Dateien nach Änderungsdatum auswählen, um

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByCreationDateFrom <DateTime>`

> Wählen Sie Dateien nach Erstellungsdatum ab

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByCreationDateTo <DateTime>`

> Wählen Sie Dateien nach Erstellungsdatum aus.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PromptKey <String>`

> Der Prompt-Schlüssel gibt an, welches Prompt-Skript verwendet werden soll

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> Der Prompt-Schlüssel gibt an, welches Prompt-Skript verwendet werden soll

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectionScript <String>`

> PowerShell-Skript für Funktion zum Auswählen von Elementen zum Refactoring

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectionPrompt <String>`

> Falls angegeben, wird LLM aufgerufen, um die Auswahl basierend auf dem Inhalt des Skripts durchzuführen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> Der Typ der LLM-Abfrage

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Coding'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> Die Modellkennung oder das Muster, das für KI-Operationen verwendet werden soll

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> Temperatur für die Zufälligkeit der Antwort (0,0–1,0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> Der API-Endpunkt-URL für KI-Operationen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> Der API-Schlüssel für authentifizierte KI-Operationen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> Gibt an, dass das LLM keine Unterstützung für JSON-Schemas hat

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> Das Zeitlimit in Sekunden für KI-Operationen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Priority <Int32>`

> Priorität für dieses Refactoring festlegen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Array von PowerShell-Befehlsdefinitionen zur Verwendung als Tools während der LLM-Auswahl

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Die Tasten, die nach dem Öffnen der Datei als Tastenanschläge ausgelöst werden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `keys` |
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
### `-AskBeforeLLMSelection`

> Schalter zur Unterdrückung der Benutzerinteraktion

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerformAutoSelections`

> Aktivieren, um LLM-basierte Dateiauswahlverarbeitung zu verwenden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerformAISelections`

> Wechseln, um alle Dateien im Refactoring-Satz zu verarbeiten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `PerformAllLLMSelections` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryFailedLLMSelections`

> Wechsel zu fehlgeschlagenen LLM-Auswahlen, um es erneut zu versuchen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Clear`

> Alle Dateien aus dem Refactor-Satz löschen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearLog`

> Löschen Sie das Protokoll des Refactoring-Satzes

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

> Starten Sie alle LLMSelections neu

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
### `-ReprocessModifiedFiles`

> Automatisch seit der letzten Aktualisierung geänderte Dateien erneut verarbeiten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `AutoAddModifiedFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> Die IDE, um die Datei zu öffnen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-VisualStudio`

> In Visual Studio öffnen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `vs` |
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
### `-SelectByFreeRam`

> Konfiguration basierend auf verfügbarem Systemspeicher auswählen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByFreeGpuRam`

> Konfiguration basierend auf verfügbarem GPU-RAM auswählen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Alternative, in der Sitzung gespeicherte Einstellungen für KI-Präferenzen verwenden

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

> Löschen Sie alternative Einstellungen, die für KI-Präferenzen in der Sitzung gespeichert sind

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

> Einstellungen nur in persistenten Voreinstellungen speichern, ohne die Sitzung zu beeinflussen

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
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-NextRefactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/de-DE/VSCode.md)
