# Get-KeyValueStorePath

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtient le chemin d'accès au fichier pour un magasin de clés-valeurs.

## Description

* Construit le chemin du fichier pour un magasin de clés-valeurs basé sur la clé de synchronisation, le nom du magasin et le répertoire de base.

## Syntax

```powershell
Get-KeyValueStorePath -SynchronizationKey <String> -StoreName <String> [-BasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | ✅ | — | 0 | — | La clé de synchronisation utilisée pour identifier le magasin |
| `-StoreName` | String | ✅ | — | 1 | — | Le nom du magasin de clés-valeurs |
| `-BasePath` | String | — | — | Named | — | Le chemin du répertoire de base pour les fichiers de stockage |

## Examples

### Example 1

```powershell
Get-KeyValueStorePath -SynchronizationKey "Local" -StoreName "MyStore"
```

Obtient le chemin d'un magasin de clés-valeurs local.

## Parameter Details

### `-SynchronizationKey <String>`

> La clé de synchronisation utilisée pour identifier le magasin

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

> Le nom du magasin de clés-valeurs

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

> Le chemin du répertoire de base pour les fichiers de stockage

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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-KeyValueStoreNames.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRInitialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSync-KeyValueStore.md)
