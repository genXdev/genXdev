# EnsureDockerDesktop

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Asegura que Docker Desktop esté instalado y disponible para operaciones de contenedorización.

## Description

Verifica si Docker Desktop está instalado y configurado correctamente en el sistema.
Si no se encuentra, instala Docker Desktop usando WinGet y maneja el proceso completo
 de instalación automáticamente. Esta función también gestiona el inicio del servicio
 de Docker Desktop, la verificación de la disponibilidad del daemon y maneja los
 requisitos de autenticación cuando es necesario. La función incluye una gestión
 completa de rutas tanto para instalaciones de Docker a nivel de sistema como de usuario.

## Syntax

```powershell
EnsureDockerDesktop [[-Monitor] <Int32>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [[-KeysToSend] <String[]>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Left] [-NoBorders] [-NoDockerInitialization] [-RestoreFocus] [-Right] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar la ventana de Docker Desktop durante la inicialización |
| `-Monitor` | Int32 | — | — | 0 | `-1` | El monitor a usar, 0 = predeterminado, -1 es descartar |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Elimina los bordes de la ventana |
| `-Force` | SwitchParameter | — | — | Named | — | Forces a docker desktop restart |
| `-Width` | Int32 | — | — | 1 | — | El ancho inicial de la ventana |
| `-Height` | Int32 | — | — | 2 | — | La altura inicial de la ventana |
| `-X` | Int32 | — | — | 3 | — | La posición inicial X de la ventana |
| `-Y` | Int32 | — | — | 4 | — | La posición inicial Y de la ventana |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Coloca la ventana en la parte superior de la pantalla. |
| `-Bottom` | SwitchParameter | — | — | Named | — | Colocar ventana en la parte inferior de la pantalla |
| `-Centered` | SwitchParameter | — | — | Named | — | Place window in the center of the screen |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximizar la ventana |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar el foco de la ventana de PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Either will set the window fullscreen on a different monitor than Powershell, or side by side with Powershell on the same monitor |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana después de abrir |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Traer la ventana al primer plano después de abrir |
| `-KeysToSend` | String[] | — | — | 5 | — | Pulsaciones de teclas para enviar a la ventana, consulte la documentación del cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escapar los caracteres de control y modificadores al enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantener el foco del teclado en la ventana objetivo al enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 6 | — | Retardo entre diferentes cadenas de entrada en milisegundos al enviar teclas |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-NoDockerInitialization` | SwitchParameter | — | — | Named | — | Omitir la inicialización de Docker y regresar inmediatamente |

## Examples

### EnsureDockerDesktop

```powershell
EnsureDockerDesktop
```

### EnsureDockerDesktop -ShowWindow -Centered -NoBorders

```powershell
EnsureDockerDesktop -ShowWindow -Centered -NoBorders
```

### EnsureDockerDesktop -ShowWindow -Monitor 1 -Left -Width 800 -Height 600

```powershell
EnsureDockerDesktop -ShowWindow -Monitor 1 -Left -Width 800 -Height 600
```

## Related Links

- [EnsureDockerDesktop on GitHub](https://github.com/genXdev/genXdev)
