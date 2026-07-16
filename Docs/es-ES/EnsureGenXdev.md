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
| `-Force` | SwitchParameter | — | — | Named | — | Fuerza la ejecución de operaciones de garantía incluso si parecen estar ya completadas |
| `-DownloadAllNugetPackages` | SwitchParameter | — | — | Named | — | Descarga y carga todos los paquetes NuGet definidos en el archivo de manifiesto packages.json |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forzar una solicitud de consentimiento incluso si se ha establecido una preferencia para la instalación de software de terceros. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automáticamente a la instalación de software de terceros y establecer el indicador persistente para todos los paquetes. |

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
