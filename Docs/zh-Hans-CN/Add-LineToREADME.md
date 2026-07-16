# Add-LineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-LineToREADME [[-Line] <String>] -Section <String> -Prefix <String> [-Code] [-Done] [-Show] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | The line to add to the README |
| `-Section` | String | ✅ | — | 1 | — | The section to add the line to |
| `-Prefix` | String | ✅ | — | 2 | `'* '` | 要用于行的前缀 |
| `-Code` | SwitchParameter | — | — | Named | — | 修改后在 Visual Studio Code 中打开 |
| `-Show` | SwitchParameter | — | — | Named | — | 显示修改后的部分 |
| `-Done` | SwitchParameter | — | — | Named | — | 将项目标记为已完成 |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | 在 PowerShell 配置文件目录中使用 README |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | 使用 OneDrive 目录中的 README |

## Related Links

- [Add-LineToREADME on GitHub](https://github.com/genXdev/genXdev)
