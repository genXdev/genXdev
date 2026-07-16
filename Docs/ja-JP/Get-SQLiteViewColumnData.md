# Get-SQLiteViewColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteViewColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewColumnData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewColumnData -ViewName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLiteデータベースへの接続文字列。 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite データベースファイルへのパス。 *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | ビューの名前。 |
| `-ColumnName` | String | ✅ | — | 2 | — | 列名。 |
| `-Count` | Int32 | — | — | 3 | `100` | 返すレコード数です。デフォルトは100です。-1はすべてを意味します。 |

## Related Links

- [Get-SQLiteViewColumnData on GitHub](https://github.com/genXdev/genXdev)
