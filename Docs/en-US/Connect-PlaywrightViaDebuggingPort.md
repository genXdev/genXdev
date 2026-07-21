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

## Parameter Details

### `-WsEndpoint <String>`

> WebSocket URL for browser debugging connection

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-PlaywrightProfileDirectory.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Unprotect-WebbrowserTab.md)
