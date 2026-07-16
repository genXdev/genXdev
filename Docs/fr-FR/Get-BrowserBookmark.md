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
| `-Chrome` | SwitchParameter | — | — | 0 | — | Récupère les signets de Google Chrome |
| `-Edge` | SwitchParameter | — | — | 1 | — | Récupère les favoris de Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | 2 | — | Retourne les marque-pages de Mozilla Firefox *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forcer le consentement pour l'installation de logiciels tiers |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentement à l'installation de logiciels tiers |

## Outputs

- `Object[]`

## Related Links

- [Get-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)
