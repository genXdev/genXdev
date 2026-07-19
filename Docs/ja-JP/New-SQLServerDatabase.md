# New-SQLServerDatabase

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> 新しいSQL Serverデータベースを作成します。

## Description

指定されたサーバー上に、指定された名前で新しいSQL Serverデータベースを作成します。ターゲットのSQL Serverインスタンスにデータベースを作成するための適切な権限が必要です。データベースが既に存在する場合、操作はスキップされます。明示的な.mdf/.ldfパスを使用したファイルベースのデータベース作成をサポートします。

## Syntax

```powershell
New-SQLServerDatabase -DatabaseName <String> [[-Server] <String>] [-DataFilePath <String>] [-DetachAfterCreation] [-LogFilePath <String>] [<CommonParameters>]

New-SQLServerDatabase -ConnectionString <String> [<CommonParameters>]

New-SQLServerDatabase [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabaseName` | String | ✅ | — | 0 | — | 作成するSQL Serverデータベースの名前 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | SQL Serverインスタンス名 *(Parameter set: )* |
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server への接続文字列 *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | SQL Server パッケージのインストールに設定が優先されている場合でも、同意プロンプトを強制します。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | サードパーティ製ソフトウェアのインストールに自動同意し、SQL Serverパッケージの永続フラグを設定します。 |
| `-DataFilePath` | String | — | — | Named | — | ファイルベースのデータベース作成用のオプションのデータファイルパス(.mdf) *(Parameter set: )* |
| `-LogFilePath` | String | — | — | Named | — | ファイルベースのデータベース作成のためのオプションのログファイルパス(.ldf) *(Parameter set: )* |
| `-DetachAfterCreation` | SwitchParameter | — | — | Named | — | 作成後にデータベースを切り離します（ファイルベースのデータベースの場合）。 *(Parameter set: )* |

## Examples

### New-SQLServerDatabase -DatabaseName "MyNewDatabase" -Server "localhost"

```powershell
New-SQLServerDatabase -DatabaseName "MyNewDatabase" -Server "localhost"
```

### New-SQLServerDatabase "MyNewDatabase"

```powershell
New-SQLServerDatabase "MyNewDatabase"
```

### New-SQLServerDatabase -DatabaseName "MyDB" -ConnectionString "Server=.;..."

```powershell
New-SQLServerDatabase -DatabaseName "MyDB" -ConnectionString "Server=.;..."
```

### New-SQLServerDatabase -DatabaseName "ImageIndex" -DataFilePath "C:\Data\ImageIndex.mdf" -DetachAfterCreation

```powershell
New-SQLServerDatabase -DatabaseName "ImageIndex" -DataFilePath "C:\Data\ImageIndex.mdf" -DetachAfterCreation
```

### New-SQLServerDatabase -DatabaseName "MyDB" -Server "." -ConsentToThirdPartySoftwareInstallation

```powershell
New-SQLServerDatabase -DatabaseName "MyDB" -Server "." -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [New-SQLServerDatabase on GitHub](https://github.com/genXdev/genXdev)
