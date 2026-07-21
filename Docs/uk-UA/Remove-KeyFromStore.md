# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey`

## Synopsis

> Видаляє ключ із сховища ключ-значення.

## Description

Ця функція видаляє вказаний ключ з іменованого сховища ключ-значення. Для локальних сховищ ключ остаточно видаляється. Для синхронізованих сховищ ключ позначається як видалений, щоб дозволити синхронізацію.

## Syntax

```powershell
Remove-KeyFromStore -StoreName <String> -KeyName <String> [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Назва магазину |
| `-KeyName` | String | ✅ | — | 1 | — | Ключ, який потрібно видалити |
| `-SynchronizationKey` | String | — | — | 2 | — | Ключ для визначення області синхронізації |
| `-DatabasePath` | String | — | — | Named | — | Шлях до бази даних для файлів даних сховища ключ-значення |

## Examples

### Example 1

```powershell
Remove-KeyFromStore -StoreName "MyStore" -KeyName "MyKey"
```

Видаліть ключ "MyKey" зі сховища "MyStore".

### Example 2

```powershell
removekey "MyStore" "MyKey"
```

Видаліть ключ за допомогою псевдоніма.

## Parameter Details

### `-StoreName <String>`

> Назва магазину

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

> Ключ, який потрібно видалити

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SynchronizationKey <String>`

> Ключ для визначення області синхронізації

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabasePath <String>`

> Шлях до бази даних для файлів даних сховища ключ-значення

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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Initialize-KeyValueStores.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Sync-KeyValueStore.md)
