# PermanentlyDeleteGitFolders

> **Module:** GenXdev.Coding.Git | **Type:** Function | **Aliases:** —

## Synopsis

> 从Git仓库的所有分支中永久删除指定文件夹。

## Description

清理Git仓库，通过从所有分支的整个提交历史中删除指定文件夹。这通过克隆仓库、使用git filter-branch删除文件夹，然后强制推送更改来完成。此操作具有破坏性，会永久重写Git历史。

## Syntax

```powershell
PermanentlyDeleteGitFolders -RepoUri <String> -Folders <String[]> [-tempPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RepoUri` | String | ✅ | — | 0 | — | 要清理的Git仓库的URI |
| `-Folders` | String[] | ✅ | — | 1 | — | 要永久删除的文件夹路径数组 |
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
