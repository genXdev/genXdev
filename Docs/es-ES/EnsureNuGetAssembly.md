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
| `-PackageKey` | String | ✅ | — | 0 | — | Clave de paquete de packages.json o NuGet PackageId directo. |
| `-ManifestPath` | String | — | — | Named | — | Ruta a packages.json; por defecto es la raíz del módulo si se omite. |
| `-Version` | String | — | — | Named | — | Versión específica; si se omite, usar la más alta de JSON o la última. |
| `-TypeName` | String | — | — | Named | — | TypeName to verify loading. |
| `-ForceLatest` | SwitchParameter | — | — | Named | — | Revertir a la última versión si la versión exacta falla. |
| `-Destination` | String | — | — | Named | — | Destino de instalación personalizado; por defecto, es persistente local o caché global. |
| `-Description` | String | — | — | Named | — | Descripción opcional del software y su propósito para el consentimiento. |
| `-Publisher` | String | — | — | Named | — | Editor o proveedor opcional del software para consentimiento. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forzar una solicitud incluso si la preferencia está configurada para consentimiento. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automáticamente a la instalación de software de terceros y establecer la marca persistente. |

## Related Links

- [EnsureNuGetAssembly on GitHub](https://github.com/genXdev/genXdev)
