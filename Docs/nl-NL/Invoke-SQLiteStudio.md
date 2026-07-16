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
| `-ConnectionString` | String | ✅ | — | 0 | — | De verbindingsreeks naar de SQLite-database. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Het pad naar het SQLite-databasebestand. *(Parameter set: )* |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 1 | — | De uit te voeren query. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | Optionele parameters voor de query. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Het te gebruiken isolatieniveau. Standaard is ReadCommitted. |

## Related Links

- [Invoke-SQLiteStudio on GitHub](https://github.com/genXdev/genXdev)
