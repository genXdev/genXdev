# Get-SQLServerTableSchema

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLServerTableSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableSchema -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableSchema -TableName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQL Server-Datenbank *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Der Name der SQL Server-Datenbank *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | Der Name der SQL Server-Instanz *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | Der Name der Tabelle |

## Related Links

- [Get-SQLServerTableSchema on GitHub](https://github.com/genXdev/genXdev)
