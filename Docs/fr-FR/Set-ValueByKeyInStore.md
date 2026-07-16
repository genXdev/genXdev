# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)
