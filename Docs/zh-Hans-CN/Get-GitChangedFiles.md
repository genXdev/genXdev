# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged

## Synopsis

> 获取Git仓库中已变更文件的列表。

## Description

此函数检索当前Git仓库中已更改的文件列表。可用于识别已修改、新增或删除的文件。默认返回带有.\前缀的相对路径。使用-PassThru参数可获取FileInfo对象。

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

返回类似 ".\Modules\GenXdev.AI\3.26.2026\README.md" 的相对路径。

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

为每个更改的文件返回 FileInfo 对象。

## Outputs


## Related Links

- [Get-GitChangedFiles on GitHub](https://github.com/genXdev/genXdev)
