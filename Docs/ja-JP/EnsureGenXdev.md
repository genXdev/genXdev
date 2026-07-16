# EnsureGenXdev

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
