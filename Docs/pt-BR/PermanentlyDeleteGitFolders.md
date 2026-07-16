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
| `-RepoUri` | String | ✅ | — | 0 | — | A URI do repositório Git a ser limpo |
| `-Folders` | String[] | ✅ | — | 1 | — | Array de caminhos de pastas para remover permanentemente |
| `-tempPath` | String | — | — | Named | `"~\convert.tmp\"` | The `-tempPath` parameter. |

## Outputs

- `String[]`

## Related Links

- [PermanentlyDeleteGitFolders on GitHub](https://github.com/genXdev/genXdev)
