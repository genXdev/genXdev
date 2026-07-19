# Invoke-WebbrowserTabPollingScript

> **Module:** GenXdev.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> 以前に選択したウェブブラウザのタブでバックグラウンドポーリングスクリプトを実行します。

## Description

ブラウザタブ内でJavaScriptを継続的に実行し、オプションのコールバックを通じて結果を処理します。スクリプトはブロッキングを防ぐために別スレッドで実行されます。

## Syntax

```powershell
Invoke-WebbrowserTabPollingScript [[-Scripts] <Object[]>] [[-InitialUrl] <String>] [[-Callback] <ScriptBlock>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | 実行するJavaScriptコード、URL、またはファイルパス |
| `-InitialUrl` | String | — | — | 1 | — | ポーリング開始前に移動するURL |
| `-Callback` | ScriptBlock | — | — | 2 | — | アンケート結果を処理するコールバックスクリプトブロック |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge ブラウザをご利用ください |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome ブラウザを使用してください |
| `-Chromium` | SwitchParameter | — | — | Named | — | デフォルトのブラウザに応じて、Microsoft Edge または Google Chrome を使用してください。 |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox ブラウザを使用してください |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright 管理の WebKit ブラウザを使用 |

## Examples

### Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `     -InitialUrl "https://example.com" `     -Callback { Write-Host "Polled" }

```powershell
Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `
    -InitialUrl "https://example.com" `
    -Callback { Write-Host "Polled" }
```

## Related Links

- [Invoke-WebbrowserTabPollingScript on GitHub](https://github.com/genXdev/genXdev)
