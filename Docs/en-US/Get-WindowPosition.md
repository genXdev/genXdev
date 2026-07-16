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
| `-ProcessName` | String | — | ✅ (ByValue, ByPropertyName) | 0 | — | The process name of the window to get position for *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Process` | Diagnostics.Process | — | ✅ (ByValue, ByPropertyName) | Named | — | The process of the window to get position for *(Parameter set: )* |
| `-WindowHelper` | GenXdev.Helpers.WindowObj[] | — | ✅ (ByValue, ByPropertyName) | Named | — | Get-Window helper object for direct window manipulation *(Parameter set: )* |

## Related Links

- [Get-WindowPosition on GitHub](https://github.com/genXdev/genXdev)
