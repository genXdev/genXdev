# Invoke-SQLiteStudio

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-SQLiteStudio -ConnectionString <String> [<CommonParameters>]

Invoke-SQLiteStudio -DatabaseFilePath <String> [<CommonParameters>]

Invoke-SQLiteStudio -Queries <String[]> [[-SqlParameters] <Collections.Hashtable[]>] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La chaîne de connexion à la base de données SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Le chemin vers le fichier de base de données SQLite. *(Parameter set: )* |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 1 | — | La requête à exécuter. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | Paramètres optionnels pour la requête. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Le niveau d'isolation à utiliser. Par défaut, ReadCommitted. |

## Related Links

- [Invoke-SQLiteStudio on GitHub](https://github.com/genXdev/genXdev)
