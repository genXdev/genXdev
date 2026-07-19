# Test-PathUsingWindowsDefender

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `virusscan, `HasNoVirus

## Synopsis

> 使用 Windows Defender 扫描文件或目录以查找恶意软件。

## Description

使用 Windows Defender 命令行界面 (MpCmdRun.exe) 对指定文件或目录执行定向扫描。
* 可以仅在检测模式下扫描，也可以启用自动威胁修复。
* 如果未检测到威胁，则返回 true；如果发现威胁或扫描失败，则返回 false。

## Syntax

```powershell
Test-PathUsingWindowsDefender [-FilePath] <string> [-EnableRemediation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要扫描的文件或目录的路径 |
| `-EnableRemediation` | SwitchParameter | — | — | Named | `False` | 指示 Windows Defender 对威胁采取行动 |

## Examples

### Example 1

```powershell
Test-PathUsingWindowsDefender -FilePath "C:\Downloads\file.exe" -Verbose
```

扫描指定的文件并显示详细的输出。

### Example 2

```powershell
virusscan "C:\Downloads\file.exe" -EnableRemediation
```

使用别名扫描文件并启用修复。

### Example 3

```powershell
"C:\Downloads\file.exe" | HasNoVirus
```

使用别名将文件路径传递给 cmdlet。

## Related Links

- [Test-PathUsingWindowsDefender on GitHub](https://github.com/genXdev/genXdev)
