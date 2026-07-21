# Get-WireGuardPeerQRCode

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Generiert einen QR-Code für eine WireGuard-VPN-Peer-Konfiguration.

## Description

Diese Funktion generiert einen QR-Code für eine WireGuard-VPN-Peer-Konfiguration, der von mobilen Geräten zum einfachen Einrichten gescannt werden kann. Der QR-Code wird in der Konsole angezeigt und kann verwendet werden, um WireGuard-Clients auf Smartphones und Tablets schnell zu konfigurieren. Die Funktion interagiert mit dem linuxserver/wireguard Docker-Container, um QR-Codes für Peer-Konfigurationen zu generieren.

## Syntax

```powershell
Get-WireGuardPeerQRCode -PeerName <String> [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-ServicePort <Int32>] [-TimeZone <String>] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | Der Name des Peers, für den ein QR-Code generiert werden soll |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-Initialisierung überspringen (verwendet, wenn bereits von einer übergeordneten Funktion aufgerufen) |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwingen Sie den Neubau des Docker-Containers und entfernen Sie vorhandene Daten |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | Der Name für den Docker-Container |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | Der Name für das Docker-Volume für dauerhaften Speicher |
| `-ServicePort` | Int32 | — | — | Named | `51839` | Die Portnummer für den WireGuard-Dienst |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximale Zeit in Sekunden, die auf die Dienststatusüberprüfung gewartet wird |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervall in Sekunden zwischen den Integritätsprüfungen |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | Benutzerdefinierter Docker-Image-Name zur Verwendung |
| `-PUID` | String | — | — | Named | `'1000'` | Benutzer-ID für Berechtigungen im Container |
| `-PGID` | String | — | — | Named | `'1000'` | Gruppen-ID für Berechtigungen im Container |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | Für den Container zu verwendende Zeitzone |

## Examples

### Get-WireGuardPeerQRCode -PeerName "MyPhone"

```powershell
Get-WireGuardPeerQRCode -PeerName "MyPhone"
```

### Get-WireGuardPeerQRCode -PeerName "Tablet" -NoDockerInitialize

```powershell
Get-WireGuardPeerQRCode -PeerName "Tablet" -NoDockerInitialize
```

## Parameter Details

### `-PeerName <String>`

> Der Name des Peers, für den ein QR-Code generiert werden soll

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> Docker-Initialisierung überspringen (verwendet, wenn bereits von einer übergeordneten Funktion aufgerufen)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Erzwingen Sie den Neubau des Docker-Containers und entfernen Sie vorhandene Daten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ForceRebuild` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Der Name für den Docker-Container

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VolumeName <String>`

> Der Name für das Docker-Volume für dauerhaften Speicher

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'wireguard_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> Die Portnummer für den WireGuard-Dienst

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `51839` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckTimeout <Int32>`

> Maximale Zeit in Sekunden, die auf die Dienststatusüberprüfung gewartet wird

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `60` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckInterval <Int32>`

> Intervall in Sekunden zwischen den Integritätsprüfungen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageName <String>`

> Benutzerdefinierter Docker-Image-Name zur Verwendung

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'linuxserver/wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PUID <String>`

> Benutzer-ID für Berechtigungen im Container

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PGID <String>`

> Gruppen-ID für Berechtigungen im Container

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeZone <String>`

> Für den Container zu verwendende Zeitzone

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/de-DE/EnsureWireGuard.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WireGuardPeers.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/de-DE/Reset-WireGuardConfiguration.md)
