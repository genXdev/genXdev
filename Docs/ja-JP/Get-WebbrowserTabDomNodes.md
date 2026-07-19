# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl

## Synopsis

> アクティブブラウザタブ内のDOMノードをCSSセレクタを使用して操作・クエリします。

## Description

ブラウザ自動化を使用してCSSセレクタに一致する要素を検索し、各要素のHTMLコンテンツを返すか、各一致要素に対してカスタムJavaScriptを実行します。この関数はウェブスクレイピングやブラウザ自動化タスクに役立ちます。

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | DOMノードを選択するためのクエリセレクター文字列、または文字列の配列 |
| `-ModifyScript` | String | — | — | 1 | `''` | クエリセレクタの出力を変更するスクリプト（例：e.outerHTML または e.outerHTML='hello world'） |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge ブラウザをご利用ください |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome ブラウザを使用してください |
| `-Chromium` | SwitchParameter | — | — | Named | — | デフォルトのブラウザに応じて、Microsoft Edge または Google Chrome を使用してください。 |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox ブラウザを使用してください |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright 管理の WebKit ブラウザを使用 |
| `-Page` | Object | — | — | Named | — | 特定のタブをターゲットするためのブラウザページオブジェクト参照 |
| `-ByReference` | PSObject | — | — | Named | — | 既存のブラウザセッションを再利用するためのブラウザセッション参照オブジェクト |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | 自動タブ選択を防止する |

## Examples

### Get HTML of all header divs Get-WebbrowserTabDomNodes -QuerySelector "div.header"

```powershell
Get HTML of all header divs
Get-WebbrowserTabDomNodes -QuerySelector "div.header"
```

### Pause all videos on the page wl "video" "e.pause()"

```powershell
Pause all videos on the page
wl "video" "e.pause()"
```

## Related Links

- [Get-WebbrowserTabDomNodes on GitHub](https://github.com/genXdev/genXdev)
