# Reset-WireGuardConfiguration

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Setzt die WireGuard VPN-Serverkonfiguration zurück und entfernt alle Peers.

## Description

Diese Funktion setzt die WireGuard-VPN-Serverkonfiguration zurück, die in einem Docker-Container läuft, indem sie alle Peers entfernt und eine frische Serverkonfiguration generiert. Dies ist ein zerstörerischer Vorgang, der nicht rückgängig gemacht werden kann und dauerhaft alle Peer-Konfigurationen entfernt. Die Funktion stoppt den WireGuard-Dienst, entfernt alle Peer-Verzeichnisse und Konfigurationsdateien, entfernt Server-Schlüssel, startet den Container neu und überprüft, ob eine neue Konfiguration generiert wird.

## Syntax

```powershell
Reset-WireGuardConfiguration [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Force] [-NoDockerInitialize] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Der Name für den Docker-Container |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | Der Name für das Docker-Volume für dauerhaften Speicher |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | Die Portnummer für den WireGuard-Dienst |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximale Zeit in Sekunden, die auf die Dienststatusüberprüfung gewartet wird |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervall in Sekunden zwischen den Integritätsprüfungen |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Benutzerdefinierter Docker-Image-Name zur Verwendung |
| `-PUID` | String | — | — | 6 | `'1000'` | Benutzer-ID für Berechtigungen im Container |
| `-PGID` | String | — | — | 7 | `'1000'` | Gruppen-ID für Berechtigungen im Container |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Für den Container zu verwendende Zeitzone |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-Initialisierung überspringen (verwendet, wenn bereits von einer übergeordneten Funktion aufgerufen) |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwungener Reset ohne Bestätigung |

## Examples

### Reset-WireGuardConfiguration

```powershell
Reset-WireGuardConfiguration
```

Setzt die WireGuard-Konfiguration auf die Standardeinstellungen zurück und fordert vor dem Fortfahren zur Bestätigung auf.

### Reset-WireGuardConfiguration -Force -ContainerName "my-wireguard"

```powershell
Reset-WireGuardConfiguration -Force -ContainerName "my-wireguard"
```

Setzt die WireGuard-Konfiguration für einen benutzerdefinierten Containernamen ohne Bestätigungsaufforderungen zurück.

## Parameter Details

### `-ContainerName <String>`

> Der Name für den Docker-Container

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
| **Position?** | 1 |
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
| **Position?** | 2 |
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
| **Position?** | 3 |
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
| **Position?** | 4 |
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
| **Position?** | 5 |
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
| **Position?** | 6 |
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
| **Position?** | 7 |
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
| **Position?** | 8 |
| **Default value** | `'Etc/UTC'` |
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

> Erzwungener Reset ohne Bestätigung

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/de-DE/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WireGuardPeers.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-WireGuardPeer.md)
