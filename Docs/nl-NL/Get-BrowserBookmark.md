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
| `-Chrome` | SwitchParameter | — | — | 0 | — | Haalt bladwijzers op uit Google Chrome |
| `-Edge` | SwitchParameter | — | — | 1 | — | Haalt bladwijzers op uit Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | 2 | — | Geeft bladwijzers terug van Mozilla Firefox *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Toestemming afdwingen voor installatie van software van derden |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Toestemming voor installatie van software van derden |

## Outputs

- `Object[]`

## Related Links

- [Get-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)
