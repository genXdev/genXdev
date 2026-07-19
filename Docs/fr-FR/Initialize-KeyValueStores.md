# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Initialise la structure de répertoires de KeyValueStore pour le stockage local et OneDrive.

## Description

Crée la structure de répertoires pour les stockages clé-valeur basés sur JSON à deux endroits : la machine locale pour un accès immédiat et le dossier OneDrive pour la synchronisation cloud. L'applet de commande s'assure que les deux répertoires existent et sont correctement configurés.

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <string>] [<CommonParameters>]
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

Crée des répertoires de stockage clé-valeur sous le chemin personnalisé spécifié.

## Related Links

- [Initialize-KeyValueStores on GitHub](https://github.com/genXdev/genXdev)
