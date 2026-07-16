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
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a consent prompt even if preference is set for ImageSharp package installation. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatically consent to third-party software installation and set persistent flag for ImageSharp packages. |

## Outputs

- `GenXdev.Helpers.ImageSearchResultMetadata`

## Related Links

- [Get-ImageMetadata on GitHub](https://github.com/genXdev/genXdev)
