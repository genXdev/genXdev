# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval, `et

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Edge] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript code, bestandspad of URL om uit te voeren |
| `-Inspect` | SwitchParameter | — | — | Named | — | Onderbreken in browser debugger voor uitvoering |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Automatische tabselectie voorkomen |
| `-Edge` | SwitchParameter | — | — | Named | — | Gebruik de Microsoft Edge-browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Gebruik de Google Chrome-browser |
| `-Page` | Object | — | — | Named | — | Browserpagina-objectreferentie |
| `-ByReference` | PSObject | — | — | Named | — | Browser sessie referentie object |

## Related Links

- [Invoke-WebbrowserEvaluation on GitHub](https://github.com/genXdev/genXdev)
