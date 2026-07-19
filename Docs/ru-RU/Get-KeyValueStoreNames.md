# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames

## Synopsis

> Получает названия доступных хранилищ ключей-значений.

## Description

* Сканирует каталог хранилища ключ-значение на наличие JSON-файлов и извлекает уникальные имена хранилищ на основе указанного шаблона ключа синхронизации.
* Обеспечивает существование каталога хранилища и синхронизирует нелокальные хранилища при необходимости.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Ключ для идентификации области синхронизации, по умолчанию — все |
| `-DatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных хранилища ключ-значение |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

Получает все названия магазинов из местоположения по умолчанию.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

Извлекает названия магазинов для области синхронизации 'Локальная'.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Извлекает все названия магазинов из пользовательского пути к базе данных с использованием псевдонима.

## Related Links

- [Get-KeyValueStoreNames on GitHub](https://github.com/genXdev/genXdev)
