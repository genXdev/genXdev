# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit

## Synopsis

> 创建并推送一个包含所有更改的新 Git 提交。

## Description

暂存当前 Git 仓库中的所有更改，使用指定的标题创建提交，并将更改推送到远程 origin。如有需要，自动设置上游跟踪。

## Syntax

```powershell
New-GitCommit [[-Title] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | 要使用的提交信息标题 |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

git commit -m "Added new authentication feature"

### Example 2

```powershell
commit "Hotfix for login issue"
```

git commit

## Related Links

- [New-GitCommit on GitHub](https://github.com/genXdev/genXdev)
