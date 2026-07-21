# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue`

## Synopsis

> Извлекает значение из хранилища ключ-значение на основе JSON.

## Description

* Извлекает значение для указанного ключа из хранилища ключ-значение на основе JSON-файла.
* Поддерживает необязательные значения по умолчанию и синхронизацию между различными областями.
* Обеспечивает автоматическую инициализацию и синхронизацию каталогов.

## Syntax

```powershell
Get-ValueByKeyFromStore -StoreName <String> -KeyName <String> [[-DefaultValue] <String>] [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Имя хранилища, из которого нужно получить ключ |
| `-KeyName` | String | ✅ | — | 1 | — | Ключ для извлечения из указанного хранилища |
| `-DefaultValue` | String | — | — | 2 | — | Необязательное значение по умолчанию |
| `-SynchronizationKey` | String | — | — | 3 | — | Ключ для определения области синхронизации |
| `-DatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных хранилища ключ-значение |

## Examples

### Example 1

```powershell
Get-ValueByKeyFromStore -StoreName "AppSettings" -KeyName "Theme" -DefaultValue "Dark"
```

Извлекает значение «Theme» из «AppSettings», возвращая «Dark», если не найдено.

### Example 2

```powershell
getvalue AppSettings Theme
```

Использует псевдоним 'getvalue' для получения значения.

## Parameter Details

### `-StoreName <String>`

> Имя хранилища, из которого нужно получить ключ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeyName <String>`

> Ключ для извлечения из указанного хранилища

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DefaultValue <String>`

> Необязательное значение по умолчанию

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SynchronizationKey <String>`

> Ключ для определения области синхронизации

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-StoreKeys.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Sync-KeyValueStore.md)
