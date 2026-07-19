# Invoke-SQLiteStudio

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Voert SQLite-databasequery's uit met ondersteuning voor parameters en transacties.

## Description

Provides a PowerShell interface for executing SQLite queries with support for:
- Connection via connection string or database file path
- Parameterized queries to prevent SQL injection
- Transaction isolation level control
- Multiple query execution in a single transaction
- Pipeline input for queries and parameters

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

## Examples

### Invoke-SQLiteStudio `     -DatabaseFilePath "C:\data\users.sqlite" `     -Queries "SELECT * FROM Users WHERE active = @status" `     -SqlParameters @{"status" = 1}

```powershell
Invoke-SQLiteStudio `
    -DatabaseFilePath "C:\data\users.sqlite" `
    -Queries "SELECT * FROM Users WHERE active = @status" `
    -SqlParameters @{"status" = 1}
```

### "SELECT * FROM Users" | isql -DatabaseFilePath "C:\data\users.sqlite"

```powershell
"SELECT * FROM Users" | isql -DatabaseFilePath "C:\data\users.sqlite"
```

## Related Links

- [Invoke-SQLiteStudio on GitHub](https://github.com/genXdev/genXdev)
