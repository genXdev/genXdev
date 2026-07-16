# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
