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
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | Nom du processus pour obtenir les informations de la fenêtre 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | ID du processus pour obtenir les informations sur la fenêtre |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | Handle de fenêtre pour lequel obtenir des informations |

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
