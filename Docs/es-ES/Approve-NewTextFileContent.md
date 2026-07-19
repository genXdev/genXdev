# Approve-NewTextFileContent

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Comparación y aprobación interactiva de contenido de archivos mediante WinMerge.

## Description

Facilita la comparación y fusión de contenido mediante WinMerge creando un archivo temporal con los cambios propuestos. El usuario puede revisar y modificar los cambios de forma interactiva antes de aprobarlos. Devuelve el estado de aprobación y el contenido final.

## Syntax

```powershell
Approve-NewTextFileContent -ContentPath <String> [[-Monitor] <Int32>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ContentPath` | String | ✅ | — | 0 | — | Ruta al archivo de destino para la comparación |
| `-Monitor` | Int32 | — | — | 1 | `-2` | El monitor a utilizar, 0 = predeterminado, -1 es descartar, -2 = Monitor secundario configurado, por defecto $Global:DefaultSecondaryMonitor o 2 si no se encuentra |
| `-Width` | Int32 | — | — | Named | `-1` | El ancho inicial de la ventana del navegador web |
| `-Height` | Int32 | — | — | Named | `-1` | La altura inicial de la ventana del navegador web |
| `-X` | Int32 | — | — | Named | `-999999` | La posición inicial X de la ventana del navegador web |
| `-Y` | Int32 | — | — | Named | `-999999` | La posición Y inicial de la ventana del navegador web |
| `-AcceptLang` | String | — | — | Named | `$null` | Set browser accept-lang http header |
| `-Force` | SwitchParameter | — | — | Named | — | Forzar habilitación del puerto de depuración, deteniendo los navegadores existentes si es necesario |
| `-Edge` | SwitchParameter | — | — | Named | — | Se abre en Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Se abre en Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Se abre en Microsoft Edge o Google Chrome, dependiendo de cuál sea el navegador predeterminado |
| `-Firefox` | SwitchParameter | — | — | Named | — | Se abre en Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Utilizar el navegador gestionado por Playwright en lugar del navegador instalado en el sistema operativo |
| `-Webkit` | SwitchParameter | — | — | Named | — | Abre el navegador WebKit gestionado por Playwright. Implica -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Ejecuta el navegador sin una ventana visible |
| `-All` | SwitchParameter | — | — | Named | — | Se abre en todos los navegadores modernos registrados |
| `-Left` | SwitchParameter | — | — | Named | — | Colocar la ventana del navegador en el lado izquierdo de la pantalla |
| `-Right` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en el lado derecho de la pantalla |
| `-Top` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en la parte superior de la pantalla |
| `-Bottom` | SwitchParameter | — | — | Named | — | Colocar la ventana del navegador en la parte inferior de la pantalla |
| `-Centered` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en el centro de la pantalla |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Se abre en modo de pantalla completa |
| `-Private` | SwitchParameter | — | — | Named | — | Se abre en modo de incógnito/navegación privada |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ocultar los controles del navegador |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Prevenir la carga de extensiones del navegador |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Desactivar el bloqueador de ventanas emergentes |
| `-NewWindow` | SwitchParameter | — | — | Named | — | No reutilices la ventana del navegador existente; en su lugar, crea una nueva. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana del navegador después de abrirla |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Abrir la ventana del navegador en primer plano después de abrir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar la ventana después de posicionarla |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurar la ventana a su estado normal después de posicionar |
| `-PassThru` | SwitchParameter | — | — | Named | — | Devuelve un objeto de PowerShell del proceso del navegador |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Elimina los bordes de la ventana |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar el foco de la ventana de PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Coloque la ventana del navegador en pantalla completa en un monitor diferente al de PowerShell, o en paralelo con PowerShell en el mismo monitor. |
| `-KeysToSend` | String[] | — | — | Named | — | Pulsaciones de teclas para enviar a la ventana, consulte la documentación del cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escapar los caracteres de control y modificadores al enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantener el foco del teclado en la ventana objetivo al enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Retardo entre diferentes cadenas de entrada en milisegundos al enviar teclas |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### $result = Approve-NewTextFileContent -ContentPath "C:\temp\myfile.txt" `     -NewContent "New file content"

```powershell
$result = Approve-NewTextFileContent -ContentPath "C:\temp\myfile.txt" `
    -NewContent "New file content"
```

### Approve-NewTextFileContent -ContentPath "C:\temp\myfile.txt" -NewContent "New content" -e -fs

```powershell
Approve-NewTextFileContent -ContentPath "C:\temp\myfile.txt" -NewContent "New content" -e -fs
```

## Related Links

- [Approve-NewTextFileContent on GitHub](https://github.com/genXdev/genXdev)
