# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl

## Synopsis

> Fragt DOM-Knoten im aktiven Browser-Tab ab und manipuliert sie mit CSS-Selektoren.

## Description

Verwendet Browser-Automatisierung, um Elemente zu finden, die einem CSS-Selektor entsprechen, und gibt deren HTML-Inhalt zurück oder führt benutzerdefiniertes JavaScript auf jedem übereinstimmenden Element aus. Diese Funktion ist nützlich für Web-Scraping und Browser-Automatisierungsaufgaben.

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | Der Abfrageselektor-String oder das Array von Strings zur Auswahl von DOM-Knoten |
| `-ModifyScript` | String | — | — | 1 | `''` | Das Skript zum Ändern der Ausgabe des Query-Selektors, z.B. e.outerHTML oder e.outerHTML='hello world' |
| `-Edge` | SwitchParameter | — | — | Named | — | Verwenden Sie den Microsoft Edge-Browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use Google Chrome browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Verwenden Sie Microsoft Edge oder Google Chrome, je nachdem, welcher der Standardbrowser ist. |
| `-Firefox` | SwitchParameter | — | — | Named | — | Verwenden Sie den Firefox-Browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Verwenden Sie den Playwright-verwalteten WebKit-Browser |
| `-Page` | Object | — | — | Named | — | Browser-Seitenobjekt-Referenz zum Anvisieren eines bestimmten Tabs |
| `-ByReference` | PSObject | — | — | Named | — | Browser-Sitzungsreferenzobjekt zur Wiederverwendung einer bestehenden Browser-Sitzung |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Automatische Tab-Auswahl verhindern |

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
