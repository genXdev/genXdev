# PermanentlyDeleteGitFolders

> **Module:** GenXdev.Coding.Git | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Outputs

- `String[]`

## Related Links

- [PermanentlyDeleteGitFolders on GitHub](https://github.com/genXdev/genXdev)
