# Connect-PlaywrightViaDebuggingPort

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> Verbindet über einen Debugging-Port mit einer vorhandenen Browser-Instanz.

## Description

Stellt eine Verbindung zu einer laufenden Chromium-basierten Browserinstanz über die WebSocket-Debugger-URL her. Erstellt eine Playwright-Instanz und verbindet sich über CDP (Chrome-Entwicklertools-Protokoll). Die verbundene Browserinstanz wird in einem globalen Wörterbuch zur späteren Referenz gespeichert.

## Syntax

```powershell
Connect-PlaywrightViaDebuggingPort -WsEndpoint <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WsEndpoint` | String | ✅ | — | 0 | — | WebSocket-URL für Browser-Debugging-Verbindung |

## Examples

### Connect-PlaywrightViaDebuggingPort `     -WsEndpoint "ws://localhost:9222/devtools/browser/abc123" ##############################################################################

```powershell
Connect-PlaywrightViaDebuggingPort `
    -WsEndpoint "ws://localhost:9222/devtools/browser/abc123"
##############################################################################
```

## Related Links

- [Connect-PlaywrightViaDebuggingPort on GitHub](https://github.com/genXdev/genXdev)
