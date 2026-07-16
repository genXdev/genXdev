# Get-WireGuardPeerQRCode

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WireGuardPeerQRCode -PeerName <String> [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-ServicePort <Int32>] [-TimeZone <String>] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | The name of the peer to generate a QR code for |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-Initialisierung überspringen (wird verwendet, wenn bereits von der übergeordneten Funktion aufgerufen) |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwungener Neubau des Docker-Containers und Entfernung vorhandener Daten |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | Der Name für den Docker-Container |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | Der Name für das Docker-Volume für persistenten Speicher |
| `-ServicePort` | Int32 | — | — | Named | `51839` | Die Portnummer für den WireGuard-Dienst |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximale Zeit in Sekunden für die Überprüfung des Dienststatus |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervall in Sekunden zwischen den Gesundheitsüberprüfungen |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | Benutzerdefinierter Docker-Image-Name zur Verwendung |
| `-PUID` | String | — | — | Named | `'1000'` | Benutzer-ID für Berechtigungen im Container |
| `-PGID` | String | — | — | Named | `'1000'` | Gruppen-ID für Berechtigungen im Container |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | Zeitzone für den Container |

## Related Links

- [Get-WireGuardPeerQRCode on GitHub](https://github.com/genXdev/genXdev)
