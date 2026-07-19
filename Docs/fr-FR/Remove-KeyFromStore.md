# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey

## Synopsis

> Supprime une clé d'un magasin de clés-valeurs.

## Description

Cette fonction supprime une clé spécifiée d'un magasin de paires clé-valeur nommé. Pour les magasins locaux, la clé est définitivement supprimée. Pour les magasins synchronisés, la clé est marquée comme supprimée pour permettre la synchronisation.

## Syntax

```powershell
Remove-KeyFromStore [-StoreName] <string> [-KeyName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nom du magasin |
| `-KeyName` | String | ✅ | — | 1 | — | Clé à supprimer |
| `-SynchronizationKey` | String | — | — | 2 | — | Clé pour identifier la portée de synchronisation |
| `-DatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données du magasin clé-valeur |

## Examples

### Example 1

```powershell
Remove-KeyFromStore -StoreName "MyStore" -KeyName "MyKey"
```

Supprimez la clé "MyKey" du magasin "MyStore".

### Example 2

```powershell
removekey "MyStore" "MyKey"
```

Supprimez une clé en utilisant l'alias.

## Related Links

- [Remove-KeyFromStore on GitHub](https://github.com/genXdev/genXdev)
