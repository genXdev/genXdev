# ensurePlaywright

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> Playwright .NET アセンブリとブラウザバイナリが利用可能であることを保証します。

## Description

Microsoft.Playwright NuGetアセンブリをダウンロードして読み込み、Playwrightの組み込みCLIを介して実際のブラウザバイナリ（Chromium、Firefox、WebKit）をインストールする内部ヘルパー。冪等性があり、既に完了している手順はスキップします。

Connect-PlaywrightViaDebuggingPort、Open-PlayWrightBrowserから呼び出され、環境セットアップ時にEnsureGenXdevから明示的に呼び出されます。

## Syntax

```powershell
ensurePlaywright [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Playwrightブラウザのインストールを自動的に承諾し、永続フラグを設定します。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | すべてのパッケージについて、サードパーティ製ソフトウェアのインストールに自動同意し、永続フラグを設定します。 |

## Related Links

- [ensurePlaywright on GitHub](https://github.com/genXdev/genXdev)
