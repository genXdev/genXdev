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
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server データベースへの接続文字列 *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server データベースの名前 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | SQL Serverインスタンス名 *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | クエリするテーブルの名前 |
| `-ColumnName` | String | ✅ | — | 3 | — | 取得する列の名前 |
| `-Count` | Int32 | — | — | 4 | `100` | 返却するレコード数。デフォルトは100。すべての場合は-1を使用。 |

## Related Links

- [Get-SQLServerTableColumnData on GitHub](https://github.com/genXdev/genXdev)
