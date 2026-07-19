# EnsureNuGetAssembly

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> パッケージキーまたはIDに基づいてNuGetパッケージから.NETアセンブリをダウンロードし読み込みます。

## Description

この関数は、指定されたNuGetパッケージアセンブリがダウンロードされ、現在のPowerShellセッションに読み込まれることを保証します。自動検出と読み込みをサポートし、フォールバックとしてJSONマニフェストを使用して設定のオーバーライドを行い、スタブ依存関係（例：SQLite）のようなエッジケースも処理します。インストールには信頼性の高いパッケージ管理のためにdotnet CLIのみを使用し、グローバルNuGetキャッシュから直接アセンブリをコピーせずに読み込みます。遅延読み込みでは、処理を進める前にその型が既に利用可能かどうかを確認します。

## Syntax

```powershell
EnsureNuGetAssembly -PackageKey <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-Destination <String>] [-ForceConsent] [-ForceLatest] [-ManifestPath <String>] [-Publisher <String>] [-TypeName <String>] [-Version <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PackageKey` | String | ✅ | — | 0 | — | packages.json からのパッケージキーまたは直接NuGet PackageId。 |
| `-ManifestPath` | String | — | — | Named | — | packages.jsonへのパス。省略した場合、モジュールルートがデフォルトになります。 |
| `-Version` | String | — | — | Named | — | 特定のバージョン。省略した場合は、JSONまたは最新から最も高いものを使用。 |
| `-TypeName` | String | — | — | Named | — | 読み込みを確認するためにTypeNameを入力してください。 |
| `-ForceLatest` | SwitchParameter | — | — | Named | — | 正確なバージョンが失敗した場合、最新版にフォールバックします。 |
| `-Destination` | String | — | — | Named | — | カスタムインストール先。デフォルトはローカル永続ストレージまたはグローバルキャッシュ。 |
| `-Description` | String | — | — | Named | — | 同意のためのソフトウェアとその目的の任意の説明。 |
| `-Publisher` | String | — | — | Named | — | 同意のためのソフトウェアの任意の出版社またはベンダー。 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 同意設定が設定されていてもプロンプトを強制する。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | サードパーティ製ソフトウェアのインストールを自動的に同意し、永続フラグを設定します。 |

## Examples

### EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core"

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core"
```

### EnsureNuGetAssembly -PackageKey "Microsoft.Playwright" -Version "1.54.0" -TypeName "Microsoft.Playwright.Playwright"

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Playwright" -Version "1.54.0" -TypeName "Microsoft.Playwright.Playwright"
```

### EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core" -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core" -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [EnsureNuGetAssembly on GitHub](https://github.com/genXdev/genXdev)
