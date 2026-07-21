# Get-KeyValueStorePath

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Возвращает путь к файлу для хранилища ключей и значений.

## Description

* Формирует путь к файлу для хранилища ключей и значений на основе
  ключа синхронизации, имени хранилища и базового каталога.

## Syntax

```powershell
Get-KeyValueStorePath -SynchronizationKey <String> -StoreName <String> [-BasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | ✅ | — | 0 | — | Ключ синхронизации, используемый для идентификации хранилища |
| `-StoreName` | String | ✅ | — | 1 | — | Имя хранилища ключей-значений |
| `-BasePath` | String | — | — | Named | — | Базовый путь к каталогу для файлов хранилища |

## Examples

### Example 1

```powershell
Get-KeyValueStorePath -SynchronizationKey "Local" -StoreName "MyStore"
```

Получить путь для локального хранилища ключ-значение.

## Parameter Details

### `-SynchronizationKey <String>`

> Ключ синхронизации, используемый для идентификации хранилища

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StoreName <String>`

> Имя хранилища ключей-значений

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-BasePath <String>`

> Базовый путь к каталогу для файлов хранилища

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
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Sync-KeyValueStore.md)
