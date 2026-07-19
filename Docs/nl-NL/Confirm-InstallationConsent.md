# Confirm-InstallationConsent

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Bevestigt de toestemming van de gebruiker voor het installeren van software van derden, met behulp van voorkeuren voor persistente keuzes.

## Description

<details>
<summary><b>Expand description</b></summary>

Deze functie fungeert als een aangepast ShouldProcess-mechanisme, specifiek voor software-installaties. Het controleert een gebruikersvoorkeur om te bepalen of automatische installatie is toegestaan voor de opgegeven toepassing. Als er geen voorkeur is ingesteld, vraagt het de gebruiker om toestemming met een duidelijke uitleg over wat er zal worden geïnstalleerd, de bron, mogelijke risico's en opties om de installatie toe te staan of te weigeren (met opties voor eenmalige of blijvende keuzes).

Dit zorgt voor expliciete gebruikersinstemming voordat er wordt overgegaan tot een installatie, wat helpt om mogelijke juridische risico's te beperken door een actieve handeling van de gebruiker te vereisen. De prompt vermeldt duidelijk dat de moduleauteur (GenXdev) niet verantwoordelijk is voor software van derden en dat de gebruiker instemt met de installatie op eigen risico.

Voorkeuren worden opgeslagen in een JSON-bestand, waardoor gebruikers "altijd toestaan" kunnen instellen voor specifieke toepassingen of globale toestemming kunnen geven voor alle GenXdev-installaties van derden. Dit is handig terwijl het juridisch verantwoord blijft.

Als toestemming wordt geweigerd (of de voorkeur is ingesteld op weigeren), retourneert de functie $false en wordt de installatie niet uitgevoerd. Indien toegestaan, retourneert het $true.

</details>
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

Dit controleert toestemming voordat Docker Desktop via Winget wordt geïnstalleerd.

### Confirm-InstallationConsent -ApplicationName "Pester" `     -Source "PowerShell Gallery" -Publisher "Pester Team" `     -Description "Required for unit testing in PowerShell modules."

```powershell
Confirm-InstallationConsent -ApplicationName "Pester" `
    -Source "PowerShell Gallery" -Publisher "Pester Team" `
    -Description "Required for unit testing in PowerShell modules."
```

Prompts met gedetailleerde informatie voordat de Pester-module wordt geïnstalleerd.

## Outputs

- `Boolean`

## Related Links

- [Confirm-InstallationConsent on GitHub](https://github.com/genXdev/genXdev)
