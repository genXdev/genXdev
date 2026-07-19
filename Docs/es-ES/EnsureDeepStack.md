# EnsureDeepStack

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Asegura que el servicio de reconocimiento facial DeepStack esté instalado y en ejecución.

## Description

Esta función configura y gestiona el servicio de reconocimiento facial de DeepStack utilizando Docker. Asegura que Docker Desktop esté instalado, extrae la imagen Docker de DeepStack y ejecuta el servicio en un contenedor con almacenamiento persistente para las caras registradas.

DeepStack proporciona una API REST simple para detección, registro y reconocimiento facial que está bien documentada y mantenida activamente.

## Syntax

```powershell
EnsureDeepStack [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left] [-Monitor <Int32>] [-NoBorders] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-UseGPU] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | El nombre del contenedor Docker |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | El nombre del volumen Docker para almacenamiento persistente |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | El número de puerto para el servicio DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Maximum time in seconds to wait for service health check |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervalo en segundos entre intentos de verificación de estado |
| `-ImageName` | String | — | — | 5 | — | Nombre personalizado de la imagen Docker a utilizar |
| `-Force` | SwitchParameter | — | — | Named | — | Forzar reconstrucción del contenedor Docker y eliminar datos existentes |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use GPU-accelerated version (requires NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar la ventana de Docker Desktop durante la inicialización |
| `-Monitor` | Int32 | — | — | Named | `-2` | El monitor a usar, 0 = predeterminado, -1 es descartar |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Elimina los bordes de la ventana |
| `-Width` | Int32 | — | — | Named | — | El ancho inicial de la ventana |
| `-Height` | Int32 | — | — | Named | — | La altura inicial de la ventana |
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

### EnsureDeepStack -ContainerName "deepstack_face_recognition" `                 -VolumeName "deepstack_face_data" `                 -ServicePort 5000 `                 -HealthCheckTimeout 60 `                 -HealthCheckInterval 3

```powershell
EnsureDeepStack -ContainerName "deepstack_face_recognition" `
                -VolumeName "deepstack_face_data" `
                -ServicePort 5000 `
                -HealthCheckTimeout 60 `
                -HealthCheckInterval 3
```

### EnsureDeepStack -Force -UseGPU

```powershell
EnsureDeepStack -Force -UseGPU
```

## Outputs

- `Boolean`

## Related Links

- [EnsureDeepStack on GitHub](https://github.com/genXdev/genXdev)
