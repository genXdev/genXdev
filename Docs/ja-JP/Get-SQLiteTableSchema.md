# Get-SQLiteTableSchema

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> 指定されたSQLiteテーブルのスキーマ情報を取得します。

## Description

この関数は、指定されたテーブルの詳細なスキーマ情報を取得するためにSQLiteデータベースにクエリを実行します。SQLiteのPRAGMA table_infoコマンドを使用して、列名、型、NULL許容状態、デフォルト値を含む列定義を返します。

## Syntax

```powershell
Get-SQLiteTableSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableSchema -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableSchema -TableName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLiteデータベースへの接続文字列 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLiteデータベースファイルへのパス *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | テーブルの名前 |

## Examples

### Get-SQLiteTableSchema -DatabaseFilePath "C:\Databases\mydb.sqlite" `     -TableName "Users"

```powershell
Get-SQLiteTableSchema -DatabaseFilePath "C:\Databases\mydb.sqlite" `
    -TableName "Users"
```

### Get-SQLiteTableSchema -ConnectionString "Data Source=C:\Databases\mydb.sqlite" `     -TableName "Products"

```powershell
Get-SQLiteTableSchema -ConnectionString "Data Source=C:\Databases\mydb.sqlite" `
    -TableName "Products"
```

## Related Links

- [Get-SQLiteTableSchema on GitHub](https://github.com/genXdev/genXdev)
