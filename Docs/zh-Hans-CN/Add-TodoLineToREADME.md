# Add-TodoLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `todo

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-TodoLineToREADME [[-Line] <String>] [-Code] [-Done] [-Show] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | ✅ (ByValue) | 0 | `''` | The todo item text to add |
| `-Code` | SwitchParameter | — | — | Named | — | 在 Visual Studio Code 中打开 README |
| `-Show` | SwitchParameter | — | — | Named | — | 显示修改后的部分 |
| `-Done` | SwitchParameter | — | — | Named | — | 将待办事项标记为已完成 |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | 在 PowerShell 配置文件目录中使用 README |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | 使用 OneDrive 目录中的 README |

## Related Links

- [Add-TodoLineToREADME on GitHub](https://github.com/genXdev/genXdev)
