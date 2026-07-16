# Get-ImageMetadata

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ImageMetadata -ImagePath <String> [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Path to the image file to analyze |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Заставить принудительно отображать запрос согласия, даже если настройки для пакета ImageSharp установлены. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Автоматически соглашаться на установку стороннего программного обеспечения и устанавливать постоянный флаг для пакетов ImageSharp. |

## Outputs

- `GenXdev.Helpers.ImageSearchResultMetadata`

## Related Links

- [Get-ImageMetadata on GitHub](https://github.com/genXdev/genXdev)
