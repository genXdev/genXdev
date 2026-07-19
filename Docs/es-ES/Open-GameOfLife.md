# Open-GameOfLife

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `gameoflife, `conway

## Synopsis

> Abre la simulación del Juego de la Vida de Conway en un navegador web.

## Description

Abre una simulación interactiva del Juego de la Vida de Conway en una ventana del navegador web
con amplias opciones de posicionamiento y configuración. El Juego de la Vida de Conway es
autómata celular ideado por el matemático John Conway en 1970, que consiste
en una cuadrícula de celdas que pueden estar en uno de dos estados: viva o muerta.

Esta función proporciona control completo del navegador, incluyendo posicionamiento
de ventanas, selección de navegador, navegación privada e interacción automatizada.
La simulación se ejecuta en https://conway.genxdev.net/ y admite varios
modos de interacción.

## Syntax

```powershell
Open-GameOfLife [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | La preferencia de idioma para la interfaz del navegador y la localización del contenido |
| `-Private` | SwitchParameter | — | — | Named | — | Se abre en modo de incógnito/navegación privada |
| `-Force` | SwitchParameter | — | — | Named | — | Forzar habilitación del puerto de depuración, deteniendo los navegadores existentes si es necesario |
| `-Edge` | SwitchParameter | — | — | Named | — | Se abre en Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Se abre en Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Se abre en Microsoft Edge o Google Chrome, dependiendo de cuál sea el navegador predeterminado |
| `-Firefox` | SwitchParameter | — | — | Named | — | Se abre en Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Utilizar el navegador gestionado por Playwright en lugar del navegador instalado en el sistema operativo |
| `-Webkit` | SwitchParameter | — | — | Named | — | Abre el navegador WebKit gestionado por Playwright. Implica -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Ejecuta el navegador sin una ventana visible |
| `-All` | SwitchParameter | — | — | Named | — | Se abre en todos los navegadores modernos registrados |
| `-Monitor` | Int32 | — | — | Named | `-2` | El monitor a utilizar, 0 = predeterminado, -1 es descartar, -2 = Monitor secundario configurado, valores predeterminados a -1, sin posicionamiento |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Se abre en modo de pantalla completa |
| `-Width` | Int32 | — | — | Named | `-1` | El ancho inicial de la ventana del navegador web |
| `-Height` | Int32 | — | — | Named | `-1` | La altura inicial de la ventana del navegador web |
| `-X` | Int32 | — | — | Named | `-999999` | La posición inicial X de la ventana del navegador web |
| `-Y` | Int32 | — | — | Named | `-999999` | La posición Y inicial de la ventana del navegador web |
| `-Left` | SwitchParameter | — | — | Named | — | Colocar la ventana del navegador en el lado izquierdo de la pantalla |
| `-Right` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en el lado derecho de la pantalla |
| `-Top` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en la parte superior de la pantalla |
| `-Bottom` | SwitchParameter | — | — | Named | — | Colocar la ventana del navegador en la parte inferior de la pantalla |
| `-Centered` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en el centro de la pantalla |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ocultar los controles del navegador |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Prevenir la carga de extensiones del navegador |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Desactivar el bloqueador de ventanas emergentes |
| `-AcceptLang` | String | — | — | Named | `$null` | Set browser accept-lang http header |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Browser window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keystrokes to the browser window. |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Evitar que el enfoque del teclado regrese a PowerShell después de enviar pulsaciones de teclas a la ventana del navegador. |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Usa Shift+Enter en lugar de Enter normal para saltos de línea al enviar teclas al navegador. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Retardo entre el envío de diferentes secuencias de teclas en milisegundos. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana del navegador después de abrirla |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Abrir la ventana del navegador en primer plano después de abrir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar la ventana después de posicionarla |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurar la ventana a su estado normal después de posicionar |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar el foco de la ventana de PowerShell después de abrir el navegador. |
| `-NewWindow` | SwitchParameter | — | — | Named | — | No reutilices la ventana del navegador existente; en su lugar, crea una nueva. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Devuelve un objeto [System.Diagnostics.Process] del proceso del navegador |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Después de abrir el navegador web, devuelve la url |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | No abras en modo de pantalla completa |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | Mostrar los controles del navegador |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Elimina los bordes de la ventana del navegador. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Coloque la ventana del navegador en pantalla completa en un monitor diferente al de PowerShell, o en paralelo con PowerShell en el mismo monitor. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usar modo de solo sesión para el perfil del navegador (las cookies y datos se borran al cerrar). |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Borrar datos de sesión/perfil del navegador antes de abrir. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Omitir la restauración de la sesión anterior del navegador. |

## Examples

### Open-GameOfLife -Monitor 1 -FullScreen

```powershell
Open-GameOfLife -Monitor 1 -FullScreen
```

Abre el Juego de la Vida de Conway en modo pantalla completa en el monitor 1.

### Open-GameOfLife -Language "French" -Chrome -Private

```powershell
Open-GameOfLife -Language "French" -Chrome -Private
```

ouvre le Jeu de la Vie en français en utilisant Chrome en mode privé

### gameoflife -m 0 -app

```powershell
gameoflife -m 0 -app
```

Abre el Juego de la Vida en el monitor principal en modo aplicación usando el alias.

### conway -Edge -Left -Width 800 -Height 600

```powershell
conway -Edge -Left -Width 800 -Height 600
```

Abre el Juego de la Vida de Conway en Microsoft Edge, colocado en el lado izquierdo con dimensiones específicas.

## Related Links

- [Open-GameOfLife on GitHub](https://github.com/genXdev/genXdev)
