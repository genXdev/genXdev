# Start-NextRefactor

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `nextrefactor`

## Synopsis

> Continue ou redémarre une session de refactorisation de code.

## Description

Gère les opérations de refactorisation de code en traitant les définitions de refactorisation dans l'ordre de priorité. Gère la sélection des fichiers, le suivi de la progression, la gestion des erreurs et offre un contrôle utilisateur interactif sur le processus de refactorisation.

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
| `-Reset` | SwitchParameter | — | — | Named | — | Commencez depuis le début du jeu de refactorisation |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Redémarrer toutes les sélections LLM |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Marquer tous les fichiers comme refactorisés |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Refaire la dernière refactorisation |
| `-Speak` | SwitchParameter | — | — | Named | — | Parlez des détails du prochain refactoring. |

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

> Le nom de la refactorisation, accepte les caractères génériques

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

> Noms de fichiers à ajouter

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

> Noms de fichiers à supprimer

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

> Nettoyer les fichiers supprimés

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

> Commencez depuis le début du jeu de refactorisation

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

> Redémarrer toutes les sélections LLM

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

> Marquer tous les fichiers comme refactorisés

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

> Refaire la dernière refactorisation

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

> Parlez des détails du prochain refactoring.

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

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAdd-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAdd-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAdd-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAdd-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAdd-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAdd-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-Refactor.md)
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNew-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRPublish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-Refactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRUpdate-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRVSCode.md)
