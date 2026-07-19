# Add-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Agrega una nueva configuración de par (cliente) WireGuard VPN al servidor.

## Description

Esta función añade un nuevo peer al servidor VPN WireGuard que se ejecuta en un contenedor Docker. Genera una nueva configuración de cliente con una dirección IP única, crea las claves criptográficas necesarias y devuelve los detalles de configuración. La función puede guardar opcionalmente la configuración en un archivo o generar un código QR para facilitar la configuración en dispositivos móviles. La función valida los nombres de los peers, comprueba duplicados y maneja diversas condiciones de error de forma elegante.

## Syntax

```powershell
Add-WireGuardPeer -PeerName <String> [[-AllowedIPs] <String>] [[-DNS] <String>] [[-OutputPath] <String>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left <Int32>] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-Right <Int32>] [-SaveConfig] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowQRCode] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | Un nombre único para el par |
| `-AllowedIPs` | String | — | — | 1 | `'0.0.0.0/0, ::/0'` | Los rangos de IP que se enrutarán a través de la VPN |
| `-DNS` | String | — | — | 2 | `'1.1.1.1, 1.0.0.1'` | Servidores DNS a utilizar para este par |
| `-OutputPath` | String | — | — | 3 | `"$env:USERPROFILE\WireGuardConfigs"` | La ruta donde se debe guardar el archivo de configuración del peer |
| `-ContainerName` | String | — | — | 4 | `'wireguard'` | El nombre del contenedor Docker |
| `-VolumeName` | String | — | — | 5 | `'wireguard_data'` | El nombre del volumen Docker para almacenamiento persistente |
| `-ServicePort` | Int32 | — | — | 6 | `51839` | El número de puerto para el servicio WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 7 | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | 8 | `3` | Intervalo en segundos entre intentos de verificación de estado |
| `-ImageName` | String | — | — | 9 | `'linuxserver/wireguard'` | Nombre personalizado de la imagen Docker a utilizar |
| `-PUID` | String | — | — | 10 | `'1000'` | ID de usuario para permisos en el contenedor |
| `-PGID` | String | — | — | 11 | `'1000'` | ID de grupo para permisos en el contenedor |
| `-TimeZone` | String | — | — | 12 | `'Etc/UTC'` | Zona horaria a utilizar para el contenedor |
| `-SaveConfig` | SwitchParameter | — | — | Named | — | Save the peer configuration to a file |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Muestra la ventana de WireGuard al inicializar el servicio |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Eliminar los bordes de las ventanas al inicializar el servicio |
| `-Width` | Int32 | — | — | Named | `-1` | Establecer el ancho de la ventana al inicializar el servicio |
| `-Height` | Int32 | — | — | Named | `-1` | Establecer la altura de la ventana al inicializar el servicio |
| `-Left` | Int32 | — | — | Named | — | Especificar la posición izquierda de la ventana al inicializar el servicio |
| `-Right` | Int32 | — | — | Named | — | Establece la posición correcta de la ventana al inicializar el servicio |
| `-Bottom` | Int32 | — | — | Named | — | Establecer la posición inferior de la ventana al inicializar el servicio |
| `-Centered` | SwitchParameter | — | — | Named | — | Centrar la ventana al inicializar el servicio |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Inicie el servicio en modo de pantalla completa |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restablecer el foco en la ventana después de inicializar el servicio |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Muestra la ventana en paralelo al inicializar el servicio |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana después de inicializar el servicio |
| `-SetForeground` | SwitchParameter | — | — | Named | — | After initializing the service, set the window to foreground. |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Send Escape key to the window after initializing the service |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantener el foco del teclado al enviar teclas después de inicializar el servicio |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utilice Mayús+Enter al enviar teclas después de inicializar el servicio |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Retraso en milisegundos al enviar teclas después de inicializar el servicio |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use session only for the WireGuard service |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Borrar sesión al inicializar el servicio |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Omitir sesión al inicializar el servicio |
| `-ShowQRCode` | SwitchParameter | — | — | Named | — | https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=URL |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Omitir inicialización de Docker (se usa cuando ya fue llamada por una función padre) |
| `-Force` | SwitchParameter | — | — | Named | — | Forzar reconstrucción del contenedor Docker y eliminar datos existentes |

## Examples

### Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `     -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `     "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `     -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `     -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `     -PGID "1000" -TimeZone "Etc/UTC"

```powershell
Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `
    -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `
    "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `
    -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `
    -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `
    -PGID "1000" -TimeZone "Etc/UTC"
```

### Add-WireGuardPeer "MyTablet" -ShowQRCode

```powershell
Add-WireGuardPeer "MyTablet" -ShowQRCode
```

## Related Links

- [Add-WireGuardPeer on GitHub](https://github.com/genXdev/genXdev)
