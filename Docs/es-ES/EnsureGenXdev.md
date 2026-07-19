# EnsureGenXdev

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Asegura que todos los módulos de GenXdev estén cargados correctamente invocando todos los cmdlets Ensure*.

## Description

Esta función recupera todos los cmdlets de GenXdev que comienzan con "Ensure" u "Optimize-Ensure" (para cmdlets de c#) y ejecuta cada uno para garantizar que todos los módulos y dependencias de GenXdev necesarios estén correctamente cargados y disponibles para su uso. Cualquier error durante la ejecución se captura y se muestra como mensajes informativos.

Opcionalmente, también puede descargar y cargar todos los paquetes NuGet definidos en el archivo de manifiesto packages.json.

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

## Examples

### EnsureGenXdev

```powershell
EnsureGenXdev
```

Este comando ejecuta todos los cmdlets Ensure* disponibles para inicializar el entorno GenXdev.

### EnsureGenXdev -DownloadAllNugetPackages

```powershell
EnsureGenXdev -DownloadAllNugetPackages
```

Este comando ejecuta todos los cmdlets Ensure* y también descarga y carga todos los paquetes NuGet definidos en el archivo de manifiesto packages.json.

### EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation
```

Este comando ejecuta todos los cmdlets Ensure* y descarga paquetes NuGet.

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
