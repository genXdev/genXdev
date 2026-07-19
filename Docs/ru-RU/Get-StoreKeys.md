# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys

## Synopsis

> Извлекает все имена ключей для заданного хранилища ключ-значение.

## Description

* Запрашивает JSON-файл KeyValueStore для получения всех активных (неудаленных) ключей для указанного хранилища.
* Опционально может фильтровать по области синхронизации.
* Автоматически инициализирует структуру каталогов, если она не найдена, и обрабатывает синхронизацию для нелокальных хранилищ.

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

## Examples

### Example 1

```powershell
Get-StoreKeys -StoreName "ApplicationSettings" -SynchronizationKey "Local"
```

Извлекает все ключи из хранилища ApplicationSettings для локальной области.

### Example 2

```powershell
getkeys AppSettings
```

Извлекает ключи, используя псевдоним.

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)
