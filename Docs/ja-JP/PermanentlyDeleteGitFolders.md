# PermanentlyDeleteGitFolders

> **Module:** GenXdev.Coding.Git | **Type:** Function | **Aliases:** —

## Synopsis

> Gitリポジトリのすべてのブランチから指定されたフォルダを完全に削除します。

## Description

指定されたフォルダを全ブランチの全コミット履歴から削除してGitリポジトリをクリーンアップします。これはリポジトリをクローンし、git filter-branchを使用してフォルダを削除し、変更を強制プッシュすることで行われます。この操作は破壊的であり、Git履歴を恒久的に書き換えます。

## Syntax

```powershell
PermanentlyDeleteGitFolders -RepoUri <String> -Folders <String[]> [-tempPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RepoUri` | String | ✅ | — | 0 | — | クリーンアップするGitリポジトリのURI |
| `-Folders` | String[] | ✅ | — | 1 | — | 完全に削除するフォルダパスの配列 |
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
