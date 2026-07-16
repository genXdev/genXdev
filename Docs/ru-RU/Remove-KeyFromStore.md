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
| `-StoreName` | String | ✅ | — | 0 | — | Название магазина |
| `-KeyName` | String | ✅ | — | 1 | — | Key to be deleted |
| `-SynchronizationKey` | String | — | — | 2 | — | Ключ для идентификации области синхронизации |
| `-DatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных хранилища ключ-значение |

## Related Links

- [Remove-KeyFromStore on GitHub](https://github.com/genXdev/genXdev)
