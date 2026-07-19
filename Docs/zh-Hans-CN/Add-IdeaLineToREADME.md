# Add-IdeaLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `idea

## Synopsis

> 向README.md文件添加一个想法项。

## Description

向 README.md 文件的 "## Ideas" 部分添加带时间戳的想法。可以显示修改后的部分并在 Visual Studio Code 中打开。

## Syntax

```powershell
Add-IdeaLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | The idea text to add |
| `-Code` | SwitchParameter | — | — | Named | — | 在 Visual Studio Code 中打开 README |
| `-Show` | SwitchParameter | — | — | Named | — | 显示修改后的部分 |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | 在 PowerShell 配置文件目录中使用 README |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | 使用 OneDrive 目录中的 README |
| `-Priority` | Int32 | — | — | Named | `1` | 排序优先级（数值越大越靠前显示，默认为1） |
| `-SortByDate` | SwitchParameter | — | — | Named | — | 按日期（yyyyMMdd前缀）排序，而非优先级 |
| `-Ascending` | SwitchParameter | — | — | Named | — | 将排序顺序颠倒（升序改为降序） |
| `-First` | Int32 | — | — | Named | `0` | 限制 - 仅显示前 N 行输出 |

## Examples

### Add-IdeaLineToREADME -Line "Create new PowerShell module" -Show

```powershell
Add-IdeaLineToREADME -Line "Create new PowerShell module" -Show
```

### idea "New feature idea" -UseOneDriveREADME

```powershell
idea "New feature idea" -UseOneDriveREADME
```

## Related Links

- [Add-IdeaLineToREADME on GitHub](https://github.com/genXdev/genXdev)
