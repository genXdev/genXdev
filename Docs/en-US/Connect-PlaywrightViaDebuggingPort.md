# Connect-PlaywrightViaDebuggingPort

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> Connects to an existing browser instance via debugging port.

## Description

Establishes a connection to a running Chromium-based browser instance using the
WebSocket debugger URL. Creates a Playwright instance and connects over CDP
(Chrome DevTools Protocol). The connected browser instance is stored in a global
dictionary for later reference.

## Syntax

```powershell
Connect-PlaywrightViaDebuggingPort -WsEndpoint <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WsEndpoint` | String | ✅ | — | 0 | — | WebSocket URL for browser debugging connection |

## Examples

### Connect-PlaywrightViaDebuggingPort `     -WsEndpoint "ws://localhost:9222/devtools/browser/abc123" ##############################################################################

```powershell
Connect-PlaywrightViaDebuggingPort `
    -WsEndpoint "ws://localhost:9222/devtools/browser/abc123"
##############################################################################
```

## Related Links

- [Connect-PlaywrightViaDebuggingPort on GitHub](https://github.com/genXdev/genXdev)
