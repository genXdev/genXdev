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
| `-Chrome` | SwitchParameter | — | — | 0 | — | Returns bookmarks from Google Chrome |
| `-Edge` | SwitchParameter | — | — | 1 | — | Returns bookmarks from Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | 2 | — | Returns bookmarks from Mozilla Firefox *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force consent for third-party software installation |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consent to third-party software installation |

## Outputs

- `Object[]`

## Related Links

- [Get-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)
