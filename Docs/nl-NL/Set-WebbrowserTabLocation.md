# Set-WebbrowserTabLocation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `lt, `Nav

## Synopsis

> Navigeert het huidige webbrowsertabblad naar een opgegeven URL.

## Description

Stelt de locatie (URL) in van het momenteel geselecteerde webbrowsertabblad. Ondersteunt zowel Edge als Chrome browsers via optionele switches. De navigatie omvat validatie van de URL en zorgt voor correct laden van de pagina door asynchrone bewerkingen.

## Syntax

```powershell
Set-WebbrowserTabLocation -Url <String> [-ByReference <PSObject>] [-Chromium] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]

Set-WebbrowserTabLocation [-Edge] [<CommonParameters>]

Set-WebbrowserTabLocation [-Chrome] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | De URL om naartoe te navigeren |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Automatische tabselectie voorkomen |
| `-Edge` | SwitchParameter | — | — | Named | — | Navigateer met behulp van de Microsoft Edge-browser *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Navigeer met de Google Chrome-browser *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Navigeer met Microsoft Edge of Google Chrome, afhankelijk van welke de standaardbrowser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Navigeren met Firefox-browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Navigeren met de door Playwright beheerde WebKit-browser |
| `-Page` | Object | — | — | Named | — | Browserpagina-objectreferentie |
| `-ByReference` | PSObject | — | — | Named | — | Browser sessie referentie object |

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
