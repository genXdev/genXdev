# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames`

## Synopsis

> Hämtar namnen på tillgängliga nyckel-värde-lager.

## Description

* Skannar katalog för nyckel-värde-lagring efter JSON-filer och extraherar unika lagringsnamn baserat på det angivna synkroniseringsnyckelmönstret.
* Säkerställer att lagringskatalogen finns och synkroniserar icke-lokala lagringar om nödvändigt.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Nyckel för att identifiera synkroniseringsomfattning, standard är alla |
| `-DatabasePath` | String | — | — | Named | — | Databassökväg för nyckel-värde-lagringsdatafiler |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

Hämtar alla butiksnamn från standardplatsen.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

Hämtar butiksnamn för synkroniseringsomfånget 'Lokal'.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Hämtar alla butiksnamn från en anpassad databassökväg med hjälp av aliaset.

## Parameter Details

### `-SynchronizationKey <String>`

> Nyckel för att identifiera synkroniseringsomfattning, standard är alla

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

> Databassökväg för nyckel-värde-lagringsdatafiler

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

- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Sync-KeyValueStore.md)
