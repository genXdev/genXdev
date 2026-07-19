# EnsureGenXdev

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Zorgt ervoor dat alle GenXdev-modules correct worden geladen door alle Ensure*-cmdlets aan te roepen.

## Description

Deze functie haalt alle GenXdev-cmdlets op die beginnen met "Ensure" of "Optimize-Ensure" (voor c# cmdlets) en voert elk ervan uit om te garanderen dat alle benodigde GenXdev-modules en afhankelijkheden correct zijn geladen en beschikbaar zijn voor gebruik. Eventuele fouten tijdens de uitvoering worden opgevangen en weergegeven als informatieve berichten.

Optioneel kan het ook alle NuGet-pakketten downloaden en laden die zijn gedefinieerd in het manifestbestand packages.json.

## Syntax

```powershell
EnsureGenXdev [-ConsentToThirdPartySoftwareInstallation] [-DownloadAllNugetPackages] [-Force] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Dwingt de uitvoering van waarborgingsoperaties af, zelfs als ze al voltooid lijken te zijn |
| `-DownloadAllNugetPackages` | SwitchParameter | — | — | Named | — | Downloadt en laadt alle NuGet-pakketten die zijn gedefinieerd in het manifestbestand packages.json |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forceer een toestemmingsprompt, zelfs als er een voorkeur is ingesteld voor installatie van software van derden. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch toestemming geven voor installatie van software van derden en permanente vlag instellen voor alle pakketten. |

## Examples

### EnsureGenXdev

```powershell
EnsureGenXdev
```

Dit commando voert alle beschikbare Ensure*-cmdlets uit om de GenXdev-omgeving te initialiseren.

### EnsureGenXdev -DownloadAllNugetPackages

```powershell
EnsureGenXdev -DownloadAllNugetPackages
```

Dit commando voert alle Ensure*-cmdlets uit en downloadt en laadt ook alle NuGet-pakketten die zijn gedefinieerd in het manifestbestand packages.json.

### EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation
```

Dit commando voert alle Ensure*-cmdlets uit en downloadt NuGet-pakketten.

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
