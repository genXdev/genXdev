# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit

## Synopsis

> すべての変更を含む新しいgitコミットを作成してプッシュします。

## Description

現在のGitリポジトリのすべての変更をステージングし、指定されたタイトルでコミットを作成し、変更をリモートオリジンにプッシュします。必要に応じて上流の追跡を自動的に設定します。

## Syntax

```powershell
New-GitCommit [[-Title] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | 使用するコミットメッセージタイトル |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

カスタムメッセージ「新しい認証機能を追加」でコミットを作成します。

### Example 2

```powershell
commit "Hotfix for login issue"
```

'commit' エイリアスを使用してデフォルトメッセージでコミットを作成します。

## Related Links

- [New-GitCommit on GitHub](https://github.com/genXdev/genXdev)
