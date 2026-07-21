# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Initialise la structure du répertoire KeyValueStore pour le stockage local et OneDrive.

## Description

Crée une structure de répertoires pour des magasins de clés-valeurs basés sur JSON à deux emplacements : la machine locale pour un accès immédiat et le dossier OneDrive pour la synchronisation cloud. L'applet de commande garantit que les deux répertoires existent et sont correctement configurés.

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | Chemin de la base de données pour les fichiers de données du magasin clé-valeur |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

Crée les répertoires locaux et OneDrive standard pour les magasins de paires clé-valeur.

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

Crée des répertoires de magasin clé-valeur sous le chemin personnalisé spécifié.

## Parameter Details

### `-DatabasePath <String>`

> Chemin de la base de données pour les fichiers de données du magasin clé-valeur

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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-ValueByKeyFromStore.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSync-KeyValueStore.md)
