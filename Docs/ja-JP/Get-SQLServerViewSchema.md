# Get-SQLServerViewSchema

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> SQL Server ビューの SQL スキーマ定義を取得します。

## Description

この関数は、SQL Serverデータベースのシステムテーブルをクエリして、指定されたビューのSQL定義を抽出します。接続文字列またはサーバーパラメータ付きのデータベース名を介した接続をサポートし、要求されたビューを定義する完全なSQLスキーマを返します。

## Syntax

```powershell
Get-SQLServerViewSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewSchema -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewSchema -ViewName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server データベースへの接続文字列。 *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server データベースの名前。 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | SQL Server インスタンス名。 *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | ビューの名前。 |

## Examples

### Get-SQLServerViewSchema -DatabaseFilePath "C:\Databases\MyApp.sqlite" `                     -ViewName "CustomerOrders"

```powershell
Get-SQLServerViewSchema -DatabaseFilePath "C:\Databases\MyApp.sqlite" `
                    -ViewName "CustomerOrders"
```

## Related Links

- [Get-SQLServerViewSchema on GitHub](https://github.com/genXdev/genXdev)
