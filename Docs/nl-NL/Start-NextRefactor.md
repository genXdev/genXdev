# Start-NextRefactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `nextrefactor

## Synopsis

> Zet een codesaneringssessie voort of start deze opnieuw.

## Description

Beheert code refactoring operaties door refactor definities te verwerken in
prioriteitsvolgorde. Behandelt bestandsselectie, voortgangsregistratie, foutafhandeling en
biedt interactieve gebruikerscontrole over het refactoring proces.

## Syntax

```powershell
Start-NextRefactor [[-Name] <String[]>] [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-CleanUpDeletedFiles] [-MarkAllCompleted] [-RedoLast] [-Reset] [-ResetLMSelections] [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | De naam van de refactor, accepteert wildcards 🌐 *Supports wildcards* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 1 | `@()` | Te verwerken bestanden |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 2 | `@()` | Filenamen om te verwijderen |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | Opruimen van verwijderde bestanden |
| `-Reset` | SwitchParameter | — | — | Named | — | Start from the beginning of the refactor set |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Herstart alle LLM-selecties |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Markeer alle bestanden als gerefactord |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Redo the last refactor |
| `-Speak` | SwitchParameter | — | — | Named | — | Alright, let's outline the next refactor. Focus on extracting the user authentication logic into a dedicated service module. Create a new file 'authService.js' to handle login, logout, and token validation. Then, update the existing controller to delegate these operations to the service. Also, centralize error handling in a middleware. This will improve separation of concerns and testability. |

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
