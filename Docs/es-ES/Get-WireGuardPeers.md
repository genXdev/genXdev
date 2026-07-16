# Get-WireGuardPeers

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WireGuardPeers [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
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
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar la ventana de Docker al ejecutar WireGuard |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove window borders for the Docker window |
| `-Width` | Int32 | — | — | 9 | `-1` | Establecer el ancho de la ventana de Docker |
| `-Height` | Int32 | — | — | 10 | `-1` | Establecer la altura de la ventana de Docker |
| `-Left` | Int32 | — | — | 11 | — | Establecer la posición izquierda de la ventana de Docker |
| `-Right` | Int32 | — | — | 12 | — | Establecer la posición derecha de la ventana de Docker |
| `-Bottom` | Int32 | — | — | 13 | — | Establecer la posición inferior de la ventana de Docker |
| `-Centered` | SwitchParameter | — | — | Named | — | Centerar la ventana de Docker en la pantalla |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Ejecuta la ventana de Docker en modo pantalla completa |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar el foco en la ventana anterior después de ejecutar Docker |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Mostrar la ventana de Docker en paralelo con otras ventanas |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana de Docker después de iniciar |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the Docker window as foreground window |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Enviar tecla Escape a la ventana de Docker después del inicio |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantener el foco del teclado en la ventana de Docker después de iniciar |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter when sending keys to Docker window |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Retraso en milisegundos entre el envío de teclas a la ventana de Docker |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usa la sesión solo para la ventana de Docker |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpiar la sesión de la ventana de Docker antes de ejecutar |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Omitir sesión para la ventana de Docker |

## Related Links

- [Get-WireGuardPeers on GitHub](https://github.com/genXdev/genXdev)
