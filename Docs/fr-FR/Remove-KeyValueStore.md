# Remove-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Supprime un magasin clé-valeur.

## Description

Cette fonction supprime un magasin de paires clé-valeur spécifié. Pour les magasins locaux, elle supprime physiquement le fichier. Pour les magasins synchronisés, elle marque toutes les clés comme supprimées et déclenche la synchronisation.

## Syntax

```powershell
Remove-KeyValueStore [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nom de la boutique à supprimer |
| `-SynchronizationKey` | String | — | — | 1 | — | Clé pour identifier la portée de synchronisation |
| `-DatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données du magasin clé-valeur |

## Examples

### Example 1

```powershell
Remove-KeyValueStore -StoreName "MyStore"
```

Supprimez un magasin clé-valeur local nommé "MyStore".

### Example 2

```powershell
Remove-KeyValueStore "MyStore" -SynchronizationKey "Cloud"
```

Supprimer un magasin synchronisé avec une clé de synchronisation spécifique.

## Related Links

- [Remove-KeyValueStore on GitHub](https://github.com/genXdev/genXdev)
