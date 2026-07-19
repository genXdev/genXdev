# Move-ToRecycleBin

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 安全地将文件和目录移动到Windows回收站。

## Description

* 使用 Windows Shell API 安全地将文件或目录移动到回收站，即使它们当前正在使用中。
* 该函数使用 Shell.Application COM 对象执行操作，确保正确的回收行为和撤销功能。

## Syntax

```powershell
Move-ToRecycleBin [-Path] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 指定要移动到回收站的一个或多个路径 |

## Examples

### Example 1

```powershell
Move-ToRecycleBin -Path "C:\temp\old-report.txt"
```

将单个文件移动到回收站。

### Example 2

```powershell
"file1.txt","file2.txt" | recycle
```

使用管道和别名将多个文件移动到回收站。

## Related Links

- [Move-ToRecycleBin on GitHub](https://github.com/genXdev/genXdev)
