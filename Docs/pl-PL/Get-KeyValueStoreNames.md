# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames`

## Synopsis

> Pobiera nazwy dostępnych magazynów klucz-wartość.

## Description

* Skanuje katalog magazynu klucz-wartość w poszukiwaniu plików JSON i wyodrębnia unikalne nazwy magazynów na podstawie określonego wzorca klucza synchronizacji.
* Zapewnia istnienie katalogu magazynu i synchronizuje magazyny nielokalne, jeśli to konieczne.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Klucz do identyfikacji zakresu synchronizacji, domyślnie wszystkie |
| `-DatabasePath` | String | — | — | Named | — | Ścieżka bazy danych dla plików magazynu klucz-wartość |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

Pobiera wszystkie nazwy sklepów z domyślnej lokalizacji.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

Pobiera nazwy magazynów dla zakresu synchronizacji „Lokalny”.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Pobiera wszystkie nazwy sklepów z niestandardowej ścieżki bazy danych przy użyciu aliasu.

## Parameter Details

### `-SynchronizationKey <String>`

> Klucz do identyfikacji zakresu synchronizacji, domyślnie wszystkie

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

> Ścieżka bazy danych dla plików magazynu klucz-wartość

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

- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Sync-KeyValueStore.md)
