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
| `-ApplicationName` | String | ✅ | — | 0 | — | The name of the application or software being installed. |
| `-Source` | String | ✅ | — | 1 | — | La source de l'installation (par exemple, Winget, PowerShell Gallery). |
| `-Description` | String | — | — | Named | `"This software is required for certain features in the GenXdev modules."` | Description optionnelle du logiciel et de son objectif. |
| `-Publisher` | String | — | — | Named | `"Third-party vendor"` | Éditeur ou fournisseur facultatif du logiciel. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forcer une invite même si une préférence est définie. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentement automatique à l'installation de logiciels tiers et définition d'un indicateur persistant. |

## Outputs

- `Boolean`

## Related Links

- [Confirm-InstallationConsent on GitHub](https://github.com/genXdev/genXdev)
