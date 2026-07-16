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
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | La URL a la que navegar |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Prevenir la selección automática de pestañas |
| `-Edge` | SwitchParameter | — | — | Named | — | Navigate using Microsoft Edge browser *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Navegar usando el navegador Google Chrome *(Parameter set: )* |
| `-Page` | Object | — | — | Named | — | Referencia del objeto de página del navegador |
| `-ByReference` | PSObject | — | — | Named | — | Objeto de referencia de sesión del navegador |

## Related Links

- [Set-WebbrowserTabLocation on GitHub](https://github.com/genXdev/genXdev)
