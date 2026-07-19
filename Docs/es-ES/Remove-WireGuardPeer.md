# Remove-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Elimina una configuración de par WireGuard VPN.

## Description

Esta función elimina una configuración de par WireGuard VPN del servidor que se ejecuta en un contenedor Docker. Borra los archivos de configuración del par y actualiza el servidor WireGuard para que deje de aceptar conexiones de este par. La función valida la existencia del par antes de la eliminación y proporciona mensajes de confirmación a menos que se especifique el parámetro Force.

## Syntax

```powershell
Remove-WireGuardPeer -PeerName <String> [-Bottom] [-Centered] [-ClearSession] [-ContainerName <String>] [-FocusWindow] [-Force] [-Fullscreen] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-Height <Int32>] [-ImageName <String>] [-Left] [-NoBorders] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-ServicePort <Int32>] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-TimeZone <String>] [-VolumeName <String>] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | El nombre del par a eliminar |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | El nombre del contenedor Docker |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | El nombre del volumen Docker para almacenamiento persistente |
| `-ServicePort` | Int32 | — | — | Named | `51839` | El número de puerto para el servicio WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervalo en segundos entre intentos de verificación de estado |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | Nombre personalizado de la imagen Docker a utilizar |
| `-PUID` | String | — | — | Named | `'1000'` | ID de usuario para permisos en el contenedor |
| `-PGID` | String | — | — | Named | `'1000'` | ID de grupo para permisos en el contenedor |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | Zona horaria a utilizar para el contenedor |
| `-Force` | SwitchParameter | — | — | Named | — | Eliminación forzosa sin confirmación |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Omitir inicialización de Docker cuando es llamado por la función padre |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar la ventana de Docker Desktop durante la inicialización |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Elimina los bordes de la ventana |
| `-Width` | Int32 | — | — | Named | `-1` | El ancho inicial de la ventana |
| `-Height` | Int32 | — | — | Named | `-1` | La altura inicial de la ventana |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | Colocar ventana en la parte inferior de la pantalla |
| `-Centered` | SwitchParameter | — | — | Named | — | Place window in the center of the screen |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximizar la ventana |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar el foco de la ventana de PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Either will set the window fullscreen on a different monitor than Powershell, or side by side with Powershell on the same monitor |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana después de abrir |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Traer la ventana al primer plano después de abrir |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escapar los caracteres de control y modificadores al enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantener el foco del teclado en la ventana objetivo al enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Retardo entre diferentes cadenas de entrada en milisegundos al enviar teclas |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### Remove-WireGuardPeer -PeerName "MyPhone"

```powershell
Remove-WireGuardPeer -PeerName "MyPhone"
```

Elimina el peer llamado "MyPhone" con indicación de confirmación.

### Remove-WireGuardPeer -PeerName "Tablet" -Force

```powershell
Remove-WireGuardPeer -PeerName "Tablet" -Force
```

Elimina el peer llamado "Tablet" sin solicitud de confirmación.

### Remove-WireGuardPeer "WorkLaptop"

```powershell
Remove-WireGuardPeer "WorkLaptop"
```

Elimina el par usando la sintaxis de parámetros posicionales.

## Related Links

- [Remove-WireGuardPeer on GitHub](https://github.com/genXdev/genXdev)
