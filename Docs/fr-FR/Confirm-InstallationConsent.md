# Confirm-InstallationConsent

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Confirme le consentement de l'utilisateur pour installer des logiciels tiers, en utilisant les préférences pour les choix persistants.

## Description

<details>
<summary><b>Expand description</b></summary>

Cette fonction agit comme un mécanisme ShouldProcess personnalisé spécifiquement pour les installations logicielles. Elle vérifie une préférence utilisateur pour déterminer si l'installation automatique est autorisée pour l'application spécifiée. Si aucune préférence n'est définie, elle invite l'utilisateur avec une explication claire de ce qui sera installé, la source, les risques potentiels, et des options pour autoriser ou refuser l'installation (avec des choix ponctuels ou persistants).

Cela garantit un consentement explicite de l'utilisateur avant de procéder à toute installation, contribuant à atténuer les risques juridiques potentiels en exigeant une action affirmative de l'utilisateur. L'invite indique clairement que l'auteur du module (GenXdev) n'est pas responsable des logiciels tiers et que l'utilisateur consent à l'installation à ses propres risques.

Les préférences sont stockées dans un fichier JSON, permettant aux utilisateurs de définir "toujours autoriser" pour des applications spécifiques ou d'activer un consentement global pour toutes les installations tierces de GenXdev, ce qui est pratique tout en restant juridiquement solide.

Si le consentement est refusé (ou la préférence définie sur refus), la fonction retourne $false et ne procède pas à l'installation. Si autorisé, elle retourne $true.

</details>
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

Ceci vérifie le consentement avant d'installer Docker Desktop via Winget.

### Confirm-InstallationConsent -ApplicationName "Pester" `     -Source "PowerShell Gallery" -Publisher "Pester Team" `     -Description "Required for unit testing in PowerShell modules."

```powershell
Confirm-InstallationConsent -ApplicationName "Pester" `
    -Source "PowerShell Gallery" -Publisher "Pester Team" `
    -Description "Required for unit testing in PowerShell modules."
```

Invites contenant des informations détaillées avant d'installer le module Pester.

## Outputs

- `Boolean`

## Related Links

- [Confirm-InstallationConsent on GitHub](https://github.com/genXdev/genXdev)
