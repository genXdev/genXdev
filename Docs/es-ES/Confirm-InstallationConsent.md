# Confirm-InstallationConsent

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Confirma el consentimiento del usuario para instalar software de terceros, utilizando preferencias para elecciones persistentes.

## Description

<details>
<summary><b>Expand description</b></summary>

Esta función actúa como un mecanismo personalizado de ShouldProcess específicamente para instalaciones de software. Comprueba una preferencia del usuario para determinar si se permite la instalación automática de la aplicación especificada. Si no hay una preferencia establecida, solicita al usuario con una explicación clara de lo que se instalará, el origen, los riesgos potenciales y las opciones para permitir o denegar la instalación (con opciones para elecciones únicas o persistentes).

Esto garantiza el consentimiento explícito del usuario antes de proceder con cualquier instalación, ayudando a mitigar posibles riesgos legales al requerir una acción afirmativa del usuario. El aviso indica claramente que el autor del módulo (GenXdev) no es responsable del software de terceros, y que el usuario consiente la instalación bajo su propio riesgo.

Las preferencias se almacenan en un archivo JSON, lo que permite a los usuarios establecer "permitir siempre" para aplicaciones específicas o habilitar el consentimiento global para todas las instalaciones de terceros de GenXdev, haciéndolo conveniente mientras se mantiene legalmente sólido.

Si se deniega el consentimiento (o la preferencia está establecida en denegar), la función devuelve $false y no procede con la instalación. Si se permite, devuelve $true.

</details>
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

Esto verifica el consentimiento antes de instalar Docker Desktop mediante Winget.

### Confirm-InstallationConsent -ApplicationName "Pester" `     -Source "PowerShell Gallery" -Publisher "Pester Team" `     -Description "Required for unit testing in PowerShell modules."

```powershell
Confirm-InstallationConsent -ApplicationName "Pester" `
    -Source "PowerShell Gallery" -Publisher "Pester Team" `
    -Description "Required for unit testing in PowerShell modules."
```

Preguntas con información detallada antes de instalar el módulo Pester.

## Outputs

- `Boolean`

## Related Links

- [Confirm-InstallationConsent on GitHub](https://github.com/genXdev/genXdev)
