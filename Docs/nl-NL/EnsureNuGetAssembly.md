# EnsureNuGetAssembly

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
EnsureNuGetAssembly -PackageKey <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-Destination <String>] [-ForceConsent] [-ForceLatest] [-ManifestPath <String>] [-Publisher <String>] [-TypeName <String>] [-Version <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PackageKey` | String | ✅ | — | 0 | — | Pakket-sleutel uit packages.json of directe NuGet PackageId. |
| `-ManifestPath` | String | — | — | Named | — | Pad naar packages.json; standaard naar module root indien weggelaten. |
| `-Version` | String | — | — | Named | — | Specifieke versie; indien weggelaten, gebruik de hoogste uit JSON of de nieuwste. |
| `-TypeName` | String | — | — | Named | — | Typ naam om het laden te verifiëren. |
| `-ForceLatest` | SwitchParameter | — | — | Named | — | Terugvallen op de nieuwste versie als de exacte versie mislukt. |
| `-Destination` | String | — | — | Named | — | Aangepaste installatiebestemming; standaard wordt lokaal persistent of wereldwijde cache gebruikt. |
| `-Description` | String | — | — | Named | — | Optionele beschrijving van de software en het doel voor toestemming. |
| `-Publisher` | String | — | — | Named | — | Optionele uitgever of leverancier van de software voor toestemming. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forceer een prompt, zelfs als er een voorkeur voor toestemming is ingesteld. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch toestemming geven voor installatie van software van derden en persistente vlag instellen. |

## Related Links

- [EnsureNuGetAssembly on GitHub](https://github.com/genXdev/genXdev)
