# Remove-OnReboot

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 在下次系统启动时标记要删除的文件或目录。

## Description

* 使用 Windows API 将文件标记为下次启动时删除。
* 处理被锁定的文件时，首先尝试将其重命名为临时名称，并跟踪所有移动操作以维护文件系统的完整性。
* 如果重命名失败，可以使用 -MarkInPlace 参数在原始位置标记文件。

## Syntax

```powershell
Remove-OnReboot [-Path] <string[]> [-MarkInPlace] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue) | 0 | — | 要标记删除的文件/目录路径 |
| `-MarkInPlace` | SwitchParameter | — | — | Named | `False` | 标记文件以便删除而不重命名 |

## Examples

### Example 1

```powershell
Remove-OnReboot -Path "C:\temp\locked-file.txt"
```

标记一个文件以便在下次系统启动时删除。

### Example 2

```powershell
"file1.txt","file2.txt" | Remove-OnReboot -MarkInPlace
```

标记多个文件以供删除，对无法重命名的文件使用 MarkInPlace 进行处理。

## Related Links

- [Remove-OnReboot on GitHub](https://github.com/genXdev/genXdev)
