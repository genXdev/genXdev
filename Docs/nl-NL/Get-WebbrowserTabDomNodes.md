# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl

## Synopsis

> Queryert en manipuleert DOM-knooppunten in de actieve browsertab met behulp van CSS-selectors.

## Description

Gebruikt browserautomatisering om elementen te vinden die overeenkomen met een CSS-selector en retourneert hun HTML-inhoud of voert aangepast JavaScript uit op elk overeenkomend element. Deze functie is nuttig voor webscraping en browserautomatiseringstaken.

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | De query selector string of array van strings die moet worden gebruikt voor het selecteren van DOM-knooppunten |
| `-ModifyScript` | String | — | — | 1 | `''` | Het script om de uitvoer van de query selector aan te passen, b.v. e.outerHTML of e.outerHTML='hello world' |
| `-Edge` | SwitchParameter | — | — | Named | — | Gebruik de Microsoft Edge-browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Gebruik de Google Chrome-browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Gebruik Microsoft Edge of Google Chrome, afhankelijk van wat de standaardbrowser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Gebruik Firefox-browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Gebruik de door Playwright beheerde WebKit-browser |
| `-Page` | Object | — | — | Named | — | Browserpagina-objectreferentie voor het richten op een specifiek tabblad |
| `-ByReference` | PSObject | — | — | Named | — | Browser-sessie referentieobject voor het hergebruiken van een bestaande browser-sessie |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Automatische tabselectie voorkomen |

## Examples

### Get HTML of all header divs Get-WebbrowserTabDomNodes -QuerySelector "div.header"

```powershell
Get HTML of all header divs
Get-WebbrowserTabDomNodes -QuerySelector "div.header"
```

### Pause all videos on the page wl "video" "e.pause()"

```powershell
Pause all videos on the page
wl "video" "e.pause()"
```

## Related Links

- [Get-WebbrowserTabDomNodes on GitHub](https://github.com/genXdev/genXdev)
