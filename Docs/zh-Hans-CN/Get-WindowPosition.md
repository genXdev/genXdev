# Get-WindowPosition

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `gwp

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WindowPosition [[-ProcessName] <String>] [<CommonParameters>]

Get-WindowPosition [-Process <Diagnostics.Process>] [<CommonParameters>]

Get-WindowPosition [-WindowHelper <GenXdev.Helpers.WindowObj[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByValue, ByPropertyName) | 0 | — | 要获取窗口位置的进程名称 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Process` | Diagnostics.Process | — | ✅ (ByValue, ByPropertyName) | Named | — | 窗口获取位置的过程 *(Parameter set: )* |
| `-WindowHelper` | GenXdev.Helpers.WindowObj[] | — | ✅ (ByValue, ByPropertyName) | Named | — | 用于直接窗口操作的 Get-Window 辅助对象 *(Parameter set: )* |

## Related Links

- [Get-WindowPosition on GitHub](https://github.com/genXdev/genXdev)
