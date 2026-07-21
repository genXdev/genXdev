# Connect-PlaywrightViaDebuggingPort

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> Łączy się z istniejącą instancją przeglądarki przez port debugowania.

## Description

Nawiązuje połączenie z uruchomioną instancją przeglądarki opartej na Chromium przy użyciu adresu URL debuggera WebSocket. Tworzy instancję Playwright i łączy się przez CDP (Chrome DevTools Protocol). Połączona instancja przeglądarki jest przechowywana w globalnym słowniku do późniejszego wykorzystania.

## Syntax

```powershell
Connect-PlaywrightViaDebuggingPort -WsEndpoint <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WsEndpoint` | String | ✅ | — | 0 | — | Adres URL WebSocket do połączenia z debugowaniem przeglądarki |

## Examples

### Connect-PlaywrightViaDebuggingPort `     -WsEndpoint "ws://localhost:9222/devtools/browser/abc123" ##############################################################################

```powershell
Connect-PlaywrightViaDebuggingPort `
    -WsEndpoint "ws://localhost:9222/devtools/browser/abc123"
##############################################################################
```

## Parameter Details

### `-WsEndpoint <String>`

> Adres URL WebSocket do połączenia z debugowaniem przeglądarki

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

- [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-PlaywrightProfileDirectory.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Unprotect-WebbrowserTab.md)
