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
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Erzwingen Sie eine Einwilligungsaufforderung, auch wenn eine Präferenz für die Installation des ImageSharp-Pakets festgelegt ist. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Drittanbieter-Softwareinstallation automatisch zustimmen und persistentes Flag für ImageSharp-Pakete setzen. |

## Outputs

- `GenXdev.Helpers.ImageSearchResultMetadata`

## Related Links

- [Get-ImageMetadata on GitHub](https://github.com/genXdev/genXdev)
