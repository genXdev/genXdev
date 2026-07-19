# Update-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `updaterefactor

## Synopsis

> Aktualisiert und verwaltet Refactoring-Sets, einschließlich Dateiauswahl und -verarbeitung.

## Description

Bietet umfassende Verwaltung von Refactoring-Sets durch:
- Hinzufügen oder Entfernen von Dateien aus Verarbeitungswarteschlangen
- Bereinigen gelöschter Dateien aus dem Set
- Verwalten von Zustandsinformationen und Fortschrittsverfolgung
- Handhabung von LLM-basierter Dateiauswahl und -verarbeitung
- Unterstützung sowohl automatischer als auch manueller Dateiverwaltung
- Führen detaillierter Protokolle aller Vorgänge
- Graziöse Behandlung gelöschter Dateien (übersprungen, sofern nicht CleanUpDeletedFiles verwendet wird)

## Syntax

```powershell
Update-Refactor [[-Name] <String[]>] [<CommonParameters>]

Update-Refactor [[-Refactor] <GenXdev.Helpers.RefactorDefinition[]>] [<CommonParameters>]

Update-Refactor [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AskBeforeLLMSelection] [-CleanUpDeletedFiles] [-Clear] [-ClearLog] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-KeysToSend <String[]>] [-LLMQueryType <String>] [-MarkAllCompleted] [-Model <String>] [-PerformAISelections] [-PerformAutoSelections] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-Prompt <String>] [-PromptKey <String>] [-RedoLast] [-ReprocessModifiedFiles] [-Reset] [-ResetLMSelections] [-RetryFailedLLMSelections] [-SelectByCreationDateFrom <DateTime>] [-SelectByCreationDateTo <DateTime>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SelectByModifiedDateFrom <DateTime>] [-SelectByModifiedDateTo <DateTime>] [-SelectionPrompt <String>] [-SelectionScript <String>] [-SessionOnly] [-SkipSession] [-Speak] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | Der Name des Refactorings, akzeptiert Platzhalter *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Refactor` | GenXdev.Helpers.RefactorDefinition[] | — | — | 1 | — | Der Umgestaltungssatz zum Aktualisieren *(Parameter set: )* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 2 | `@()` | Hinzuzufügende Dateinamen |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 3 | `@()` | Zu entfernende Dateinamen |
| `-SelectByModifiedDateFrom` | DateTime | — | — | Named | — | Select files by modified date from |
| `-SelectByModifiedDateTo` | DateTime | — | — | Named | — | Select files by modified date to |
| `-SelectByCreationDateFrom` | DateTime | — | — | Named | — | Select files by creation date from |
| `-SelectByCreationDateTo` | DateTime | — | — | Named | — | Select files by creation date to |
| `-PromptKey` | String | — | — | Named | — | Der Prompt-Schlüssel gibt an, welches Prompt-Skript verwendet werden soll |
| `-Prompt` | String | — | — | Named | `''` | Der Prompt-Schlüssel gibt an, welches Prompt-Skript verwendet werden soll |
| `-SelectionScript` | String | — | — | Named | — | PowerShell-Skript zum Auswählen von zu refaktorisierenden Elementen |
| `-SelectionPrompt` | String | — | — | Named | — | Wenn angegeben, wird LLM aufgerufen, um die Auswahl basierend auf dem Inhalt des Skripts durchzuführen |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Das zu verwendende Modell oder Muster für KI-Operationen |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | Die API-Endpunkt-URL für KI-Operationen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Operationen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Das Zeitlimit in Sekunden für KI-Operationen |
| `-Priority` | Int32 | — | — | Named | — | Priorität für diese Umgestaltung festgelegt |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array von PowerShell-Befehlsdefinitionen zur Verwendung als Werkzeuge während der LLM-Auswahl |
| `-KeysToSend` | String[] | — | — | Named | `@()` | The keys to invoke as key strokes after opening the file |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | Bereinigen Sie gelöschte Dateien |
| `-AskBeforeLLMSelection` | SwitchParameter | — | — | Named | — | Wechsel zur Unterdrückung der Benutzerinteraktion |
| `-PerformAutoSelections` | SwitchParameter | — | — | Named | — | Schalter, um die auf LLM basierende Dateiauswahlverarbeitung zu aktivieren |
| `-PerformAISelections` | SwitchParameter | — | — | Named | — | Switch to process all files in the refactor set |
| `-RetryFailedLLMSelections` | SwitchParameter | — | — | Named | — | Switch to retry failed LLM selections |
| `-Clear` | SwitchParameter | — | — | Named | — | Alle Dateien aus dem Refaktorierungs-Set löschen |
| `-ClearLog` | SwitchParameter | — | — | Named | — | Clear the log of the refactor set |
| `-Reset` | SwitchParameter | — | — | Named | — | From the beginning of the refactor set |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Alle LLMSelections neu starten |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Mark all files as refactored |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Führe den letzten Refactoring noch einmal durch. |
| `-ReprocessModifiedFiles` | SwitchParameter | — | — | Named | — | Dateien, die seit dem letzten Update geändert wurden, automatisch erneut verarbeiten |
| `-Code` | SwitchParameter | — | — | Named | — | Die IDE, um die Datei zu öffnen |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | In Visual Studio öffnen |
| `-Speak` | SwitchParameter | — | — | Named | — | The next refactor will focus on the user authentication module. We'll replace the current cookie-based session management with JWT tokens for improved security and scalability. The changes include:

1. Creating a new JwtTokenProvider class to generate and validate tokens.
2. Modifying the AuthenticationController to issue JWT tokens upon login.
3. Updating the AuthenticationFilter to extract and validate tokens from request headers.
4. Removing session creation from the UserService.
5. Updating tests to reflect the new token-based flow.

Estimated effort: 8 hours. |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | Select configuration by available system RAM |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | Konfiguration basierend auf verfügbarem GPU-RAM auswählen |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |

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

## Related Links

- [Update-Refactor on GitHub](https://github.com/genXdev/genXdev)
