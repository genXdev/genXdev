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
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | Name des Prozesses, um Fensterinformationen abzurufen 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | ID des Prozesses, für den Fensterinformationen abgerufen werden sollen |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | Fenstergriff, für den Informationen abgerufen werden sollen |

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
