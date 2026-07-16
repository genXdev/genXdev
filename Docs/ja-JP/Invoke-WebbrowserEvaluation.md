# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval, `et

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Edge] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | 実行するJavaScriptコード、ファイルパス、またはURL |
| `-Inspect` | SwitchParameter | — | — | Named | — | ブラウザのデバッガで実行前にブレーク |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | 自動タブ選択を防止する |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge ブラウザをご利用ください |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome ブラウザを使用してください |
| `-Page` | Object | — | — | Named | — | ブラウザページオブジェクト参照 |
| `-ByReference` | PSObject | — | — | Named | — | ブラウザセッション参照オブジェクト |

## Related Links

- [Invoke-WebbrowserEvaluation on GitHub](https://github.com/genXdev/genXdev)
