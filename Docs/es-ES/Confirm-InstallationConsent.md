# Confirm-InstallationConsent

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Confirm-InstallationConsent -ApplicationName <String> -Source <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-ForceConsent] [-Publisher <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ApplicationName` | String | ✅ | — | 0 | — | El nombre de la aplicación o software que se está instalando. |
| `-Source` | String | ✅ | — | 1 | — | La fuente de la instalación (ej., Winget, PowerShell Gallery). |
| `-Description` | String | — | — | Named | `"This software is required for certain features in the GenXdev modules."` | Descripción opcional del software y su propósito. |
| `-Publisher` | String | — | — | Named | `"Third-party vendor"` | Editor opcional del publicador o proveedor del software. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forzar un prompt incluso si la preferencia está establecida. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automáticamente a la instalación de software de terceros y establecer la marca persistente. |

## Outputs

- `Boolean`

## Related Links

- [Confirm-InstallationConsent on GitHub](https://github.com/genXdev/genXdev)
