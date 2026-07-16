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
| `-Chrome` | SwitchParameter | — | — | 0 | — | Retorna favoritos do Google Chrome |
| `-Edge` | SwitchParameter | — | — | 1 | — | Retorna marcadores do Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | 2 | — | Retorna favoritos do Mozilla Firefox *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forçar consentimento para instalação de software de terceiros |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentimento para instalação de software de terceiros |

## Outputs

- `Object[]`

## Related Links

- [Get-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)
