# Remove-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Удаляет хранилище ключ-значение.

## Description

Эта функция удаляет указанное хранилище пар ключ-значение. Для локальных хранилищ она физически удаляет файл. Для синхронизированных хранилищ она помечает все ключи как удаленные и запускает синхронизацию.

## Syntax

```powershell
Remove-KeyValueStore [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Название магазина для удаления |
| `-SynchronizationKey` | String | — | — | 1 | — | Ключ для идентификации области синхронизации |
| `-DatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных хранилища ключ-значение |

## Examples

### Example 1

```powershell
Remove-KeyValueStore -StoreName "MyStore"
```

Удалить локальное хранилище ключей и значений с именем "MyStore".

### Example 2

```powershell
Remove-KeyValueStore "MyStore" -SynchronizationKey "Cloud"
```

Удалить синхронизированное хранилище с определенным ключом синхронизации.

## Related Links

- [Remove-KeyValueStore on GitHub](https://github.com/genXdev/genXdev)
