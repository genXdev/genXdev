# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue

## Synopsis

> Gère les paires clé-valeur dans un stockage basé sur des fichiers JSON.

## Description

Fournit un stockage persistant pour les paires clé-valeur à l'aide de fichiers JSON. Gère à la fois l'insertion de nouvelles entrées et la mise à jour des entrées existantes. Prend en charge la synchronisation optionnelle pour les magasins non locaux. Cette fonction implémente une opération upsert qui insère de nouvelles paires clé-valeur ou met à jour les existantes en fonction de la combinaison de la clé de synchronisation, du nom du magasin et du nom de la clé.

## Syntax

```powershell
Set-ValueByKeyInStore [-StoreName] <string> [-KeyName] <string> [[-Value] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nom du magasin pour la paire clé-valeur |
| `-KeyName` | String | ✅ | — | 1 | — | Nom de la clé à définir ou mettre à jour |
| `-Value` | String | — | — | 2 | — | Valeur à stocker |
| `-SynchronizationKey` | String | — | — | 3 | — | Clé pour identifier la portée de synchronisation |
| `-DatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données du magasin clé-valeur |

## Examples

### Example 1

```powershell
Set-ValueByKeyInStore -StoreName "ConfigStore" -KeyName "ApiEndpoint" `
    -Value "https://api.example.com"
```

Définissez un point de terminaison d'API dans le ConfigStore.

### Example 2

```powershell
setvalue ConfigStore ApiEndpoint "https://api.example.com"
```

Utilisez l'alias pour définir une valeur.

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)
