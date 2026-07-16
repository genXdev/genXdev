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
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Pad naar het afbeeldingsbestand om te analyseren |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Dwing een toestemmingsprompt af, zelfs als er een voorkeur is ingesteld voor de installatie van het ImageSharp-pakket. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch toestemming geven voor installatie van software van derden en persistente vlag instellen voor ImageSharp-pakketten. |

## Outputs

- `GenXdev.Helpers.ImageSearchResultMetadata`

## Related Links

- [Get-ImageMetadata on GitHub](https://github.com/genXdev/genXdev)
