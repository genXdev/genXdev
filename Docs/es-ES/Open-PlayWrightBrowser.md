# Open-PlayWrightBrowser

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `spb

## Synopsis

> Inicia un navegador administrado por Playwright con un perfil de usuario persistente.

## Description

<details>
<summary><b>Expand description</b></summary>

Inicia una instancia de navegador independiente impulsada por los binarios integrados de Playwright (Chromium, Firefox o WebKit), completamente independiente de cualquier navegador instalado en el sistema operativo. El navegador utiliza un perfil de usuario persistente almacenado en GenXdev AppData, por lo que las cookies, localStorage y las sesiones sobreviven a los reinicios.

Este cmdlet reemplaza el antiguo enfoque de CDP/puerto de depuración que se rompió en Chrome 136+. En lugar de conectarse a un navegador del sistema a través de un puerto de depuración, Playwright gestiona directamente su propio ciclo de vida del navegador.

Características principales:
- Perfiles persistentes por tipo de navegador (Chromium, Firefox, WebKit)
- Tamaño de ventana y posición configurables
- Modo headless para automatización
- Soporte de servidor proxy
- Cabecera Accept-Language personalizada
- Opción de contexto de incógnito/privado
- Control de extensiones del navegador
- Ajuste de tamaño y posición de la ventana mediante -Width, -Height, -Left, -Right, etc.
- Forzar reinicio para cerrar la instancia existente y comenzar de nuevo

El navegador lanzado y su contexto/página se almacenan en $Global:GenXdevPlaywright para que otros cmdlets lo utilicen.

</details>
## Syntax

```powershell
Open-PlayWrightBrowser [[-BrowserType] <String>] [-AcceptLang <String>] [-Bottom] [-Centered] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-FocusWindow] [-Force] [-ForceConsent] [-Fullscreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-Proxy <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | `'Chromium'` | El motor del navegador a iniciar: Chromium, Firefox o WebKit |
| `-Headless` | SwitchParameter | — | — | Named | — | Ejecuta el navegador sin una ventana visible |
| `-Proxy` | String | — | — | Named | — | URL del servidor proxy (p. ej. http://proxy:8080) |
| `-AcceptLang` | String | — | — | Named | — | Establecer el encabezado HTTP Accept-Language del navegador |
| `-Width` | Int32 | — | — | Named | `-1` | Anchura inicial del viewport en píxeles |
| `-Height` | Int32 | — | — | Named | `-1` | Altura inicial del viewport en píxeles |
| `-Force` | SwitchParameter | — | — | Named | — | Cerrar navegador existente e iniciar uno nuevo |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forzar la reaparición del cuadro de diálogo de consentimiento de instalación |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automáticamente la instalación de software de terceros (navegadores de Playwright) |
| `-Monitor` | Int32 | — | — | Named | `-1` | El monitor a utilizar, 0 = predeterminado, -1 es descartar, -2 = Monitor secundario configurado, por defecto $Global:DefaultSecondaryMonitor o 2 si no se encuentra |
| `-X` | Int32 | — | — | Named | `-999999` | La posición inicial X de la ventana del navegador web |
| `-Y` | Int32 | — | — | Named | `-999999` | La posición Y inicial de la ventana del navegador web |
| `-Left` | SwitchParameter | — | — | Named | — | Colocar la ventana del navegador en el lado izquierdo de la pantalla |
| `-Right` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en el lado derecho de la pantalla |
| `-Top` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en la parte superior de la pantalla |
| `-Bottom` | SwitchParameter | — | — | Named | — | Colocar la ventana del navegador en la parte inferior de la pantalla |
| `-Centered` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en el centro de la pantalla |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximiza la ventana para ocupar toda la pantalla |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Elimina los bordes de la ventana |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar el foco de la ventana de PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Coloque la ventana del navegador en pantalla completa en un monitor diferente al de PowerShell, o en paralelo con PowerShell en el mismo monitor |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana del navegador después de abrirla |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Abrir la ventana del navegador en primer plano después de abrir |
| `-Minimize` | SwitchParameter | — | — | Named | — | Minimiza la ventana después de posicionar |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar la ventana después de posicionarla |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurar la ventana a su estado normal después de posicionar |
| `-KeysToSend` | String[] | — | — | Named | — | Pulsaciones de teclas para enviar a la ventana, consulte la documentación del cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escapar los caracteres de control y modificadores al enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantener el foco del teclado en la ventana objetivo al enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Retardo entre diferentes cadenas de entrada en milisegundos al enviar teclas |
| `-PassThru` | SwitchParameter | — | — | Named | — | Devuelve el objeto auxiliar de ventana para manipulaciones posteriores |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | Only output the calculated coordinates and size without actually positioning the window |

## Examples

### Open-PlayWrightBrowser Launches a persistent Chromium browser with the default profile.

```powershell
Open-PlayWrightBrowser
Launches a persistent Chromium browser with the default profile.
```

### Open-PlayWrightBrowser -BrowserType Firefox -Headless Launches Firefox in headless mode.

```powershell
Open-PlayWrightBrowser -BrowserType Firefox -Headless
Launches Firefox in headless mode.
```

### Open-PlayWrightBrowser -Width 1280 -Height 720 -Force Restarts the browser with a 1280x720 viewport.

```powershell
Open-PlayWrightBrowser -Width 1280 -Height 720 -Force
Restarts the browser with a 1280x720 viewport.
```

### Open-PlayWrightBrowser -Left -Monitor 1 -NoBorders Launches Chromium on the left half of monitor 1 without window borders.

```powershell
Open-PlayWrightBrowser -Left -Monitor 1 -NoBorders
Launches Chromium on the left half of monitor 1 without window borders.
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Open-PlayWrightBrowser on GitHub](https://github.com/genXdev/genXdev)
