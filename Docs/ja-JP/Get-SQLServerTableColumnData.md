# Get-SQLServerTableColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> SQLデータベーステーブルの特定のカラムからデータを取得します。

## Description

この関数は、SQLデータベーステーブルの単一カラムからデータを抽出する便利な方法を提供します。データベースファイルの直接パスまたは接続文字列の2つの接続方法をサポートしています。返されるレコード数を制限するオプションを含み、最適なパフォーマンスのために適切なSQLクエリ構築を使用します。

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

## Examples

### Get-SQLServerTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `     -TableName "Employees" `     -ColumnName "Email" `     -Count 10

```powershell
Get-SQLServerTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `
    -TableName "Employees" `
    -ColumnName "Email" `
    -Count 10
```

### Get-SQLServerTableColumnData "C:\MyDb.sqlite" "Employees" "Email"

```powershell
Get-SQLServerTableColumnData "C:\MyDb.sqlite" "Employees" "Email"
```

## Related Links

- [Get-SQLServerTableColumnData on GitHub](https://github.com/genXdev/genXdev)
