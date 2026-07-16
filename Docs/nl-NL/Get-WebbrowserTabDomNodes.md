# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Edge] [-NoAutoSelectTab] [-Page <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | De query selector string of array van strings die moet worden gebruikt voor het selecteren van DOM-knooppunten |
| `-ModifyScript` | String | — | — | 1 | `''` | Het script om de uitvoer van de query selector aan te passen, b.v. e.outerHTML of e.outerHTML='hello world' |
| `-Edge` | SwitchParameter | — | — | Named | — | Gebruik de Microsoft Edge-browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Gebruik de Google Chrome-browser |
| `-Page` | Object | — | — | Named | — | Browserpagina-objectreferentie |
| `-ByReference` | PSObject | — | — | Named | — | Browser sessie referentie object |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Automatische tabselectie voorkomen |

## Related Links

- [Get-WebbrowserTabDomNodes on GitHub](https://github.com/genXdev/genXdev)
