# EnsureNuGetAssembly

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Downloadt en laadt .NET-assembly's van NuGet-pakketten op basis van pakketsleutel of ID.

## Description

Deze functie zorgt ervoor dat de opgegeven NuGet-pakketassembly's worden gedownload en geladen in de huidige PowerShell-sessie. Het ondersteunt automatische detectie en laden met een terugval naar een JSON-manifest voor configuratie-overschrijvingen, en behandelt randgevallen zoals stub-afhankelijkheden (bijv. SQLite). Installatie gebruikt uitsluitend de dotnet CLI voor betrouwbaar pakketbeheer en laadt assembly's rechtstreeks vanuit de globale NuGet-cache zonder ze te kopiëren. Lazy loading controleert of het type al beschikbaar is voordat het verdergaat.

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

## Examples

### EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core"

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core"
```

### EnsureNuGetAssembly -PackageKey "Microsoft.Playwright" -Version "1.54.0" -TypeName "Microsoft.Playwright.Playwright"

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Playwright" -Version "1.54.0" -TypeName "Microsoft.Playwright.Playwright"
```

### EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core" -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core" -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [EnsureNuGetAssembly on GitHub](https://github.com/genXdev/genXdev)
