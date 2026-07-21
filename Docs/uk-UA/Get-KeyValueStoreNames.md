# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames`

## Synopsis

> Отримує назви доступних сховищ ключ-значення.

## Description

* Сканує каталог сховища ключ-значення на наявність файлів JSON та витягує унікальні назви сховищ на основі заданого шаблону ключа синхронізації.
* Перевіряє, чи існує каталог сховища, і за необхідності синхронізує нелокальні сховища.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Ключ для визначення області синхронізації, за замовчуванням — усі |
| `-DatabasePath` | String | — | — | Named | — | Шлях до бази даних для файлів даних сховища ключ-значення |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

Отримує всі назви магазинів з розташування за замовчуванням.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

Отримує назви магазинів для синхронізаційної області 'Local'.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Отримує всі назви магазинів із власного шляху до бази даних, використовуючи псевдонім.

## Parameter Details

### `-SynchronizationKey <String>`

> Ключ для визначення області синхронізації, за замовчуванням — усі

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

- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Sync-KeyValueStore.md)
