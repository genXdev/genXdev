# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-StoreKeys [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Название магазина, ключи которого нужно получить |
| `-SynchronizationKey` | String | — | — | 1 | — | Ключ для идентификации области синхронизации, по умолчанию — все |
| `-DatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных хранилища ключ-значение |

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)
