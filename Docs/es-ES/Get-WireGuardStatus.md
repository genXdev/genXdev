# Get-WireGuardStatus

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Obtiene información detallada del estado del servidor VPN WireGuard.

## Description

Esta función recupera información detallada sobre el estado del servidor VPN WireGuard que se ejecuta en un contenedor Docker, incluidos detalles de la interfaz, puerto de escucha, pares conectados y estado del servidor. Proporciona información completa sobre el servicio WireGuard, incluyendo el estado del servidor, el número de pares, el tiempo de actividad y los detalles de configuración de la red.

## Syntax

```powershell
Get-WireGuardStatus [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Omitir inicialización de Docker (se usa cuando ya fue llamada por una función padre) |
| `-Force` | SwitchParameter | — | — | Named | — | Forzar reconstrucción del contenedor Docker y eliminar datos existentes |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | El nombre del contenedor Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | El nombre del volumen Docker para almacenamiento persistente |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | El número de puerto para el servicio WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervalo en segundos entre intentos de verificación de estado |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Nombre personalizado de la imagen Docker a utilizar |
| `-PUID` | String | — | — | 6 | `'1000'` | ID de usuario para permisos en el contenedor |
| `-PGID` | String | — | — | 7 | `'1000'` | ID de grupo para permisos en el contenedor |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Zona horaria a utilizar para el contenedor |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar la ventana al ejecutar el contenedor (paso a través) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Eliminar bordes de ventana (transparencia) |
| `-Width` | Int32 | — | — | 9 | `-1` | Ancho de la ventana en caracteres o píxeles (paso directo) |
| `-Height` | Int32 | — | — | 10 | `-1` | Altura de la ventana en caracteres o píxeles (transparente) |
| `-Left` | Int32 | — | — | 11 | — | Posición izquierda de la ventana (transparente) |
| `-Right` | Int32 | — | — | 12 | — | Posición derecha de la ventana (paso directo) |
| `-Bottom` | Int32 | — | — | 13 | — | Posición inferior de la ventana (paso directo) |
| `-Centered` | SwitchParameter | — | — | Named | — | Centrar la ventana (paso directo) |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Abrir ventana en modo pantalla completa (paso a través) |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar el foco en la ventana después de la operación (pasar a través) |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Mostrar ventana lado a lado (paso directo) |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana después de abrir (paso directo) |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Poner ventana en primer plano (paso directo) |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Enviar tecla Escape a la ventana (pasar a través) |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantener el foco del teclado al enviar teclas (paso) |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter when sending keys (pass-through) |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Retardo en milisegundos entre el envío de teclas (paso directo) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Solo modo de sesión (pasar a través) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpiar datos de sesión (paso directo) |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Omitir inicialización de sesión (paso directo) |

## Examples

### Get-WireGuardStatus

```powershell
Get-WireGuardStatus
```

Devuelve el estado del servidor WireGuard con la configuración predeterminada.

### Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"

```powershell
Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"
```

Recupera el estado de un contenedor personalizado sin inicializar Docker.

## Related Links

- [Get-WireGuardStatus on GitHub](https://github.com/genXdev/genXdev)
