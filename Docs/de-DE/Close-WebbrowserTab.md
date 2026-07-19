# Close-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `ct, `CloseTab

## Synopsis

> Schließt den aktuell ausgewählten Webbrowser-Tab.

## Description

Schließt den aktuell ausgewählten Webbrowser-Tab mithilfe der CloseAsync()-Methode von ChromeDriver. Wenn kein Tab ausgewählt ist, versucht die Funktion automatisch, den zuletzt verwendeten Tab auszuwählen, bevor er geschlossen wird.

## Syntax

```powershell
Close-WebbrowserTab [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Navigieren Sie mit dem Microsoft Edge-Browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Navigate using Google Chrome browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Wird in Microsoft Edge oder Google Chrome geöffnet, je nachdem, welcher der Standardbrowser ist |
| `-Firefox` | SwitchParameter | — | — | Named | — | Öffnet in Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Verwendet den von Playwright verwalteten WebKit-Browser |

## Examples

### Close-WebbrowserTab Closes the currently active browser tab

```powershell
Close-WebbrowserTab
Closes the currently active browser tab
```

### ct Uses the alias to close the currently active browser tab

```powershell
ct
Uses the alias to close the currently active browser tab
```

## Related Links

- [Close-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)
