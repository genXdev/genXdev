# Close-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `ct, `CloseTab

## Synopsis

> Sluit het momenteel geselecteerde tabblad van de webbrowser.

## Description

Sluit het momenteel geselecteerde browsertabblad met behulp van de CloseAsync()-methode van ChromeDriver. Als er geen tabblad is geselecteerd, probeert de functie automatisch het laatst gebruikte tabblad te selecteren voordat het wordt gesloten.

## Syntax

```powershell
Close-WebbrowserTab [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Navigateer met behulp van de Microsoft Edge-browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Navigeer met de Google Chrome-browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Wordt geopend in Microsoft Edge of Google Chrome, afhankelijk van wat de standaardbrowser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Openen in Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Gebruikt de door Playwright beheerde WebKit-browser |

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
