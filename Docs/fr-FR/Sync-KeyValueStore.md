# Sync-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Synchronise les fichiers JSON du magasin de clés-valeurs locaux et OneDrive.

## Description

Effectue une synchronisation bidirectionnelle entre les fichiers JSON fantômes locaux et OneDrive en utilisant une stratégie basée sur le timestamp de dernière modification. Les enregistrements sont fusionnés en fonction de leur heure de dernière modification, la version la plus récente prenant le pas.

## Syntax

```powershell
Sync-KeyValueStore [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Clé pour identifier la portée de synchronisation |
| `-DatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données du magasin clé-valeur |

## Examples

### Example 1

```powershell
Sync-KeyValueStore
```

### Example 2

```powershell
Sync-KeyValueStore -SynchronizationKey "UserSettings"
```

## Related Links

- [Sync-KeyValueStore on GitHub](https://github.com/genXdev/genXdev)
