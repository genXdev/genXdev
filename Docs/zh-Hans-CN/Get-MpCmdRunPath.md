# Get-MpCmdRunPath

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 获取 Windows Defender MpCmdRun.exe 可执行文件的路径。

## Description

* 定位并返回 Windows Defender 命令行工具 (MpCmdRun.exe) 的完整路径。
* 该 cmdlet 检查 Program Files 中的标准安装位置，如果未找到文件，则提供适当的错误处理。

## Syntax

```powershell
Get-MpCmdRunPath [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$defenderPath = Get-MpCmdRunPath
```

检索 Windows Defender 命令行工具的完整路径。

## Related Links

- [Get-MpCmdRunPath on GitHub](https://github.com/genXdev/genXdev)
