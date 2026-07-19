# Add-TodoLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `todo

## Synopsis

> 向README.md文件中添加一个待办事项。

## Description

Adds a timestamped todo item to the "## Todoos" section of a README.md file. The todo items can be marked as done and the modified section can be displayed. Each new todo item is automatically timestamped unless marking as done.

## Syntax

```powershell
Add-TodoLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-Done] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | The todo item text to add |
| `-Code` | SwitchParameter | — | — | Named | — | 在 Visual Studio Code 中打开 README |
| `-Show` | SwitchParameter | — | — | Named | — | 显示修改后的部分 |
| `-Done` | SwitchParameter | — | — | Named | — | 将待办事项标记为已完成 |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | 在 PowerShell 配置文件目录中使用 README |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | 使用 OneDrive 目录中的 README |
| `-Priority` | Int32 | — | — | Named | `1` | 排序优先级（数值越大越靠前显示，默认为1） |
| `-SortByDate` | SwitchParameter | — | — | Named | — | 按日期（yyyyMMdd前缀）排序，而非优先级 |
| `-Ascending` | SwitchParameter | — | — | Named | — | 将排序顺序颠倒（升序改为降序） |
| `-First` | Int32 | — | — | Named | `0` | 限制 - 仅显示前 N 行输出 |

## Examples

### Add-TodoLineToREADME -Line "Implement new feature" -Show -Code

```powershell
Add-TodoLineToREADME -Line "Implement new feature" -Show -Code
```

### todo "Fix bug" -Done

```powershell
todo "Fix bug" -Done
```

## Related Links

- [Add-TodoLineToREADME on GitHub](https://github.com/genXdev/genXdev)
