# Start-NextRefactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `nextrefactor

## Synopsis

> Continue ou redémarre une session de refactorisation de code.

## Description

Gère les opérations de refactorisation de code en traitant les définitions de refactorisation par ordre de priorité. Assure la sélection des fichiers, le suivi de la progression, la gestion des erreurs et offre un contrôle utilisateur interactif sur le processus de refactorisation.

## Syntax

```powershell
Start-NextRefactor [[-Name] <String[]>] [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-CleanUpDeletedFiles] [-MarkAllCompleted] [-RedoLast] [-Reset] [-ResetLMSelections] [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | Le nom de la refactorisation, accepte les caractères génériques 🌐 *Supports wildcards* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 1 | `@()` | Noms de fichiers à ajouter |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 2 | `@()` | Noms de fichiers à supprimer |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | Nettoyer les fichiers supprimés |
| `-Reset` | SwitchParameter | — | — | Named | — | Commencez depuis le début de l'ensemble de refactorisation |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Redémarrer toutes les sélections LLM |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Mark all files as refactored |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Refaites la dernière refactorisation |
| `-Speak` | SwitchParameter | — | — | Named | — | Détails du prochain refactoring à définir. |

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
