# Select-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `st

## Synopsis

> 実行中のPlaywright管理ブラウザからブラウザタブを選択します。

## Description

実行中のすべてのPlaywright管理ブラウザインスタンスからブラウザタブを一覧表示および選択します。選択基準なしで呼び出された場合、すべてのブラウザタイプにわたる利用可能なタブのテーブルを表示します。数値インデックス、URLパターン、または直接ページ参照による選択をサポートします。タブが選択されると、他のWebbrowserコマンドレットとの下位互換性のために$Global:chromeControllerと$Global:chromeSessionを設定します。

## Syntax

```powershell
Select-WebbrowserTab [[-Id] <Int32>] [<CommonParameters>]

Select-WebbrowserTab -Name <String> [<CommonParameters>]

Select-WebbrowserTab -ByReference <Object> [<CommonParameters>]

Select-WebbrowserTab [-All] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Force] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Id` | Int32 | — | — | 0 | `-1` | 表示されたリストのタブインデックス *(Parameter set: )* |
| `-Name` | String | ✅ | — | 0 | — | URLにこのテキストを含む最初のタブを選択 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ByReference` | Object | ✅ | — | Named | — | Playwrightブラウザ状態からの直接ページ参照 *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge ブラウザのインスタンスにタブをフィルター |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chromeブラウザのインスタンスにタブをフィルタリング |
| `-Chromium` | SwitchParameter | — | — | Named | — | タブをChromiumベースのブラウザインスタンス（EdgeまたはChrome）にフィルタリングする |
| `-Firefox` | SwitchParameter | — | — | Named | — | タブをFirefoxブラウザインスタンスにフィルタリング |
| `-PlayWright` | SwitchParameter | — | — | Named | — | タブをすべてのPlaywright管理ブラウザタイプにフィルタリングする |
| `-Webkit` | SwitchParameter | — | — | Named | — | WebKit ブラウザインスタンスにタブを絞り込む |
| `-All` | SwitchParameter | — | — | Named | — | すべてのブラウザタイプからタブを表示（フィルタリングなし） |
| `-Force` | SwitchParameter | — | — | Named | — | 確認をスキップして最初に一致するタブを選択する |

## Examples

### Select-WebbrowserTab Lists all open tabs across all Playwright browser types.

```powershell
Select-WebbrowserTab
Lists all open tabs across all Playwright browser types.
```

### Select-WebbrowserTab -Id 2 Selects the tab at index 2 from the list.

```powershell
Select-WebbrowserTab -Id 2
Selects the tab at index 2 from the list.
```

### st -Name "github.com" Selects the first tab whose URL contains "github.com".

```powershell
st -Name "github.com"
Selects the first tab whose URL contains "github.com".
```

### st -Firefox -Id 0 Selects the first tab from the Firefox browser.

```powershell
st -Firefox -Id 0
Selects the first tab from the Firefox browser.
```

## Outputs

- `PSObject`

## Related Links

- [Select-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)
