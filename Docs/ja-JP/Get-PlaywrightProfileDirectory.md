# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 永続セッションのためのPlaywrightブラウザプロファイルディレクトリを取得します。

## Description

* Playwright自動テスト用のブラウザプロファイルディレクトリを作成および管理します。
* プロファイルはLocalAppData配下のGenXdev.Powershell\Playwright.profilesに保存されます。
* 各BrowserType値には独自のサブディレクトリが作成され、実際のブラウザプロファイル（ChromeNormal、EdgeNormal）とバンドルされたPlaywrightプロファイル（ChromiumPlaywright、FirefoxPlaywright、WebKitPlaywright）が分離されます。

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | ブラウザの種類: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright, WebKitPlaywright |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromeNormal
```

OS インストール済み Chrome ブラウザのプロファイルのパスを作成または返します。

### Example 2

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumNormal
```

自動検出されたChromiumブラウザのプロファイルのパスを作成または返します。

### Example 3

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumPlaywright
```

バンドルされたPlaywright Chromiumプロファイルのパスを作成または返します。

## Parameter Details

### `-BrowserType <String>`

> ブラウザの種類: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright, WebKitPlaywright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Connect-PlaywrightViaDebuggingPort.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Unprotect-WebbrowserTab.md)
