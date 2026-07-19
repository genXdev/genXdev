# Get-WireGuardPeerQRCode

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> wireguard://peer_config_placeholder

## Description

Esta función genera un código QR para la configuración de un par WireGuard VPN que puede ser escaneado por dispositivos móviles para una configuración fácil. El código QR se muestra en la consola y se puede usar para configurar rápidamente clientes WireGuard en teléfonos inteligentes y tabletas. La función interactúa con el contenedor Docker linuxserver/wireguard para generar códigos QR para configuraciones de pares.

## Syntax

```powershell
Get-WireGuardPeerQRCode -PeerName <String> [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-ServicePort <Int32>] [-TimeZone <String>] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | El nombre del par para generar un código QR |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Omitir inicialización de Docker (se usa cuando ya fue llamada por una función padre) |
| `-Force` | SwitchParameter | — | — | Named | — | Forzar reconstrucción del contenedor Docker y eliminar datos existentes |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | El nombre del contenedor Docker |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | El nombre del volumen Docker para almacenamiento persistente |
| `-ServicePort` | Int32 | — | — | Named | `51839` | El número de puerto para el servicio WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervalo en segundos entre intentos de verificación de estado |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | Nombre personalizado de la imagen Docker a utilizar |
| `-PUID` | String | — | — | Named | `'1000'` | ID de usuario para permisos en el contenedor |
| `-PGID` | String | — | — | Named | `'1000'` | ID de grupo para permisos en el contenedor |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | Zona horaria a utilizar para el contenedor |

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
