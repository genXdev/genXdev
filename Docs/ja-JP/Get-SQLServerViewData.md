# Get-SQLServerViewData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLServerViewData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewData -ViewName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server データベースへの接続文字列。 *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server データベースの名前。 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | SQL Server インスタンス名。 *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | クエリを実行するビューの名前。 |
| `-Count` | Int32 | — | — | 3 | `100` | 返却するレコード数。-1は全レコード。 |

## Related Links

- [Get-SQLServerViewData on GitHub](https://github.com/genXdev/genXdev)
