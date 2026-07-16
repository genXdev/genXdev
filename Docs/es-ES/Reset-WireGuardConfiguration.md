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
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | El nombre del contenedor Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | El nombre del volumen Docker para almacenamiento persistente |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | El número de puerto para el servicio WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervalo en segundos entre intentos de verificación de estado |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Nombre personalizado de la imagen Docker a utilizar |
| `-PUID` | String | — | — | 6 | `'1000'` | ID de usuario para permisos en el contenedor |
| `-PGID` | String | — | — | 7 | `'1000'` | ID de grupo para permisos en el contenedor |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Zona horaria a utilizar para el contenedor |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Omitir inicialización de Docker (se usa cuando ya fue llamada por una función padre) |
| `-Force` | SwitchParameter | — | — | Named | — | Forzar reinicio sin confirmación |

## Related Links

- [Reset-WireGuardConfiguration on GitHub](https://github.com/genXdev/genXdev)
