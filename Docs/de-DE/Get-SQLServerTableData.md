# Get-SQLServerTableData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLServerTableData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableData -TableName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQL Server-Datenbank. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Der Name der SQL Server-Datenbank. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | Der Name der SQL Server-Instanz. *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | Der Name der Tabelle, aus der Daten abgefragt werden. |
| `-Count` | Int32 | — | — | 3 | `100` | Die maximale Anzahl der zurückzugebenden Datensätze. -1 für alle. |

## Related Links

- [Get-SQLServerTableData on GitHub](https://github.com/genXdev/genXdev)
