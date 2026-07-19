# Sync-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Синхронизирует локальные файлы JSON с хранилищем ключ-значение OneDrive.

## Description

Выполняет двустороннюю синхронизацию между локальными и теневыми JSON-файлами OneDrive с использованием стратегии отметок времени последнего изменения. Записи объединяются на основе времени их последнего изменения, причем более новые версии имеют приоритет.

## Syntax

```powershell
Sync-KeyValueStore [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Ключ для идентификации области синхронизации |
| `-DatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных хранилища ключ-значение |

## Examples

### Example 1

```powershell
Sync-KeyValueStore
```

### Example 2

```powershell
Sync-KeyValueStore -SynchronizationKey "UserSettings"
```

## Related Links

- [Sync-KeyValueStore on GitHub](https://github.com/genXdev/genXdev)
