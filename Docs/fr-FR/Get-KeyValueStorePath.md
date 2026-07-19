# Get-KeyValueStorePath

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtient le chemin d'accès au fichier pour un magasin de clés-valeurs.

## Description

* Construit le chemin du fichier pour un magasin clé-valeur basé sur la clé de synchronisation, le nom du magasin et le répertoire de base.

## Syntax

```powershell
Get-KeyValueStorePath [-SynchronizationKey] <string> [-StoreName] <string> [-BasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | ✅ | — | 0 | — | La clé de synchronisation utilisée pour identifier le magasin |
| `-StoreName` | String | ✅ | — | 1 | — | Le nom du magasin de clés-valeurs |
| `-BasePath` | String | — | — | Named | — | Le chemin du répertoire de base pour les fichiers de magasin |

## Examples

### Example 1

```powershell
Get-KeyValueStorePath -SynchronizationKey "Local" -StoreName "MyStore"
```

Obtenez le chemin d'un magasin local de paires clé-valeur.

## Related Links

- [Get-KeyValueStorePath on GitHub](https://github.com/genXdev/genXdev)
