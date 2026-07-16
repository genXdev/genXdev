# Get-SQLServerViews

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLServerViews -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViews -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server データベースへの接続文字列。 *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server データベースの名前。 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | SQL Server インスタンス名。 *(Parameter set: )* |

## Related Links

- [Get-SQLServerViews on GitHub](https://github.com/genXdev/genXdev)
