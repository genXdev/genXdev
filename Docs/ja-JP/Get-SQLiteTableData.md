# Get-SQLiteTableData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> オプションのレコード制限付きでSQLiteデータベーステーブルからデータを取得します。

## Description

この関数は、接続文字列またはデータベースファイルパスを使用して、SQLiteデータベーステーブルからデータをクエリします。データベースへの接続の柔軟性を提供し、Countパラメータを通じて取得するデータ量を制御します。

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

## Examples

### Get-SQLiteTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50

```powershell
Get-SQLiteTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50
```

### Get-SQLiteTableData "C:\data\users.db" "Employees"

```powershell
Get-SQLiteTableData "C:\data\users.db" "Employees"
```

## Related Links

- [Get-SQLiteTableData on GitHub](https://github.com/genXdev/genXdev)
