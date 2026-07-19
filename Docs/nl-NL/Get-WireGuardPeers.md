# Get-WireGuardPeers

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Haalt informatie op over alle WireGuard VPN-peers die op het systeem zijn geconfigureerd.

## Description

Deze functie haalt uitgebreide informatie op over alle WireGuard VPN-peers die zijn geconfigureerd op de server die draait in een Docker-container. Het biedt gedetailleerde informatie, waarwerknamen, openbare sleutels, toegestane IP-adressen, verbindingseindpunten, handshakestatus, gegevensoverdrachtstatistieken en huidige verbindingsstatus. De functie kan samenwerken met bovenliggende functies of zelfstandig de initialisatie van Docker-containers beheren.

## Syntax

```powershell
Get-WireGuardPeers [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-initialisatie overslaan (gebruikt wanneer al aangeroepen door bovenliggende functie) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | De naam voor de Docker-container |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | De naam voor de Docker-volume voor persistente opslag |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | The port number for the WireGuard service |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximale tijd in seconden om te wachten op de gezondheidscontrole van de service |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Interval in seconden tussen health check pogingen |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Aangepaste Docker-afbeeldingsnaam om te gebruiken |
| `-PUID` | String | — | — | 6 | `'1000'` | Gebruikers-ID voor machtigingen in de container |
| `-PGID` | String | — | — | 7 | `'1000'` | Groep-ID voor machtigingen in de container |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Tijdzone voor de container |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Het Docker-venster weergeven bij het uitvoeren van WireGuard |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijder vensterranden voor het Docker-venster |
| `-Width` | Int32 | — | — | 9 | `-1` | Stel de breedte van het Docker-venster in |
| `-Height` | Int32 | — | — | 10 | `-1` | Stel de hoogte van het Docker-venster in |
| `-Left` | Int32 | — | — | 11 | — | Stel de linkerpositie van het Docker-venster in |
| `-Right` | Int32 | — | — | 12 | — | Stel de juiste positie van het Docker-venster in |
| `-Bottom` | Int32 | — | — | 13 | — | Stel de onderste positie van het Docker-venster in |
| `-Centered` | SwitchParameter | — | — | Named | — | Centreer het Docker-venster op het scherm |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Voer het Docker-venster uit in de modus Volledig scherm |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Focus herstellen op het vorige venster na het uitvoeren van Docker |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Toon Docker-venster naast andere vensters |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the Docker window after launching |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Stel het Docker-venster in als voorgrondvenster |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Druk op Escape-toets om naar het Docker-venster te sturen na het starten |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Toetsenbordfocus behouden in het Docker-venster na opstarten |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter when sending keys to Docker window |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Vertraging in milliseconden tussen het verzenden van toetsen naar het Docker-venster |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik sessie alleen voor Docker-venster |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Sessie voor Docker-venster wissen voordat u uitvoert |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Sessie overslaan voor Docker-venster |

## Examples

### Get-WireGuardPeers

```powershell
Get-WireGuardPeers
```

### Get-WireGuardPeers -NoDockerInitialize -ContainerName "custom_wireguard" `                    -ServicePort 55555

```powershell
Get-WireGuardPeers -NoDockerInitialize -ContainerName "custom_wireguard" `
                   -ServicePort 55555
```

## Related Links

- [Get-WireGuardPeers on GitHub](https://github.com/genXdev/genXdev)
