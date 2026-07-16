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
| `-ApplicationName` | String | ✅ | — | 0 | — | De naam van de toepassing of software die wordt geïnstalleerd. |
| `-Source` | String | ✅ | — | 1 | — | De bron van de installatie (bijv. Winget, PowerShell Gallery). |
| `-Description` | String | — | — | Named | `"This software is required for certain features in the GenXdev modules."` | Optionele beschrijving van de software en het doel ervan. |
| `-Publisher` | String | — | — | Named | `"Third-party vendor"` | Optionele uitgever of leverancier van de software. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a prompt even if preference is set. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch toestemming geven voor installatie van software van derden en persistente vlag instellen. |

## Outputs

- `Boolean`

## Related Links

- [Confirm-InstallationConsent on GitHub](https://github.com/genXdev/genXdev)
