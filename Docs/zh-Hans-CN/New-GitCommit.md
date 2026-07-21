# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> 创建并推送包含所有更改的新的git提交。

## Description

在当前 Git 仓库中暂存所有更改，使用指定的标题创建提交，并将更改推送到远程源。如有需要，会自动设置上游跟踪。

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | 使用的提交消息标题 |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

提交一条自定义消息 '新增认证功能'

### Example 2

```powershell
commit "Hotfix for login issue"
```

使用 'commit' 别名创建提交，使用默认消息。

## Parameter Details

### `-Title <String>`

> 使用的提交消息标题

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

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/PermanentlyDeleteGitFolders.md)
