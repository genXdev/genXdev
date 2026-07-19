# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue

## Synopsis

> Récupère une valeur à partir d'un stockage clé-valeur basé sur JSON.

## Description

* Récupère une valeur pour une clé spécifiée à partir d'un magasin de paires clé-valeur basé sur un fichier JSON.
* Prend en charge les valeurs par défaut optionnelles et la synchronisation entre différentes portées.
* Fournit une initialisation automatique des répertoires et une synchronisation.

## Syntax

```powershell
Get-ValueByKeyFromStore [-StoreName] <string> [-KeyName] <string> [[-DefaultValue] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nom du magasin à partir duquel récupérer la clé |
| `-KeyName` | String | ✅ | — | 1 | — | Clé à récupérer du magasin spécifié |
| `-DefaultValue` | String | — | — | 2 | — | Une valeur par défaut optionnelle |
| `-SynchronizationKey` | String | — | — | 3 | — | Clé pour identifier la portée de synchronisation |
| `-DatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données du magasin clé-valeur |

## Examples

### Example 1

```powershell
Get-ValueByKeyFromStore -StoreName "AppSettings" -KeyName "Theme" -DefaultValue "Dark"
```

Récupère la valeur "Theme" de "AppSettings", renvoyant "Dark" si introuvable.

### Example 2

```powershell
getvalue AppSettings Theme
```

Utilise l'alias 'getvalue' pour récupérer une valeur.

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
