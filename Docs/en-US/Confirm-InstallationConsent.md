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

## Parameter Details

### `-ApplicationName <String>`

> The name of the application or software being installed.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Source <String>`

> The source of the installation (e.g., Winget, PowerShell Gallery).

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Description <String>`

> Optional description of the software and its purpose.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"This software is required for certain features in the GenXdev modules."` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Publisher <String>`

> Optional publisher or vendor of the software.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"Third-party vendor"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceConsent`

> Force a prompt even if preference is set.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConsentToThirdPartySoftwareInstallation`

> Automatically consent to third-party software installation and set persistent flag.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Boolean`

## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Copy-FilesToDateFolder.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Copy-IdenticalParamValues.md)
- [EnsurePester](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePester.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Find-Item.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-MediaFileCreationDate.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Rename-InProject.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ResolveInputObjectFileNames.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Write-TextFileAtomic.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/WriteFileOutput.md)
