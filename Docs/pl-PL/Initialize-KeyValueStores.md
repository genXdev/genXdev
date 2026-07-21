# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Inicjuje strukturę katalogów KeyValueStore dla przechowywania lokalnego i w OneDrive.

## Description

Tworzy strukturę katalogów dla magazynów klucz-wartość opartych na JSON w dwóch lokalizacjach: na komputerze lokalnym do natychmiastowego dostępu oraz w folderze OneDrive do synchronizacji w chmurze. Polecenie cmdlet zapewnia, że oba katalogi istnieją i są odpowiednio skonfigurowane.

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | Ścieżka bazy danych dla plików magazynu klucz-wartość |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

Tworzy standardowe katalogi lokalne i OneDrive dla magazynów klucz-wartość.

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

Tworzy katalogi magazynu klucz-wartość w określonej ścieżce niestandardowej.

## Parameter Details

### `-DatabasePath <String>`

> Ścieżka bazy danych dla plików magazynu klucz-wartość

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ValueByKeyFromStore.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Sync-KeyValueStore.md)
