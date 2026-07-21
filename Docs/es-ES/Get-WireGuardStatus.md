# Get-WireGuardStatus

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Obtiene información detallada del estado del servidor VPN WireGuard.

## Description

Esta función recupera información detallada del estado del servidor VPN WireGuard que se ejecuta en un contenedor Docker, incluyendo detalles de la interfaz, puerto de escucha, pares conectados y estado del servidor. Proporciona información completa sobre el servicio WireGuard, incluyendo el estado del servidor, número de pares, tiempo de actividad y detalles de configuración de red.

## Syntax

```powershell
Get-WireGuardStatus [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Omitir la inicialización de Docker (se usa cuando ya la ha llamado la función principal) |
| `-Force` | SwitchParameter | — | — | Named | — | Reconstrucción forzada del contenedor Docker y eliminación de datos existentes |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | El nombre del contenedor Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | El nombre del volumen de Docker para almacenamiento persistente |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | El número de puerto para el servicio WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Tiempo máximo en segundos para esperar la comprobación de estado del servicio |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervalo en segundos entre intentos de verificación de estado |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Nombre personalizado de la imagen Docker a utilizar |
| `-PUID` | String | — | — | 6 | `'1000'` | ID de usuario para permisos en el contenedor |
| `-PGID` | String | — | — | 7 | `'1000'` | Id de grupo para los permisos en el contenedor |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Zona horaria que se usará para el contenedor |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar la ventana al ejecutar el contenedor (pass-through) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Eliminar bordes de ventana (paso a través) |
| `-Width` | Int32 | — | — | 9 | `-1` | Ancho de ventana en caracteres o píxeles (paso directo) |
| `-Height` | Int32 | — | — | 10 | `-1` | Altura de la ventana en caracteres o píxeles (paso directo) |
| `-Left` | Int32 | — | — | 11 | — | Posición izquierda de la ventana (paso directo) |
| `-Right` | Int32 | — | — | 12 | — | Posición derecha de la ventana (paso directo) |
| `-Bottom` | Int32 | — | — | 13 | — | Posición inferior de la ventana (paso directo) |
| `-Centered` | SwitchParameter | — | — | Named | — | Centrar la ventana (paso a través) |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Abrir ventana en modo de pantalla completa (pass-through) |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar el foco en la ventana después de la operación (paso directo) |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Mostrar ventana lado a lado (paso directo) |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana después de abrir (pasar a través) |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Traer ventana al primer plano (pasar a través) |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Enviar tecla Escape a la ventana (pasar) |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantener el foco del teclado al enviar teclas (pass-through) |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Usa Shift+Enter al enviar teclas (paso a través) |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Retraso en milisegundos entre el envío de teclas (paso directo) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Modo solo de sesión (paso directo) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Borrar datos de sesión (pass-through) |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Omitir la inicialización de sesión (transferencia directa) |

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

## Parameter Details

### `-NoDockerInitialize`

> Omitir la inicialización de Docker (se usa cuando ya la ha llamado la función principal)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Reconstrucción forzada del contenedor Docker y eliminación de datos existentes

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ForceRebuild` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> El nombre del contenedor Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VolumeName <String>`

> El nombre del volumen de Docker para almacenamiento persistente

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'wireguard_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> El número de puerto para el servicio WireGuard

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `51839` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckTimeout <Int32>`

> Tiempo máximo en segundos para esperar la comprobación de estado del servicio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `60` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckInterval <Int32>`

> Intervalo en segundos entre intentos de verificación de estado

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageName <String>`

> Nombre personalizado de la imagen Docker a utilizar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | `'linuxserver/wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PUID <String>`

> ID de usuario para permisos en el contenedor

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PGID <String>`

> Id de grupo para los permisos en el contenedor

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 7 |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeZone <String>`

> Zona horaria que se usará para el contenedor

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 8 |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Mostrar la ventana al ejecutar el contenedor (pass-through)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Eliminar bordes de ventana (paso a través)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Ancho de ventana en caracteres o píxeles (paso directo)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 9 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Altura de la ventana en caracteres o píxeles (paso directo)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 10 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> Posición izquierda de la ventana (paso directo)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 11 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right <Int32>`

> Posición derecha de la ventana (paso directo)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 12 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom <Int32>`

> Posición inferior de la ventana (paso directo)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 13 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Centrar la ventana (paso a través)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Fullscreen`

> Abrir ventana en modo de pantalla completa (pass-through)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Restaurar el foco en la ventana después de la operación (paso directo)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Mostrar ventana lado a lado (paso directo)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Enfocar la ventana después de abrir (pasar a través)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> Traer ventana al primer plano (pasar a través)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Enviar tecla Escape a la ventana (pasar)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Mantener el foco del teclado al enviar teclas (pass-through)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Usa Shift+Enter al enviar teclas (paso a través)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Retraso en milisegundos entre el envío de teclas (paso directo)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 14 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Modo solo de sesión (paso directo)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Borrar datos de sesión (pass-through)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Omitir la inicialización de sesión (transferencia directa)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-WireGuardPeers.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Reset-WireGuardConfiguration.md)
