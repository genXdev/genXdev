# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged`

## Synopsis

> 获取Git仓库中更改的文件列表。

## Description

此函数检索当前Git仓库中已更改的文件列表。可用于识别已修改、添加或删除的文件。默认返回带有.\前缀的相对路径。使用-PassThru获取FileInfo对象。

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | 返回 FileInfo 对象（类似于 Get-ChildItem），而不是路径字符串。 |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

返回相对路径，例如 ".\Modules\GenXdev.AI\3.26.2026\README.md"。

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

返回每个已更改文件的 FileInfo 对象。

## Parameter Details

### `-PassThru`

> 返回 FileInfo 对象（类似于 Get-ChildItem），而不是路径字符串。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


## Related Links

- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-GitCommit.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/PermanentlyDeleteGitFolders.md)
