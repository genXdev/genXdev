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
| `-ApplicationName` | String | ✅ | — | 0 | — | Der Name der Anwendung oder Software, die installiert wird. |
| `-Source` | String | ✅ | — | 1 | — | Die Quelle der Installation (z. B. Winget, PowerShell Gallery). |
| `-Description` | String | — | — | Named | `"This software is required for certain features in the GenXdev modules."` | Optionale Beschreibung der Software und ihres Zwecks. |
| `-Publisher` | String | — | — | Named | `"Third-party vendor"` | Optionaler Herausgeber oder Anbieter der Software. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a prompt even if preference is set. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatically consent to third-party software installation and set persistent flag. |

## Outputs

- `Boolean`

## Related Links

- [Confirm-InstallationConsent on GitHub](https://github.com/genXdev/genXdev)
