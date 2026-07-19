# Invoke-SQLiteStudio

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> パラメータとトランザクションをサポートするSQLiteデータベースクエリを実行します。

## Description

SQLiteクエリを実行するためのPowerShellインターフェースを提供します。以下の機能をサポートします。
- 接続文字列またはデータベースファイルパスによる接続
- SQLインジェクションを防ぐパラメータ化クエリ
- トランザクション分離レベルの制御
- 単一トランザクション内での複数クエリの実行
- クエリとパラメータのパイプライン入力

## Syntax

```powershell
Invoke-SQLiteStudio -ConnectionString <String> [<CommonParameters>]

Invoke-SQLiteStudio -DatabaseFilePath <String> [<CommonParameters>]

Invoke-SQLiteStudio -Queries <String[]> [[-SqlParameters] <Collections.Hashtable[]>] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLiteデータベースへの接続文字列。 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite データベースファイルへのパス。 *(Parameter set: )* |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 1 | — | 実行するクエリ。 |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | クエリのオプションパラメータ。 |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | 使用する分離レベル。デフォルトはReadCommittedです。 |

## Examples

### Invoke-SQLiteStudio `     -DatabaseFilePath "C:\data\users.sqlite" `     -Queries "SELECT * FROM Users WHERE active = @status" `     -SqlParameters @{"status" = 1}

```powershell
Invoke-SQLiteStudio `
    -DatabaseFilePath "C:\data\users.sqlite" `
    -Queries "SELECT * FROM Users WHERE active = @status" `
    -SqlParameters @{"status" = 1}
```

### "SELECT * FROM Users" | isql -DatabaseFilePath "C:\data\users.sqlite"

```powershell
"SELECT * FROM Users" | isql -DatabaseFilePath "C:\data\users.sqlite"
```

## Related Links

- [Invoke-SQLiteStudio on GitHub](https://github.com/genXdev/genXdev)
