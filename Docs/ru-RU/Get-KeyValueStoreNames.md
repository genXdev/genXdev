# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames`

## Synopsis

> Извлекает имена доступных хранилищ ключей и значений.

## Description

* Сканирует каталог хранилища ключ-значение для файлов JSON и извлекает уникальные имена хранилищ на основе указанного шаблона ключа синхронизации.
* Убеждается, что каталог хранилища существует, и при необходимости синхронизирует нелокальные хранилища.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Ключ для определения области синхронизации, по умолчанию — все |
| `-DatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных хранилища ключ-значение |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

Извлекает все названия магазинов из расположения по умолчанию.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

Извлекает имена магазинов для области синхронизации 'Локальная'.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Извлекает все имена магазинов из пользовательского пути к базе данных с помощью псевдонима.

## Parameter Details

### `-SynchronizationKey <String>`

> Ключ для определения области синхронизации, по умолчанию — все

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabasePath <String>`

> Путь к базе данных для файлов данных хранилища ключ-значение

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Sync-KeyValueStore.md)
