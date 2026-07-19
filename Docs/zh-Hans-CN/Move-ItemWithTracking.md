# Move-ItemWithTracking

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 移动文件和目录时保留文件系统链接和引用。

## Description

* 通过启用链接跟踪的 Windows MoveFileEx API 移动文件和目录，确保文件系统引用得以维护。
* 如果源路径受 Git 控制，则尝试使用 git mv 在 Git 中跟踪重命名。
* 如果 Git 不可用或 git mv 失败，则回退到 MoveFileEx。

## Syntax

```powershell
Move-ItemWithTracking [-Path] <string> [-Destination] <string> [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要移动的文件/目录的源路径 |
| `-Destination` | String | ✅ | — | 1 | — | 要移动到的目标路径 |
| `-Force` | SwitchParameter | — | — | Named | `False` | 如果目标存在，则覆盖 |

## Examples

### Example 1

```powershell
Move-ItemWithTracking -Path "C:\temp\oldfile.txt" -Destination "D:\newfile.txt"
```

移动文件时保留文件系统链接和 Git 追踪。

### Example 2

```powershell
"C:\temp\olddir" | Move-ItemWithTracking -Destination "D:\newdir" -Force
```

移动目录，如果目标已存在则覆盖。

## Related Links

- [Move-ItemWithTracking on GitHub](https://github.com/genXdev/genXdev)
