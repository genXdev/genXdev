# Get-ClipboardFiles

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `getclipfiles, `gcbf

## Synopsis

> 从Windows剪贴板获取为文件操作（如复制/粘贴）设置的文件。

## Description

* 此函数从 Windows 剪贴板中检索先前为文件操作设置的文件路径。
* 它会自动处理 STA 和 MTA 线程模式，确保在不同 PowerShell 执行上下文中的兼容性。
* 该函数验证文件是否存在，并仅返回存在的文件/目录，其对象类似于 Get-ChildItem 或 Get-Item 的输出。

## Syntax

```powershell
Get-ClipboardFiles [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ClipboardFiles
```

获取剪贴板中当前所有文件作为文件系统对象。

### Example 2

```powershell
$clipboardFiles = Get-ClipboardFiles
$clipboardFiles | ForEach-Object { Write-Host $_.FullName }
```

获取剪贴板文件并显示其完整路径。

### Example 3

```powershell
Get-ClipboardFiles | Where-Object { $_.Extension -eq '.txt' }
```

从剪贴板中仅获取文本文件。

## Related Links

- [Get-ClipboardFiles on GitHub](https://github.com/genXdev/genXdev)
