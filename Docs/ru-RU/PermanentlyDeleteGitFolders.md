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
| `-RepoUri` | String | ✅ | — | 0 | — | URI Git-репозитория для очистки |
| `-Folders` | String[] | ✅ | — | 1 | — | Массив путей к папкам для постоянного удаления |
| `-tempPath` | String | — | — | Named | `"~\convert.tmp\"` | The `-tempPath` parameter. |

## Outputs

- `String[]`

## Related Links

- [PermanentlyDeleteGitFolders on GitHub](https://github.com/genXdev/genXdev)
