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
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server データベースへの接続文字列 *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server データベースの名前 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | SQL Serverインスタンス名 *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | テーブルの名前 |

## Related Links

- [Get-SQLServerTableSchema on GitHub](https://github.com/genXdev/genXdev)
