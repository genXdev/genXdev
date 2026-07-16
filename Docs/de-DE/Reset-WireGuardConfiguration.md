# Reset-WireGuardConfiguration

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Reset-WireGuardConfiguration [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Force] [-NoDockerInitialize] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Der Name für den Docker-Container |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | Der Name für das Docker-Volume für persistenten Speicher |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | Die Portnummer für den WireGuard-Dienst |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximale Zeit in Sekunden für die Überprüfung des Dienststatus |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervall in Sekunden zwischen den Gesundheitsüberprüfungen |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Benutzerdefinierter Docker-Image-Name zur Verwendung |
| `-PUID` | String | — | — | 6 | `'1000'` | Benutzer-ID für Berechtigungen im Container |
| `-PGID` | String | — | — | 7 | `'1000'` | Gruppen-ID für Berechtigungen im Container |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Zeitzone für den Container |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-Initialisierung überspringen (wird verwendet, wenn bereits von der übergeordneten Funktion aufgerufen) |
| `-Force` | SwitchParameter | — | — | Named | — | Zurücksetzen erzwingen ohne Bestätigung |

## Related Links

- [Reset-WireGuardConfiguration on GitHub](https://github.com/genXdev/genXdev)
