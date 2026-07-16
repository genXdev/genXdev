# Invoke-SQLServerQuery

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-SQLServerQuery [[-Queries] <String[]>] [[-DatabaseName] <String>] [[-Server] <String>] [[-Transaction] <Object>] [[-ConnectionString] <String>] [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | 実行するクエリ。 |
| `-DatabaseName` | String | — | — | 1 | `'master'` | SQL Server データベースの名前。 |
| `-Server` | String | — | — | 2 | `'.'` | SQL Server インスタンス名。 |
| `-Transaction` | Object | — | — | 3 | — | クエリに使用する既存のSQL Serverトランザクション。 |
| `-ConnectionString` | String | — | — | 4 | — | SQLデータベースへの接続文字列。 |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 5 | `@()` | パラメータをハッシュテーブルとして問い合わせる。 |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | 使用する分離レベルです。デフォルトはReadCommittedです。 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | SQL Server パッケージのインストールに設定が優先されている場合でも、同意プロンプトを強制します。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | サードパーティ製ソフトウェアのインストールに自動同意し、SQL Serverパッケージの永続フラグを設定します。 |

## Related Links

- [Invoke-SQLServerQuery on GitHub](https://github.com/genXdev/genXdev)
