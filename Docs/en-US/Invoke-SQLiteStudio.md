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
| `-ConnectionString` | String | ✅ | — | 0 | — | The connection string to the SQLite database. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | The path to the SQLite database file. *(Parameter set: )* |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 1 | — | The query to execute. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | Optional parameters for the query. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | The isolation level to use. Default is ReadCommitted. |

## Related Links

- [Invoke-SQLiteStudio on GitHub](https://github.com/genXdev/genXdev)
