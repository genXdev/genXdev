# Invoke-WebbrowserTabPollingScript

> **Module:** GenXdev.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-WebbrowserTabPollingScript [[-Scripts] <Object[]>] [[-InitialUrl] <String>] [[-Callback] <ScriptBlock>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | 実行するJavaScriptコード、URL、またはファイルパス |
| `-InitialUrl` | String | — | — | 1 | — | ポーリング開始前に移動するURL |
| `-Callback` | ScriptBlock | — | — | 2 | — | アンケート結果を処理するコールバックスクリプトブロック |

## Related Links

- [Invoke-WebbrowserTabPollingScript on GitHub](https://github.com/genXdev/genXdev)
