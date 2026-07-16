# Get-BrowserBookmark

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `gbm

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-BrowserBookmark [-Chrome] [-Edge] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]

Get-BrowserBookmark [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Chrome` | SwitchParameter | — | — | 0 | — | Ruft Lesezeichen aus Google Chrome ab |
| `-Edge` | SwitchParameter | — | — | 1 | — | Returns bookmarks from Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | 2 | — | Gibt Lesezeichen aus Mozilla Firefox zurück *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Erzwinge Zustimmung zur Installation von Drittanbieter-Software |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Zustimmung zur Installation von Software Dritter |

## Outputs

- `Object[]`

## Related Links

- [Get-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)
