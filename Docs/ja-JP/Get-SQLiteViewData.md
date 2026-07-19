# Get-SQLiteViewData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> SQLiteデータベースビューからデータを取得し、オプションでレコード数を制限します。

## Description

接続文字列またはデータベースファイルパスを使用してSQLiteデータベースビューをクエリします。この関数は返されるレコード数の制限をサポートし、クエリ実行を追跡するための詳細出力を提供します。

## Syntax

```powershell
Get-SQLiteViewData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewData -ViewName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLiteデータベースへの接続文字列。 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite データベースファイルへのパス。 *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | クエリを実行するビューの名前。 |
| `-Count` | Int32 | — | — | 2 | `100` | 返却するレコード数。-1は全レコード。 |

## Examples

### Get-SQLiteViewData -DatabaseFilePath "C:\MyDb.sqlite" `     -ViewName "CustomerView" `     -Count 50

```powershell
Get-SQLiteViewData -DatabaseFilePath "C:\MyDb.sqlite" `
    -ViewName "CustomerView" `
    -Count 50
```

### Get-SQLiteViewData "C:\MyDb.sqlite" "CustomerView"

```powershell
Get-SQLiteViewData "C:\MyDb.sqlite" "CustomerView"
```

## Related Links

- [Get-SQLiteViewData on GitHub](https://github.com/genXdev/genXdev)
