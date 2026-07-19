# EnsureGenXdev

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> すべてのEnsure*コマンドレットを呼び出して、すべてのGenXdevモジュールが適切に読み込まれていることを確認します。

## Description

この関数は、「Ensure」または「Optimize-Ensure」（C#コマンドレット用）で始まるすべてのGenXdevコマンドレットを取得し、それぞれを実行して、必要なGenXdevモジュールと依存関係がすべて適切に読み込まれ、使用可能であることを保証します。実行中の障害はキャッチされ、情報メッセージとして表示されます。

オプションで、packages.jsonマニフェストファイルで定義されているすべてのNuGetパッケージをダウンロードして読み込むこともできます。

## Syntax

```powershell
EnsureGenXdev [-ConsentToThirdPartySoftwareInstallation] [-DownloadAllNugetPackages] [-Force] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | 完了しているように見えても、ensure操作の実行を強制します |
| `-DownloadAllNugetPackages` | SwitchParameter | — | — | Named | — | packages.jsonマニフェストファイルで定義されているすべてのNuGetパッケージをダウンロードして読み込みます。 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | サードパーティ製ソフトウェアのインストール設定が行われている場合でも、同意プロンプトを強制的に表示します。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | すべてのパッケージについて、サードパーティ製ソフトウェアのインストールに自動同意し、永続フラグを設定します。 |

## Examples

### EnsureGenXdev

```powershell
EnsureGenXdev
```

このコマンドは、利用可能なすべてのEnsure*コマンドレットを実行して、GenXdev環境を初期化します。

### EnsureGenXdev -DownloadAllNugetPackages

```powershell
EnsureGenXdev -DownloadAllNugetPackages
```

このコマンドは、すべてのEnsure*コマンドレットを実行し、packages.jsonマニフェストファイルで定義されているすべてのNuGetパッケージをダウンロードして読み込みます。

### EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation
```

このコマンドは、すべての Ensure* コマンドレットを実行し、NuGet パッケージをダウンロードします。

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
