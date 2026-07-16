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
| `-Force` | SwitchParameter | — | — | Named | — | Force l'exécution des opérations ensure même si elles semblent déjà terminées |
| `-DownloadAllNugetPackages` | SwitchParameter | — | — | Named | — | Télécharge et charge tous les packages NuGet définis dans le fichier manifeste packages.json |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forcer une demande de consentement même si la préférence est définie pour l'installation de logiciels tiers. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automatiquement à l'installation de logiciels tiers et définir un indicateur persistant pour tous les packages. |

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
