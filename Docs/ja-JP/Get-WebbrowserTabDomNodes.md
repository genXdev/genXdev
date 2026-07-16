# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Edge] [-NoAutoSelectTab] [-Page <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | DOMノードを選択するためのクエリセレクター文字列、または文字列の配列 |
| `-ModifyScript` | String | — | — | 1 | `''` | クエリセレクタの出力を変更するスクリプト（例：e.outerHTML または e.outerHTML='hello world'） |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge ブラウザをご利用ください |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome ブラウザを使用してください |
| `-Page` | Object | — | — | Named | — | ブラウザページオブジェクト参照 |
| `-ByReference` | PSObject | — | — | Named | — | ブラウザセッション参照オブジェクト |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | 自動タブ選択を防止する |

## Related Links

- [Get-WebbrowserTabDomNodes on GitHub](https://github.com/genXdev/genXdev)
