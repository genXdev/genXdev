# Get-Window

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-Window [[-ProcessName] <string>] [-ProcessId <int>] [-WindowHandle <long>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | Name of the process to get window information for 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | 要获取窗口信息的进程ID |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | 用于获取信息的窗口句柄 |

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
