# VSCode

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> 在 Visual Studio Code 中打开一个或多个文件。

## Description

此函数接收文件路径并在 Visual Studio Code 中打开它们。在尝试打开之前，它会扩展路径并验证文件是否存在。该函数支持直接文件路径和管道输入，非常适合从终端搜索中快速打开多个文件。

## Syntax

```powershell
VSCode -FilePath <String[]> [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue) | 0 | — | 在 VSCode 中打开的文件路径 |
| `-Copilot` | SwitchParameter | — | — | Named | — | 将源文件添加到 Copilot 编辑会话 |

## Examples

### VSCode -FilePath "C:\path\to\file.txt" -Copilot

```powershell
VSCode -FilePath "C:\path\to\file.txt" -Copilot
```

### Get-ChildItem *.js -Recurse | VSCode

```powershell
Get-ChildItem *.js -Recurse | VSCode
```

## Related Links

- [VSCode on GitHub](https://github.com/genXdev/genXdev)
