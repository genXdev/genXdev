# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> すべての変更を含む新しいgitコミットを作成してプッシュします。

## Description

現在のGitリポジトリ内のすべての変更をステージングし、指定されたタイトルでコミットを作成し、リモートのoriginにプッシュします。必要に応じて自動的に上流の追跡を設定します。

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | 使用するコミットメッセージのタイトル |

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

'commit' エイリアスを使用してデフォルトのメッセージでコミットを作成します。

## Parameter Details

### `-Title <String>`

> 使用するコミットメッセージのタイトル

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/PermanentlyDeleteGitFolders.md)
