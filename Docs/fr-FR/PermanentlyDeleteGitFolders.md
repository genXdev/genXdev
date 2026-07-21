# PermanentlyDeleteGitFolders

> **Module:** GenXdev.Coding.Git | **Type:** Function | **Aliases:** —

## Synopsis

> Supprime définitivement les dossiers spécifiés de toutes les branches d'un dépôt Git.

## Description

Nettoie un dépôt Git en supprimant les dossiers spécifiés de tout l'historique des commits sur toutes les branches. Cela est effectué en clonant le dépôt, en utilisant git filter-branch pour supprimer les dossiers, et en forçant l'envoi des modifications. Cette opération est destructive et réécrit définitivement l'historique Git.

## Syntax

```powershell
PermanentlyDeleteGitFolders -RepoUri <String> -Folders <String[]> [-tempPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RepoUri` | String | ✅ | — | 0 | — | L'URI du dépôt Git à nettoyer |
| `-Folders` | String[] | ✅ | — | 1 | — | Tableau des chemins de dossiers à supprimer définitivement |
| `-tempPath` | String | — | — | Named | `"~\convert.tmp\"` | The `-tempPath` parameter. |

## Examples

### PermanentlyDeleteGitFolders `     -RepoUri "https://github.com/user/repo.git" `     -Folders "bin", "obj"

```powershell
PermanentlyDeleteGitFolders `
    -RepoUri "https://github.com/user/repo.git" `
    -Folders "bin", "obj"
```

## Parameter Details

### `-RepoUri <String>`

> L'URI du dépôt Git à nettoyer

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Folders <String[]>`

> Tableau des chemins de dossiers à supprimer définitivement

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-tempPath <String>`

> The `-tempPath` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"~\convert.tmp\"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String[]`

## Related Links

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-GitChangedFiles.md)
- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNew-GitCommit.md)
