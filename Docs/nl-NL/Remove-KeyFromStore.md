# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey`

## Synopsis

> Verwijdert een sleutel uit een sleutel-waardeopslag.

## Description

Deze functie verwijdert een opgegeven sleutel uit een benoemde sleutel-waardeopslag. Voor lokale opslag wordt de sleutel permanent verwijderd. Voor gesynchroniseerde opslag wordt de sleutel gemarkeerd als verwijderd om synchronisatie mogelijk te maken.

## Syntax

```powershell
Remove-KeyFromStore -StoreName <String> -KeyName <String> [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Naam van de winkel |
| `-KeyName` | String | ✅ | — | 1 | — | Te verwijderen sleutel |
| `-SynchronizationKey` | String | — | — | 2 | — | Sleutel om synchronisatiebereik te identificeren |
| `-DatabasePath` | String | — | — | Named | — | Databasepad voor gegevensbestanden van sleutelwaardearchief |

## Examples

### Example 1

```powershell
Remove-KeyFromStore -StoreName "MyStore" -KeyName "MyKey"
```

Verwijder de sleutel 'MyKey' uit de opslagplaats 'MyStore'.

### Example 2

```powershell
removekey "MyStore" "MyKey"
```

Verwijder een sleutel met behulp van de alias.

## Parameter Details

### `-StoreName <String>`

> Naam van de winkel

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

> Te verwijderen sleutel

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

> Sleutel om synchronisatiebereik te identificeren

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

> Databasepad voor gegevensbestanden van sleutelwaardearchief

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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Initialize-KeyValueStores.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Sync-KeyValueStore.md)
