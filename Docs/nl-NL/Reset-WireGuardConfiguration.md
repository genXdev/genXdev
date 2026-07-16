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
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | De naam voor de Docker-container |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | De naam voor de Docker-volume voor persistente opslag |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | The port number for the WireGuard service |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximale tijd in seconden om te wachten op de gezondheidscontrole van de service |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Interval in seconden tussen health check pogingen |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Aangepaste Docker-afbeeldingsnaam om te gebruiken |
| `-PUID` | String | — | — | 6 | `'1000'` | Gebruikers-ID voor machtigingen in de container |
| `-PGID` | String | — | — | 7 | `'1000'` | Groep-ID voor machtigingen in de container |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Tijdzone voor de container |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker-initialisatie overslaan (gebruikt wanneer al aangeroepen door bovenliggende functie) |
| `-Force` | SwitchParameter | — | — | Named | — | Forceer reset zonder bevestiging |

## Related Links

- [Reset-WireGuardConfiguration on GitHub](https://github.com/genXdev/genXdev)
