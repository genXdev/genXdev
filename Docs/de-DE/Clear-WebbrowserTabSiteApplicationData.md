# Clear-WebbrowserTabSiteApplicationData

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `clearsitedata

## Synopsis

> Clears all browser storage data for the current tab in Edge or Chrome.

## Description

Das Cmdlet Clear-WebbrowserTabSiteApplicationData führt ein JavaScript-Snippet aus, das verschiedene Arten von Browserspeicher für den aktuellen Tab löscht, darunter:
- Lokaler Speicher (localStorage)
- Sitzungsspeicher (sessionStorage)
- Cookies
- IndexedDB-Datenbanken
- Cache-Speicher
- Service-Worker-Registrierungen

## Syntax

```powershell
Clear-WebbrowserTabSiteApplicationData [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | In Microsoft Edge löschen |
| `-Chrome` | SwitchParameter | — | — | Named | — | In Google Chrome löschen |
| `-Chromium` | SwitchParameter | — | — | Named | — | In Microsoft Edge oder Google Chrome löschen, je nachdem, welcher der Standardbrowser ist |
| `-Firefox` | SwitchParameter | — | — | Named | — | In Firefox löschen |
| `-Webkit` | SwitchParameter | — | — | Named | — | Löschen im von Playwright verwalteten WebKit-Browser |

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
