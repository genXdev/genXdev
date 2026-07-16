# Get-SQLServerTransaction

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `getsqltx, `newsqltx

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLServerTransaction -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTransaction -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTransaction [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server データベースへの接続文字列。 *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server データベースの名前。 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | SQL Server インスタンス名。 *(Parameter set: )* |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | トランザクション分離レベル。 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | SQL Server パッケージのインストールに設定が優先されている場合でも、同意プロンプトを強制します。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | サードパーティ製ソフトウェアのインストールに自動同意し、SQL Serverパッケージの永続フラグを設定します。 |

## Related Links

- [Get-SQLServerTransaction on GitHub](https://github.com/genXdev/genXdev)
