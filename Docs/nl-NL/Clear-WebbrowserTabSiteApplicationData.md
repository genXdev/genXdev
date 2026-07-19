# Clear-WebbrowserTabSiteApplicationData

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `clearsitedata

## Synopsis

> Wist alle browseropslaggegevens voor het huidige tabblad in Edge of Chrome.

## Description

De cmdlet Clear-WebbrowserTabSiteApplicationData voert een JavaScript-fragment uit dat verschillende soorten browseropslag voor het huidige tabblad wist, waaronder:
- Lokale opslag (local storage)
- Sessie-opslag (session storage)
- Cookies
- IndexedDB-databases
- Cache-opslag (cache storage)
- Serviceworker-registraties

## Syntax

```powershell
Clear-WebbrowserTabSiteApplicationData [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Wissen in Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Wissen in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Wissen in Microsoft Edge of Google Chrome, afhankelijk van wat de standaardbrowser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Wissen in Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Wissen in de door Playwright beheerde WebKit-browser |

## Examples

### Clear-WebbrowserTabSiteApplicationData -Edge Clears all browser storage data in the current Edge tab.

```powershell
Clear-WebbrowserTabSiteApplicationData -Edge
Clears all browser storage data in the current Edge tab.
```

### clearsitedata -Chrome Clears all browser storage data in the current Chrome tab using the alias. ##############################################################################

```powershell
clearsitedata -Chrome
Clears all browser storage data in the current Chrome tab using the alias.
##############################################################################
```

## Related Links

- [Clear-WebbrowserTabSiteApplicationData on GitHub](https://github.com/genXdev/genXdev)
