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
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | Nombre del proceso para obtener información de la ventana 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | ID del proceso para obtener información de la ventana |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | Identificador de ventana para obtener información |

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
