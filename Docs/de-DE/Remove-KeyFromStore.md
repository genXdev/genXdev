# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-KeyFromStore [-StoreName] <string> [-KeyName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Name of the store |
| `-KeyName` | String | ✅ | — | 1 | — | Key to be deleted |
| `-SynchronizationKey` | String | — | — | 2 | — | Schlüssel zur Identifizierung des Synchronisationsbereichs |
| `-DatabasePath` | String | — | — | Named | — | Datenbankpfad für Key-Value-Speicherdatendateien |

## Related Links

- [Remove-KeyFromStore on GitHub](https://github.com/genXdev/genXdev)
