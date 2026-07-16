# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)
