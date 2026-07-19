# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue

## Synopsis

> Извлекает значение из хранилища ключ-значение на основе JSON.

## Description

* Извлекает значение для указанного ключа из хранилища ключ-значение на основе JSON-файла.
* Поддерживает опциональные значения по умолчанию и синхронизацию между различными областями видимости.
* Обеспечивает автоматическую инициализацию директории и синхронизацию.

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

## Examples

### Example 1

```powershell
Get-ValueByKeyFromStore -StoreName "AppSettings" -KeyName "Theme" -DefaultValue "Dark"
```

Извлекает значение "Theme" из "AppSettings", возвращая "Dark", если не найдено.

### Example 2

```powershell
getvalue AppSettings Theme
```

Использует псевдоним 'getvalue' для извлечения значения.

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
