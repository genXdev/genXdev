# Add-LineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> 在指定的章节中向README.md标记文件添加一行。

## Description

查找并修改 README.md 文件，在指定部分添加新行。如果该部分不存在，则自动创建。支持将行格式化为代码块，并显示修改后的部分。

会先在当前目录查找，然后向上遍历目录以找到 README 文件。如果未找到，则使用 PowerShell 配置文件目录中的 README 文件。

## Syntax

```powershell
Add-LineToREADME -Section <String> [-Ascending] [-Code] [-Done] [-First <Int32>] [-Line <String>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | Named | `''` | The line to add to the README |
| `-Section` | String | ✅ | — | 0 | — | The section to add the line to |
| `-Code` | SwitchParameter | — | — | Named | — | 修改后在 Visual Studio Code 中打开 |
| `-Show` | SwitchParameter | — | — | Named | — | 显示修改后的部分 |
| `-Done` | SwitchParameter | — | — | Named | — | 将项目标记为已完成 |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | 在 PowerShell 配置文件目录中使用 README |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | 使用 OneDrive 目录中的 README |
| `-Priority` | Int32 | — | — | Named | `1` | 排序优先级（数值越大越靠前显示，默认为1） |
| `-SortByDate` | SwitchParameter | — | — | Named | — | 按日期（yyyyMMdd前缀）排序，而非优先级 |
| `-Ascending` | SwitchParameter | — | — | Named | — | 将排序顺序颠倒（升序改为降序） |
| `-First` | Int32 | — | — | Named | `0` | 限制 - 仅显示前 N 行输出 |

## Examples

### Add-LineToREADME -Line "New feature" -Section "## Features"

```powershell
Add-LineToREADME -Line "New feature" -Section "## Features"
```

### Add-LineToREADME "High prio item" "## Issues" -Priority 5

```powershell
Add-LineToREADME "High prio item" "## Issues" -Priority 5
```

## Related Links

- [Add-LineToREADME on GitHub](https://github.com/genXdev/genXdev)
