# Invoke-WinMerge

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 启动 WinMerge 并排比较两个文件。

## Description

启动WinMerge应用程序，并排比较源文件和目标文件的差异。该函数验证两个输入文件是否存在，并确保WinMerge已正确安装后再启动。提供可选的等待功能，可暂停执行直到WinMerge关闭。

## Syntax

```powershell
Invoke-WinMerge -SourcecodeFilePath <String> -TargetcodeFilePath <String> [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SourcecodeFilePath` | String | ✅ | — | 0 | — | 要比较的源文件路径 |
| `-TargetcodeFilePath` | String | ✅ | — | 1 | — | 用于比较的目标文件路径 |
| `-Wait` | SwitchParameter | — | — | Named | — | 等待 WinMerge 关闭后再继续 |

## Examples

### Invoke-WinMerge -SourcecodeFilePath "C:\source\file1.txt" `                 -TargetcodeFilePath "C:\target\file2.txt" `                 -Wait

```powershell
Invoke-WinMerge -SourcecodeFilePath "C:\source\file1.txt" `
                -TargetcodeFilePath "C:\target\file2.txt" `
                -Wait
```

### merge "C:\source\file1.txt" "C:\target\file2.txt"

```powershell
merge "C:\source\file1.txt" "C:\target\file2.txt"
```

## Related Links

- [Invoke-WinMerge on GitHub](https://github.com/genXdev/genXdev)
