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
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | Nome do processo para obter informações da janela 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | ID do processo para obter informações da janela |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | Identificador da janela para obter informações |

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
