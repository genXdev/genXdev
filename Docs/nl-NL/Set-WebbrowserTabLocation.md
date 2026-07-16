# Set-WebbrowserTabLocation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `lt, `Nav

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-WebbrowserTabLocation -Url <String> [-ByReference <PSObject>] [-NoAutoSelectTab] [-Page <Object>] [<CommonParameters>]

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
| `-Page` | Object | — | — | Named | — | Browserpagina-objectreferentie |
| `-ByReference` | PSObject | — | — | Named | — | Browser sessie referentie object |

## Related Links

- [Set-WebbrowserTabLocation on GitHub](https://github.com/genXdev/genXdev)
