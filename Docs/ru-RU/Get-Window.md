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
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | Название процесса для получения информации об окне 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | Идентификатор процесса, для которого нужно получить информацию об окне |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | Обработчик окна для получения информации о нем |

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
