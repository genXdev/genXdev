# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ValueByKeyFromStore [-StoreName] <string> [-KeyName] <string> [[-DefaultValue] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Имя хранилища для получения ключа |
| `-KeyName` | String | ✅ | — | 1 | — | Ключ для извлечения из указанного хранилища |
| `-DefaultValue` | String | — | — | 2 | — | A optional default value |
| `-SynchronizationKey` | String | — | — | 3 | — | Ключ для идентификации области синхронизации |
| `-DatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных хранилища ключ-значение |

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
