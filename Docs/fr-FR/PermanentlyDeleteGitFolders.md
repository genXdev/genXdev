# PermanentlyDeleteGitFolders

> **Module:** GenXdev.Coding.Git | **Type:** Function | **Aliases:** —

## Synopsis

> Supprime définitivement les dossiers spécifiés de toutes les branches d'un dépôt Git.

## Description

Nettoie un dépôt Git en supprimant les dossiers spécifiés de tout l'historique des commits sur toutes les branches. Cela se fait en clonant le dépôt, en utilisant git filter-branch pour supprimer les dossiers, et en forçant le push des modifications. Cette opération est destructive et réécrit définitivement l'historique Git.

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

## Outputs

- `String[]`

## Related Links

- [PermanentlyDeleteGitFolders on GitHub](https://github.com/genXdev/genXdev)
