# Get-SQLServerTableColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLServerTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableColumnData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQL Server-Datenbank *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Der Name der SQL Server-Datenbank *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | Der Name der SQL Server-Instanz *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | Der Name der abzufragenden Tabelle |
| `-ColumnName` | String | ✅ | — | 3 | — | Der Name der abzurufenden Spalte |
| `-Count` | Int32 | — | — | 4 | `100` | Anzahl der zurückzugebenden Datensätze. Standardwert: 100. Verwenden Sie -1 für alle. |

## Related Links

- [Get-SQLServerTableColumnData on GitHub](https://github.com/genXdev/genXdev)
