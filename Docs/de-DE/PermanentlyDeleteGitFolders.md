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
| `-RepoUri` | String | ✅ | — | 0 | — | Die URI des zu bereinigenden Git-Repositorys |
| `-Folders` | String[] | ✅ | — | 1 | — | Array von Ordnerpfaden, die dauerhaft entfernt werden sollen |
| `-tempPath` | String | — | — | Named | `"~\convert.tmp\"` | The `-tempPath` parameter. |

## Outputs

- `String[]`

## Related Links

- [PermanentlyDeleteGitFolders on GitHub](https://github.com/genXdev/genXdev)
