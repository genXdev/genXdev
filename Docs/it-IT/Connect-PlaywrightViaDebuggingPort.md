# Connect-PlaywrightViaDebuggingPort

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> Si connette a un'istanza del browser esistente tramite porta di debug.

## Description

Stabilisce una connessione a un'istanza del browser basata su Chromium in esecuzione utilizzando l'URL del debugger WebSocket. Crea un'istanza di Playwright e si connette tramite CDP (Chrome DevTools Protocol). L'istanza del browser connessa viene memorizzata in un dizionario globale per riferimento futuro.

## Syntax

```powershell
Connect-PlaywrightViaDebuggingPort -WsEndpoint <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WsEndpoint` | String | ✅ | — | 0 | — | URL WebSocket per la connessione di debug del browser |

## Examples

### Connect-PlaywrightViaDebuggingPort `     -WsEndpoint "ws://localhost:9222/devtools/browser/abc123" ##############################################################################

```powershell
Connect-PlaywrightViaDebuggingPort `
    -WsEndpoint "ws://localhost:9222/devtools/browser/abc123"
##############################################################################
```

## Parameter Details

### `-WsEndpoint <String>`

> URL WebSocket per la connessione di debug del browser

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

- [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-PlaywrightProfileDirectory.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Unprotect-WebbrowserTab.md)
