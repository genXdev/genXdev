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
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | ウィンドウ情報を取得するプロセスの名前 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | ウィンドウ情報を取得するプロセスのID |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | 情報を取得するウィンドウハンドル |

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
