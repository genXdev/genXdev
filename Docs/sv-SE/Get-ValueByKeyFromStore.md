# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue`

## Synopsis

> Hämtar ett värde från ett JSON-baserat nyckel-värde-lager.

## Description

* Hämtar ett värde för en angiven nyckel från en JSON-filbaserad nyckel-värde-lagring.
* Stöder valfria standardvärden och synkronisering över olika omfattningar.
* Ger automatisk kataloginitiering och synkronisering.

## Syntax

```powershell
Get-ValueByKeyFromStore -StoreName <String> -KeyName <String> [[-DefaultValue] <String>] [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Namnet på butiken att hämta nyckeln från |
| `-KeyName` | String | ✅ | — | 1 | — | Nyckel att hämta från den angivna butiken |
| `-DefaultValue` | String | — | — | 2 | — | Ett valfritt standardvärde |
| `-SynchronizationKey` | String | — | — | 3 | — | Nyckel för att identifiera synkroniseringsomfattning |
| `-DatabasePath` | String | — | — | Named | — | Databassökväg för nyckel-värde-lagringsdatafiler |

## Examples

### Example 1

```powershell
Get-ValueByKeyFromStore -StoreName "AppSettings" -KeyName "Theme" -DefaultValue "Dark"
```

Hämtar "Theme"-värdet från "AppSettings", returnerar "Dark" om det inte hittas.

### Example 2

```powershell
getvalue AppSettings Theme
```

Använder aliaset 'getvalue' för att hämta ett värde.

## Parameter Details

### `-StoreName <String>`

> Namnet på butiken att hämta nyckeln från

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

> Nyckel att hämta från den angivna butiken

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

> Ett valfritt standardvärde

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

> Nyckel för att identifiera synkroniseringsomfattning

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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-StoreKeys.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Sync-KeyValueStore.md)
