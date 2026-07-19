# Confirm-InstallationConsent

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Confirma o consentimento do usuário para instalar software de terceiros, usando preferências para escolhas persistentes.

## Description

<details>
<summary><b>Expand description</b></summary>

Esta função atua como um mecanismo personalizado de ShouldProcess especificamente para instalações de software. Ela verifica uma preferência do usuário para determinar se a instalação automática é permitida para o aplicativo especificado. Se nenhuma preferência estiver definida, ela solicita ao usuário uma explicação clara do que será instalado, a fonte, os riscos potenciais e opções para permitir ou negar a instalação (com opções para escolhas únicas ou persistentes).

Isso garante o consentimento explícito do usuário antes de prosseguir com qualquer instalação, ajudando a mitigar possíveis riscos legais ao exigir uma ação afirmativa do usuário. O prompt declara claramente que o autor do módulo (GenXdev) não é responsável por software de terceiros e que o usuário está consentindo com a instalação por sua própria conta e risco.

As preferências são armazenadas em um arquivo JSON, permitindo que os usuários definam "sempre permitir" para aplicativos específicos ou ativem o consentimento global para todas as instalações de terceiros da GenXdev, tornando conveniente enquanto permanece legalmente sólido.

Se o consentimento for negado (ou a preferência for definida para negar), a função retorna $false e não prossegue com a instalação. Se permitido, retorna $true.

</details>
## Syntax

```powershell
Confirm-InstallationConsent -ApplicationName <String> -Source <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-ForceConsent] [-Publisher <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ApplicationName` | String | ✅ | — | 0 | — | O nome do aplicativo ou software que está sendo instalado. |
| `-Source` | String | ✅ | — | 1 | — | A origem da instalação (ex.: Winget, PowerShell Gallery). |
| `-Description` | String | — | — | Named | `"This software is required for certain features in the GenXdev modules."` | Descrição opcional do software e seu propósito. |
| `-Publisher` | String | — | — | Named | `"Third-party vendor"` | Editor ou fornecedor opcional do software. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force um prompt mesmo se a preferência estiver definida. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automaticamente com a instalação de software de terceiros e definir sinalizador persistente. |

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

Isso verifica o consentimento antes de instalar o Docker Desktop via Winget.

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
