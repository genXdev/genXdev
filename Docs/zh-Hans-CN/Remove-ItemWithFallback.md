# Remove-ItemWithFallback

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rmf

## Synopsis

> 使用多种回退机制可靠地删除文件或目录。

## Description

此函数提供了一种健壮的删除文件和目录的方法，通过按顺序尝试多种删除方式：
1. 通过 System.IO 方法直接删除，以获得最佳性能
2. 回退使用 PowerShell 提供程序感知的 Remove-Item cmdlet
3. 如果其他方法失败，则标记为在下次系统重启时删除
这确保了在不同提供程序之间移除项目时的最大可靠性。

## Syntax

```powershell
Remove-ItemWithFallback -Path <String> [-CountRebootDeletionAsSuccess] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要移除的项目的路径 |
| `-CountRebootDeletionAsSuccess` | SwitchParameter | — | — | Named | `$false` | The `-CountRebootDeletionAsSuccess` parameter. |

## Examples

### Remove-ItemWithFallback -Path "C:\temp\myfile.txt" Attempts to remove the file using all available methods.

```powershell
Remove-ItemWithFallback -Path "C:\temp\myfile.txt"
Attempts to remove the file using all available methods.
```

### "C:\temp\mydir" | rif Uses the alias 'rif' to remove a directory through the pipeline.

```powershell
"C:\temp\mydir" | rif
Uses the alias 'rif' to remove a directory through the pipeline.
```

## Outputs

- `Boolean`

## Related Links

- [Remove-ItemWithFallback on GitHub](https://github.com/genXdev/genXdev)
