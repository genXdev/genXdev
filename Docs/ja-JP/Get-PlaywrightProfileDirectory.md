# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 永続セッション用のPlaywrightブラウザプロファイルディレクトリを取得します。

## Description

* Playwrightの自動テスト用にブラウザプロファイルディレクトリを作成・管理します。
* プロファイルはLocalAppData配下のGenXdev.Powershell\Playwright.profilesに保存されます。
* これらのプロファイルは、ブラウザ自動化実行間での永続的なセッションを可能にします。

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | ブラウザの種類 (Chromium、Firefox、またはWebkit) |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType Chromium
```

Chromiumブラウザプロファイルのパスを作成または返します。

### Example 2

```powershell
Get-PlaywrightProfileDirectory Firefox
```

位置パラメータを使用してFirefoxのプロファイルディレクトリを作成または返します。

## Related Links

- [Get-PlaywrightProfileDirectory on GitHub](https://github.com/genXdev/genXdev)
