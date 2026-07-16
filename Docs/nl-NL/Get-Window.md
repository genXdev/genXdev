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
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | Naam van het proces om vensterinformatie voor op te halen 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | ID van het proces om vensterinformatie voor te verkrijgen |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | Vensterhandgreep om informatie voor op te halen |

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
