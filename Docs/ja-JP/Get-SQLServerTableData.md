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
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server データベースへの接続文字列。 *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server データベースの名前。 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | SQL Server インスタンス名。 *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | データのクエリ元となるテーブルの名前。 |
| `-Count` | Int32 | — | — | 3 | `100` | 返却するレコードの最大数。すべての場合は-1。 |

## Related Links

- [Get-SQLServerTableData on GitHub](https://github.com/genXdev/genXdev)
