# Get-OpenedFileHandleProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 检索打开了指定文件句柄的进程。

## Description

使用 Sysinternals 套件中的 handle.exe 工具来识别当前打开一个或多个指定文件句柄的进程。
* 有助于确定哪些进程正在阻止文件操作（如删除或修改）。
* 需要从 Sysinternals 套件安装 handle.exe 并确保其在系统路径中可用。

## Syntax

```powershell
Get-OpenedFileHandleProcesses [-FilePath] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 待检查打开句柄的文件路径 |

## Examples

### Example 1

```powershell
Get-OpenedFileHandleProcesses -FilePath "C:\temp\example.txt"
```

识别出所有打开指定文件句柄的进程。

### Example 2

```powershell
"file1.txt", "file2.txt" | Get-OpenedFileHandleProcesses
```

通过管道输入检查多个文件中哪些进程打开了句柄。

## Related Links

- [Get-OpenedFileHandleProcesses on GitHub](https://github.com/genXdev/genXdev)
