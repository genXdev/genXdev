# Connect-PlaywrightViaDebuggingPort

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> デバッグポートを介して既存のブラウザインスタンスに接続します。

## Description

WebSocketデバッガURLを使用して、実行中のChromiumベースのブラウザインスタンスへの接続を確立します。Playwrightインスタンスを作成し、CDP（Chrome DevTools Protocol）を介して接続します。接続されたブラウザインスタンスは、後で参照するためにグローバル辞書に保存されます。

## Syntax

```powershell
Connect-PlaywrightViaDebuggingPort -WsEndpoint <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WsEndpoint` | String | ✅ | — | 0 | — | ブラウザデバッグ接続用のWebSocket URL |

## Examples

### Connect-PlaywrightViaDebuggingPort `     -WsEndpoint "ws://localhost:9222/devtools/browser/abc123" ##############################################################################

```powershell
Connect-PlaywrightViaDebuggingPort `
    -WsEndpoint "ws://localhost:9222/devtools/browser/abc123"
##############################################################################
```

## Related Links

- [Connect-PlaywrightViaDebuggingPort on GitHub](https://github.com/genXdev/genXdev)
