# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue

## Synopsis

> Управляет парами ключ-значение в хранилище на основе JSON-файла.

## Description

Обеспечивает постоянное хранение пар ключ-значение с использованием JSON-файлов. Обрабатывает как вставку новых записей, так и обновление существующих. Поддерживает опциональную синхронизацию для нелокальных хранилищ. Эта функция реализует операцию upsert, которая либо вставляет новые пары ключ-значение, либо обновляет существующие на основе комбинации ключа синхронизации, имени хранилища и имени ключа.

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

## Examples

### Example 1

```powershell
Set-ValueByKeyInStore -StoreName "ConfigStore" -KeyName "ApiEndpoint" `
    -Value "https://api.example.com"
```

Установите точку доступа API в ConfigStore.

### Example 2

```powershell
setvalue ConfigStore ApiEndpoint "https://api.example.com"
```

Используйте псевдоним, чтобы задать значение.

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)
