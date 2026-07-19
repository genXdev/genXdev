# Start-NextRefactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `nextrefactor

## Synopsis

> Setzt eine Code-Refactoring-Sitzung fort oder startet sie neu.

## Description

Verwaltet Code-Refactoring-Operationen durch Verarbeitung von Refactoring-Definitionen in Prioritätsreihenfolge. Behandelt Dateiauswahl, Fortschrittsverfolgung, Fehlerbehandlung und bietet interaktive Benutzersteuerung über den Refactoring-Prozess.

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
| `-Reset` | SwitchParameter | — | — | Named | — | From the beginning of the refactor set |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Alle LLM-Auswahlen neu starten |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Mark all files as refactored |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Führe den letzten Refactoring noch einmal durch. |
| `-Speak` | SwitchParameter | — | — | Named | — | The next refactor will focus on the user authentication module. We'll replace the current cookie-based session management with JWT tokens for improved security and scalability. The changes include:

1. Creating a new JwtTokenProvider class to generate and validate tokens.
2. Modifying the AuthenticationController to issue JWT tokens upon login.
3. Updating the AuthenticationFilter to extract and validate tokens from request headers.
4. Removing session creation from the UserService.
5. Updating tests to reflect the new token-based flow.

Estimated effort: 8 hours. |

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

## Related Links

- [Start-NextRefactor on GitHub](https://github.com/genXdev/genXdev)
