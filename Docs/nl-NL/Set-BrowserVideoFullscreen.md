# Set-BrowserVideoFullscreen

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `fsvideo

## Synopsis

> Maximaliseert het eerste video-element dat in het huidige browsertabblad wordt gevonden.

## Description

Voert JavaScript-code uit om het eerste video-element op de huidige webpagina te vinden en te maximaliseren. De video wordt zo ingesteld dat deze het hele viewport beslaat met een maximale z-index om zichtbaarheid te garanderen. Pagina-schuifbalken worden verborgen voor een schone, volledig scherm ervaring.

## Syntax

```powershell
Set-BrowserVideoFullscreen [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Gebruik de Microsoft Edge-browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Gebruik de Google Chrome-browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Gebruik Microsoft Edge of Google Chrome, afhankelijk van wat de standaardbrowser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Gebruik Firefox-browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Gebruik de door Playwright beheerde WebKit-browser |

## Examples

### Set-BrowserVideoFullscreen

```powershell
Set-BrowserVideoFullscreen
```

## Related Links

- [Set-BrowserVideoFullscreen on GitHub](https://github.com/genXdev/genXdev)
