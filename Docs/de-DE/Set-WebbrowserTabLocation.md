# Set-WebbrowserTabLocation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `lt, `Nav

## Synopsis

> Navigiert den aktuellen Webbrowser-Tab zu einer angegebenen URL.

## Description

Legt den Speicherort (URL) des aktuell ausgewählten Webbrowser-Tabs fest. Unterstützt sowohl
Edge- als auch Chrome-Browser durch optionale Schalter. Die Navigation umfasst
die Validierung der URL und gewährleistet das ordnungsgemäße Laden der Seite durch asynchrone Operationen.

## Syntax

```powershell
Set-WebbrowserTabLocation -Url <String> [-ByReference <PSObject>] [-Chromium] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]

Set-WebbrowserTabLocation [-Edge] [<CommonParameters>]

Set-WebbrowserTabLocation [-Chrome] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Die URL, zu der navigiert werden soll |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Automatische Tab-Auswahl verhindern |
| `-Edge` | SwitchParameter | — | — | Named | — | Navigieren Sie mit dem Microsoft Edge-Browser *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Navigate using Google Chrome browser *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Navigieren Sie mit Microsoft Edge oder Google Chrome, je nachdem, welcher der Standardbrowser ist |
| `-Firefox` | SwitchParameter | — | — | Named | — | Navigieren Sie mit dem Firefox-Browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Navigieren mit dem von Playwright verwalteten WebKit-Browser |
| `-Page` | Object | — | — | Named | — | Referenz auf das Browser-Seitenobjekt |
| `-ByReference` | PSObject | — | — | Named | — | Browser-Sitzungsreferenzobjekt |

## Examples

### Set-WebbrowserTabLocation -Url "https://github.com/microsoft" -Edge

```powershell
Set-WebbrowserTabLocation -Url "https://github.com/microsoft" -Edge
```

### "https://github.com/microsoft" | lt -ch

```powershell
"https://github.com/microsoft" | lt -ch
```

## Related Links

- [Set-WebbrowserTabLocation on GitHub](https://github.com/genXdev/genXdev)
