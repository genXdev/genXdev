# Get-SQLiteTableData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteTableData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableData -TableName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLiteデータベースへの接続文字列。 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite データベースファイルへのパス。 *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | データのクエリ元となるテーブルの名前。 |
| `-Count` | Int32 | — | — | 2 | `100` | 返却するレコードの最大数。すべての場合は-1。 |

## Related Links

- [Get-SQLiteTableData on GitHub](https://github.com/genXdev/genXdev)
