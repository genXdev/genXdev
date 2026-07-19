# Get-SQLServerTableData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> オプションでレコード数を制限してSQLデータベーステーブルからデータを取得します。

## Description

この関数は、接続文字列またはデータベースファイルパスのいずれかを使用して、SQLデータベーステーブルからデータをクエリします。データベースへの接続と、Countパラメータを通じて取得するデータ量を制御する柔軟性を提供します。

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

## Examples

### Get-SQLServerTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50

```powershell
Get-SQLServerTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50
```

### Get-SQLServerTableData "C:\data\users.db" "Employees"

```powershell
Get-SQLServerTableData "C:\data\users.db" "Employees"
```

## Related Links

- [Get-SQLServerTableData on GitHub](https://github.com/genXdev/genXdev)
