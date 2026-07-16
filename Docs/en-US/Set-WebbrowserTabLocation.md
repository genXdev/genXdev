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
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The URL to navigate to |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Prevent automatic tab selection |
| `-Edge` | SwitchParameter | — | — | Named | — | Navigate using Microsoft Edge browser *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Navigate using Google Chrome browser *(Parameter set: )* |
| `-Page` | Object | — | — | Named | — | Browser page object reference |
| `-ByReference` | PSObject | — | — | Named | — | Browser session reference object |

## Related Links

- [Set-WebbrowserTabLocation on GitHub](https://github.com/genXdev/genXdev)
