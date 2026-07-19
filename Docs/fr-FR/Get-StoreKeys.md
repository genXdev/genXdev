# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys

## Synopsis

> Récupère tous les noms de clés pour un magasin clé-valeur donné.

## Description

* Interroge le fichier JSON KeyValueStore pour récupérer toutes les clés actives (non supprimées) d'un magasin spécifié.
* Peut éventuellement filtrer par portée de synchronisation.
* Initialise automatiquement la structure de répertoires si elle n'est pas trouvée et gère la synchronisation pour les magasins non locaux.

## Syntax

```powershell
Get-StoreKeys [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Name of the store whose keys should be retrieved |
| `-SynchronizationKey` | String | — | — | 1 | — | Clé pour identifier le périmètre de synchronisation, par défaut tout |
| `-DatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données du magasin clé-valeur |

## Examples

### Example 1

```powershell
Get-StoreKeys -StoreName "ApplicationSettings" -SynchronizationKey "Local"
```

Récupère toutes les clés du magasin ApplicationSettings pour la portée Locale.

### Example 2

```powershell
getkeys AppSettings
```

Récupère les clés en utilisant l'alias.

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)
