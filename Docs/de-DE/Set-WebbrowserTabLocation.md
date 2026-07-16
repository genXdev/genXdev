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
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Die URL, zu der navigiert werden soll |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Automatische Tab-Auswahl verhindern |
| `-Edge` | SwitchParameter | — | — | Named | — | Navigieren Sie mit dem Microsoft Edge-Browser *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Navigate using Google Chrome browser *(Parameter set: )* |
| `-Page` | Object | — | — | Named | — | Referenz auf das Browser-Seitenobjekt |
| `-ByReference` | PSObject | — | — | Named | — | Browser-Sitzungsreferenzobjekt |

## Related Links

- [Set-WebbrowserTabLocation on GitHub](https://github.com/genXdev/genXdev)
