# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-ValueByKeyInStore [-StoreName] <string> [-KeyName] <string> [[-Value] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Название магазина для пары ключ-значение |
| `-KeyName` | String | ✅ | — | 1 | — | Имя ключа для установки или обновления |
| `-Value` | String | — | — | 2 | — | Value to be stored |
| `-SynchronizationKey` | String | — | — | 3 | — | Ключ для идентификации области синхронизации |
| `-DatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных хранилища ключ-значение |

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)
