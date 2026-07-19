# Confirm-InstallationConsent

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Bestätigt die Zustimmung des Benutzers zur Installation von Drittanbieter-Software unter Verwendung von Einstellungen für dauerhafte Entscheidungen.

## Description

<details>
<summary><b>Expand description</b></summary>

Diese Funktion dient als benutzerdefinierter ShouldProcess-Mechanismus speziell für Softwareinstallationen. Sie überprüft eine Benutzereinstellung, um festzustellen, ob eine automatische Installation für die angegebene Anwendung erlaubt ist. Wenn keine Einstellung gesetzt ist, fordert sie den Benutzer mit einer klaren Erklärung dessen, was installiert wird, der Quelle, potenziellen Risiken und Optionen zum Erlauben oder Verweigern der Installation auf (mit Optionen für einmalige oder dauerhafte Entscheidungen).

Dies stellt sicher, dass eine ausdrückliche Zustimmung des Benutzers vor dem Fortfahren mit einer Installation eingeholt wird, und hilft, potenzielle rechtliche Risiken zu mindern, indem eine bestätigende Handlung des Benutzers erforderlich ist. Die Eingabeaufforderung stellt klar, dass der Modulautor (GenXdev) nicht für Drittsoftware verantwortlich ist und dass der Benutzer der Installation auf eigenes Risiko zustimmt.

Einstellungen werden in einer JSON-Datei gespeichert, sodass Benutzer "immer erlauben" für bestimmte Anwendungen festlegen oder eine globale Zustimmung für alle GenXdev-Drittinstallationen aktivieren können, was bequem ist, während es rechtlich einwandfrei bleibt.

Wenn die Zustimmung verweigert wird (oder die Einstellung auf "verweigern" gesetzt ist), gibt die Funktion $false zurück und fährt nicht mit der Installation fort. Wenn erlaubt, gibt sie $true zurück.

</details>
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

Hiermit wird die Zustimmung geprüft, bevor Docker Desktop über Winget installiert wird.

### Confirm-InstallationConsent -ApplicationName "Pester" `     -Source "PowerShell Gallery" -Publisher "Pester Team" `     -Description "Required for unit testing in PowerShell modules."

```powershell
Confirm-InstallationConsent -ApplicationName "Pester" `
    -Source "PowerShell Gallery" -Publisher "Pester Team" `
    -Description "Required for unit testing in PowerShell modules."
```

Prompts mit detaillierten Informationen vor der Installation des Pester-Moduls.

## Outputs

- `Boolean`

## Related Links

- [Confirm-InstallationConsent on GitHub](https://github.com/genXdev/genXdev)
