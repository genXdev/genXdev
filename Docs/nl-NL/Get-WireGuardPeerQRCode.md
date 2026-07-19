# Get-WireGuardPeerQRCode

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Generate a QR code for a WireGuard VPN peer configuration.

## Description

Deze functie genereert een QR-code voor een WireGuard VPN-peerconfiguratie die kan worden gescand door mobiele apparaten voor eenvoudige installatie. De QR-code wordt weergegeven in de console en kan worden gebruikt om WireGuard-clients snel te configureren op smartphones en tablets. De functie werkt samen met de linuxserver/wireguard Docker-container om QR-codes te genereren voor peerconfiguraties.

## Syntax

```powershell
Get-WireGuardPeerQRCode -PeerName <String> [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-ServicePort <Int32>] [-TimeZone <String>] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | De naam van de peer om een QR-code voor te genereren |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-initialisatie overslaan (gebruikt wanneer al aangeroepen door bovenliggende functie) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | De naam voor de Docker-container |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | De naam voor de Docker-volume voor persistente opslag |
| `-ServicePort` | Int32 | — | — | Named | `51839` | The port number for the WireGuard service |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximale tijd in seconden om te wachten op de gezondheidscontrole van de service |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Interval in seconden tussen health check pogingen |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | Aangepaste Docker-afbeeldingsnaam om te gebruiken |
| `-PUID` | String | — | — | Named | `'1000'` | Gebruikers-ID voor machtigingen in de container |
| `-PGID` | String | — | — | Named | `'1000'` | Groep-ID voor machtigingen in de container |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | Tijdzone voor de container |

## Examples

### Get-WireGuardPeerQRCode -PeerName "MyPhone"

```powershell
Get-WireGuardPeerQRCode -PeerName "MyPhone"
```

### Get-WireGuardPeerQRCode -PeerName "Tablet" -NoDockerInitialize

```powershell
Get-WireGuardPeerQRCode -PeerName "Tablet" -NoDockerInitialize
```

## Related Links

- [Get-WireGuardPeerQRCode on GitHub](https://github.com/genXdev/genXdev)
