# EnsureGenXdev

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
