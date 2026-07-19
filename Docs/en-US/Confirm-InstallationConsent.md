# Confirm-InstallationConsent

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Confirms user consent for installing third-party software, using
preferences for persistent choices.

## Description

<details>
<summary><b>Expand description</b></summary>

This function acts as a custom ShouldProcess mechanism specifically for
software installations. It checks a user preference to determine if
automatic installation is allowed for the specified application. If no
preference is set, it prompts the user with a clear explanation of what
will be installed, the source, potential risks, and options to allow or
deny the installation (with options for one-time or persistent choices).

This ensures explicit user consent before proceeding with any installation,
helping to mitigate potential legal risks by requiring affirmative action
from the user. The prompt clearly states that the module author (GenXdev)
is not responsible for third-party software, and that the user is
consenting to the installation at their own risk.

Preferences are stored in a JSON file, allowing users to set "always
allow" for specific applications or enable global consent for all GenXdev
third-party installations, making it convenient while remaining legally
sound.

If consent is denied (or preference is set to deny), the function returns $false and does not
proceed with installation. If allowed, it returns $true.

</details>
## Syntax

```powershell
Confirm-InstallationConsent -ApplicationName <String> -Source <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-ForceConsent] [-Publisher <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ApplicationName` | String | ✅ | — | 0 | — | The name of the application or software being installed. |
| `-Source` | String | ✅ | — | 1 | — | The source of the installation (e.g., Winget, PowerShell Gallery). |
| `-Description` | String | — | — | Named | `"This software is required for certain features in the GenXdev modules."` | Optional description of the software and its purpose. |
| `-Publisher` | String | — | — | Named | `"Third-party vendor"` | Optional publisher or vendor of the software. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a prompt even if preference is set. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatically consent to third-party software installation and set persistent flag. |

## Examples

### if (Confirm-InstallationConsent -ApplicationName "Docker Desktop" `         -Source "Winget") {     # Proceed with installation     Microsoft.WinGet.Client\Install-WinGetPackage `         -Id "Docker.DockerDesktop" }

```powershell
if (Confirm-InstallationConsent -ApplicationName "Docker Desktop" `
        -Source "Winget") {
    # Proceed with installation
    Microsoft.WinGet.Client\Install-WinGetPackage `
        -Id "Docker.DockerDesktop"
}
```

This checks consent before installing Docker Desktop via Winget.

### Confirm-InstallationConsent -ApplicationName "Pester" `     -Source "PowerShell Gallery" -Publisher "Pester Team" `     -Description "Required for unit testing in PowerShell modules."

```powershell
Confirm-InstallationConsent -ApplicationName "Pester" `
    -Source "PowerShell Gallery" -Publisher "Pester Team" `
    -Description "Required for unit testing in PowerShell modules."
```

Prompts with detailed information before installing the Pester module.

## Outputs

- `Boolean`

## Related Links

- [Confirm-InstallationConsent on GitHub](https://github.com/genXdev/genXdev)
