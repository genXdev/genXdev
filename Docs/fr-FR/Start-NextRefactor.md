# Start-NextRefactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `nextrefactor

## Synopsis

> *(No synopsis provided)*

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
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | 3 | — | Nettoyer les fichiers supprimés |
| `-Reset` | SwitchParameter | — | — | Named | — | Commencez depuis le début de l'ensemble de refactorisation |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Redémarrer toutes les sélections LLM |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Mark all files as refactored |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Refaites la dernière refactorisation |
| `-Speak` | SwitchParameter | — | — | Named | — | Détails du prochain refactoring à définir. |

## Related Links

- [Start-NextRefactor on GitHub](https://github.com/genXdev/genXdev)
