# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue`

## Synopsis

> Zarządza parami klucz-wartość w magazynie opartym na plikach JSON.

## Description

Zapewnia trwałe przechowywanie par klucz-wartość przy użyciu plików JSON. Obsługuje zarówno wstawianie nowych wpisów, jak i aktualizację istniejących. Wspiera opcjonalną synchronizację dla magazynów innych niż lokalne. Ta funkcja implementuje operację upsert, która wstawia nowe pary klucz-wartość lub aktualizuje istniejące w zależności od kombinacji klucza synchronizacji, nazwy magazynu i nazwy klucza.

## Syntax

```powershell
Set-ValueByKeyInStore -StoreName <String> -KeyName <String> [[-Value] <String>] [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nazwa magazynu dla pary klucz-wartość |
| `-KeyName` | String | ✅ | — | 1 | — | Nazwa klucza do ustawienia lub aktualizacji |
| `-Value` | String | — | — | 2 | — | Wartość do przechowania |
| `-SynchronizationKey` | String | — | — | 3 | — | Klucz identyfikujący zakres synchronizacji |
| `-DatabasePath` | String | — | — | Named | — | Ścieżka bazy danych dla plików magazynu klucz-wartość |

## Examples

### Example 1

```powershell
Set-ValueByKeyInStore -StoreName "ConfigStore" -KeyName "ApiEndpoint" `
    -Value "https://api.example.com"
```

Ustaw punkt końcowy API w magazynie konfiguracji.

### Example 2

```powershell
setvalue ConfigStore ApiEndpoint "https://api.example.com"
```

Użyj aliasu, aby ustawić wartość.

## Parameter Details

### `-StoreName <String>`

> Nazwa magazynu dla pary klucz-wartość

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

> Nazwa klucza do ustawienia lub aktualizacji

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> Wartość do przechowania

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

> Klucz identyfikujący zakres synchronizacji

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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-KeyValueStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Sync-KeyValueStore.md)
