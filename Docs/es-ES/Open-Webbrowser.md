# Open-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wb

## Synopsis

> Abre URLs en una o más ventanas del navegador con posicionamiento y estilo opcionales.

## Description

Esta función proporciona un envoltorio avanzado para iniciar navegadores con amplias opciones de posicionamiento de ventanas, selección de navegador y personalización de comportamiento. Admite múltiples navegadores, incluidos Edge, Chrome y Firefox, con características como modo privado, modo aplicación y gestión precisa de ventanas.

Características principales:
- Detección y selección inteligente de navegador
- Posicionamiento de ventanas (izquierda, derecha, arriba, abajo, centrado, pantalla completa)
- Soporte para múltiples monitores con selección automática o manual
- Soporte de modo de navegación privada/incógnito
- Modo aplicación para navegación sin distracciones
- Opciones de bloqueo de extensiones y ventanas emergentes
- Gestión de enfoque y manipulación de ventanas
- Apertura de URL por lotes en múltiples navegadores
- Automatización de pulsaciones de teclas en ventanas del navegador

La función puede detectar automáticamente las capacidades del sistema y ajustar el comportamiento en consecuencia. Para navegadores no instalados en el sistema, las operaciones se omiten silenciosamente sin errores.

## Syntax

```powershell
Open-Webbrowser [[-Url] <String[]>] [[-Monitor] <Int32>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-Input <String>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String[] | — | — | 0 | — | Las URL para abrir en el navegador |
| `-Input` | String | — | ✅ (ByValue, ByPropertyName) | Named | — | Las URL para abrir en el navegador |
| `-Monitor` | Int32 | — | — | 1 | `-2` | El monitor a utilizar, 0 = predeterminado, -1 es descartar, -2 = Monitor secundario configurado, por defecto $Global:DefaultSecondaryMonitor o 2 si no se encuentra |
| `-Width` | Int32 | — | — | Named | `-1` | El ancho inicial de la ventana del navegador web |
| `-Height` | Int32 | — | — | Named | `-1` | La altura inicial de la ventana del navegador web |
| `-X` | Int32 | — | — | Named | `-999999` | La posición inicial X de la ventana del navegador web |
| `-Y` | Int32 | — | — | Named | `-999999` | La posición Y inicial de la ventana del navegador web |
| `-AcceptLang` | String | — | — | Named | `$null` | Set browser accept-lang http header |
| `-Force` | SwitchParameter | — | — | Named | — | Forzar el cierre de las instancias existentes del navegador antes de abrir una nueva |
| `-Edge` | SwitchParameter | — | — | Named | — | Se abre en Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Se abre en Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Se abre en Microsoft Edge o Google Chrome, dependiendo de cuál sea el navegador predeterminado |
| `-Firefox` | SwitchParameter | — | — | Named | — | Se abre en Firefox |
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
| `-SideBySide` | SwitchParameter | — | — | Named | — | Coloque la ventana del navegador en pantalla completa en un monitor diferente al de PowerShell, o en paralelo con PowerShell en el mismo monitor |
| `-KeysToSend` | String[] | — | — | Named | — | Pulsaciones de teclas para enviar a la ventana, consulte la documentación del cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escapar los caracteres de control y modificadores al enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantener el foco del teclado en la ventana objetivo al enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Retardo entre diferentes cadenas de entrada en milisegundos al enviar teclas |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Utilizar el navegador gestionado por Playwright en lugar del navegador instalado en el sistema operativo |
| `-Webkit` | SwitchParameter | — | — | Named | — | Abre el navegador WebKit gestionado por Playwright. Implica -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Ejecuta el navegador sin una ventana visible |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automáticamente la instalación de software de terceros (navegadores de Playwright) |

## Examples

### wb -PlayWright https://github.com

```powershell
wb -PlayWright https://github.com
```

Abre GitHub en un navegador Chromium administrado por Playwright.

### Open-Webbrowser -Url "https://github.com"

```powershell
Open-Webbrowser -Url "https://github.com"
```

Abre GitHub en el navegador predeterminado.

### Open-Webbrowser -Url "https://stackoverflow.com" -Monitor 1 -Left

```powershell
Open-Webbrowser -Url "https://stackoverflow.com" -Monitor 1 -Left
```

Abre Stack Overflow en la mitad izquierda del monitor 1.

### wb "https://google.com" -m 0 -fs

```powershell
wb "https://google.com" -m 0 -fs
```

Abre Google en modo pantalla completa en el monitor principal usando alias.

### Open-Webbrowser -Chrome -Private -NewWindow

```powershell
Open-Webbrowser -Chrome -Private -NewWindow
```

Abre una nueva ventana de Chrome en modo incógnito.

### "https://github.com", "https://stackoverflow.com" | Open-Webbrowser -All

```powershell
"https://github.com", "https://stackoverflow.com" | Open-Webbrowser -All
```

Abre múltiples URLs en todos los navegadores instalados mediante canalización.

### Open-Webbrowser -Monitor 0 -Right

```powershell
Open-Webbrowser -Monitor 0 -Right
```

Vuelve a posicionar una ventana del navegador ya abierta hacia el lado derecho del monitor principal.

### Open-Webbrowser -ApplicationMode -Url "https://app.example.com"

```powershell
Open-Webbrowser -ApplicationMode -Url "https://app.example.com"
```

Abre una aplicación web en modo aplicación sin controles del navegador.

## Related Links

- [Open-Webbrowser on GitHub](https://github.com/genXdev/genXdev)
