# Add-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-WireGuardPeer -PeerName <String> [[-AllowedIPs] <String>] [[-DNS] <String>] [[-OutputPath] <String>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left <Int32>] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-Right <Int32>] [-SaveConfig] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowQRCode] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | Een unieke naam voor de peer |
| `-AllowedIPs` | String | — | — | 1 | `'0.0.0.0/0, ::/0'` | De IP-reeksen die via de VPN worden gerouteerd |
| `-DNS` | String | — | — | 2 | `'1.1.1.1, 1.0.0.1'` | DNS-servers voor deze peer |
| `-OutputPath` | String | — | — | 3 | `"$env:USERPROFILE\WireGuardConfigs"` | Het pad waar het peer configuratiebestand moet worden opgeslagen |
| `-ContainerName` | String | — | — | 4 | `'wireguard'` | De naam voor de Docker-container |
| `-VolumeName` | String | — | — | 5 | `'wireguard_data'` | De naam voor de Docker-volume voor persistente opslag |
| `-ServicePort` | Int32 | — | — | 6 | `51839` | The port number for the WireGuard service |
| `-HealthCheckTimeout` | Int32 | — | — | 7 | `60` | Maximale tijd in seconden om te wachten op de gezondheidscontrole van de service |
| `-HealthCheckInterval` | Int32 | — | — | 8 | `3` | Interval in seconden tussen health check pogingen |
| `-ImageName` | String | — | — | 9 | `'linuxserver/wireguard'` | Aangepaste Docker-afbeeldingsnaam om te gebruiken |
| `-PUID` | String | — | — | 10 | `'1000'` | Gebruikers-ID voor machtigingen in de container |
| `-PGID` | String | — | — | 11 | `'1000'` | Groep-ID voor machtigingen in de container |
| `-TimeZone` | String | — | — | 12 | `'Etc/UTC'` | Tijdzone voor de container |
| `-SaveConfig` | SwitchParameter | — | — | Named | — | Sla de peerconfiguratie op in een bestand |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Toon het WireGuard-venster bij het initialiseren van de service |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijder vensterranden bij het initialiseren van de service |
| `-Width` | Int32 | — | — | Named | `-1` | Stel de vensterbreedte in bij het initialiseren van de service |
| `-Height` | Int32 | — | — | Named | `-1` | Stel de vensterhoogte in bij het initialiseren van de service |
| `-Left` | Int32 | — | — | Named | — | Stel de linkerpositie van het venster in bij het initialiseren van de service |
| `-Right` | Int32 | — | — | Named | — | Stel de juiste vensterpositie in bij het initialiseren van de service |
| `-Bottom` | Int32 | — | — | Named | — | Stel de onderste positie van het venster in bij het initialiseren van de service |
| `-Centered` | SwitchParameter | — | — | Named | — | Centreer het venster bij het initialiseren van de dienst |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Star de service in volledige schermmodus |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Herstel de focus op het venster na het initialiseren van de service |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Toon het venster naast elkaar bij het initialiseren van de service |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the window after initializing the service |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Het venster naar de voorgrond brengen na het initialiseren van de service |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Stuur Escape-toets naar het venster na het initialiseren van de service |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Behoud toetsenbordfocus bij het verzenden van toetsen na het initialiseren van de service |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter when sending keys after initializing the service |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging in milliseconden bij het verzenden van toetsen na het initialiseren van de dienst |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik sessie alleen voor de WireGuard-service |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis de sessie bij het initialiseren van de service |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Sessie overslaan bij initialisatie van de service |
| `-ShowQRCode` | SwitchParameter | — | — | Named | — | Genereren van QR-code voor eenvoudige mobiele setup |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-initialisatie overslaan (gebruikt wanneer al aangeroepen door bovenliggende functie) |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuild of Docker container and remove existing data |

## Related Links

- [Add-WireGuardPeer on GitHub](https://github.com/genXdev/genXdev)
