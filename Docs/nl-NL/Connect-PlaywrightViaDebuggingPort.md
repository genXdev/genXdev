# Connect-PlaywrightViaDebuggingPort

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> Maakt verbinding met een bestaande browserinstantie via de foutopsporingspoort.

## Description

Maakt een verbinding met een draaiende Chromium-gebaseerde browserinstantie via de WebSocket-debugger-URL. Creëert een Playwright-instantie en verbindt via CDP (Chrome DevTools Protocol). De verbonden browserinstantie wordt opgeslagen in een algemeen woordenboek voor later gebruik.

## Syntax

```powershell
Connect-PlaywrightViaDebuggingPort -WsEndpoint <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WsEndpoint` | String | ✅ | — | 0 | — | WebSocket URL voor browser debuggen verbinding |

## Examples

### Connect-PlaywrightViaDebuggingPort `     -WsEndpoint "ws://localhost:9222/devtools/browser/abc123" ##############################################################################

```powershell
Connect-PlaywrightViaDebuggingPort `
    -WsEndpoint "ws://localhost:9222/devtools/browser/abc123"
##############################################################################
```

## Related Links

- [Connect-PlaywrightViaDebuggingPort on GitHub](https://github.com/genXdev/genXdev)
