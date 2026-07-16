# Invoke-SQLiteQuery

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-SQLiteQuery [[-ConnectionString] <String>] [[-DatabaseFilePath] <String>] [[-Transaction] <Object>] -Queries <String[]> [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | — | — | 0 | — | SQLiteデータベースへの接続文字列。 |
| `-DatabaseFilePath` | String | — | — | 1 | — | SQLite データベースファイルへのパス。 |
| `-Transaction` | Object | — | — | 2 | — | クエリに使用する既存のSQLiteトランザクション。 |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 3 | — | 実行するクエリ。 |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 4 | `@()` | パラメータをハッシュテーブルとして問い合わせる。 |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | 使用する分離レベルです。デフォルトはReadCommittedです。 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | SQLite パッケージのインストールに設定されている場合でも、同意プロンプトを強制します。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | サードパーティ製ソフトウェアのインストールを自動的に同意し、SQLiteパッケージの永続フラグを設定します。 |

## Related Links

- [Invoke-SQLiteQuery on GitHub](https://github.com/genXdev/genXdev)
