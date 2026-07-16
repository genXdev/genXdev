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
| `-Chrome` | SwitchParameter | — | — | 0 | — | Извлекает закладки из Google Chrome |
| `-Edge` | SwitchParameter | — | — | 1 | — | Возвращает закладки из Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | 2 | — | Возвращает закладки из Mozilla Firefox *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Принудительное согласие на установку стороннего программного обеспечения |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Согласие на установку стороннего программного обеспечения |

## Outputs

- `Object[]`

## Related Links

- [Get-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)
