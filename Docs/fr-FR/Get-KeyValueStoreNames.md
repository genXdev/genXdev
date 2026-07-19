# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames

## Synopsis

> Récupère les noms des magasins de clés-valeurs disponibles.

## Description

* Scanne le répertoire du key-value store à la recherche de fichiers JSON et extrait les noms de stores uniques en fonction du modèle de clé de synchronisation spécifié.
* Vérifie que le répertoire du store existe et synchronise les stores non locaux si nécessaire.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Clé pour identifier le périmètre de synchronisation, par défaut tout |
| `-DatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données du magasin clé-valeur |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

Récupère tous les noms de magasins depuis l'emplacement par défaut.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

Récupère les noms de magasins pour la portée de synchronisation 'Locale'.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Récupère tous les noms de magasins à partir d'un chemin de base de données personnalisé en utilisant l'alias.

## Related Links

- [Get-KeyValueStoreNames on GitHub](https://github.com/genXdev/genXdev)
