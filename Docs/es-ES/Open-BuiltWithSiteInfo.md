# Open-BuiltWithSiteInfo

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Abre consultas del sitio web BuiltWith en un navegador web.

## Description

Abre una consulta de BuiltWith en un navegador web, con ajustes de monitor configurables y opciones de comportamiento del navegador. La función analiza las pilas tecnológicas de sitios web consultando el servicio de perfilado tecnológico de BuiltWith.com, que proporciona información detallada sobre tecnologías web, frameworks y servicios utilizados por los sitios web.

BuiltWith.com es un servicio integral de búsqueda tecnológica que identifica tecnologías web, frameworks, sistemas de gestión de contenidos, herramientas de análisis, proveedores de alojamiento y otros componentes de software utilizados por cualquier sitio web. Esta función proporciona una interfaz de PowerShell para analizar rápidamente las pilas tecnológicas sin tener que navegar manualmente al sitio web de BuiltWith.

## Syntax

```powershell
Open-BuiltWithSiteInfo -Queries <String[]> [[-Language] <String>] [[-Monitor] <Int32>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The website URLs or domains to query on BuiltWith.com |
| `-Language` | String | — | — | 1 | — | El idioma de los resultados de búsqueda devueltos |
| `-Monitor` | Int32 | — | — | 2 | `-1` | El monitor a utilizar, 0 = predeterminado, -1 es descartar, -2 = Monitor secundario configurado, valores predeterminados a -1, sin posicionamiento |
| `-Width` | Int32 | — | — | Named | `-1` | El ancho inicial de la ventana del navegador web |
| `-Height` | Int32 | — | — | Named | `-1` | La altura inicial de la ventana del navegador web |
| `-X` | Int32 | — | — | Named | `-999999` | La posición inicial X de la ventana del navegador web |
| `-Y` | Int32 | — | — | Named | `-999999` | La posición Y inicial de la ventana del navegador web |
| `-AcceptLang` | String | — | — | Named | `$null` | Set browser accept-lang http header |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Browser window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Retardo entre diferentes cadenas de entrada en milisegundos al enviar teclas |
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
| `-Left` | SwitchParameter | — | — | Named | — | Colocar la ventana del navegador en el lado izquierdo de la pantalla |
| `-Right` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en el lado derecho de la pantalla |
| `-Top` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en la parte superior de la pantalla |
| `-Bottom` | SwitchParameter | — | — | Named | — | Colocar la ventana del navegador en la parte inferior de la pantalla |
| `-Centered` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en el centro de la pantalla |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Se abre en modo de pantalla completa |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ocultar los controles del navegador |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Prevenir la carga de extensiones del navegador |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Desactivar el bloqueador de ventanas emergentes |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana del navegador después de abrirla |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Abrir la ventana del navegador en primer plano después de abrir |
| `-PassThru` | SwitchParameter | — | — | Named | — | Devuelve un objeto de PowerShell del proceso del navegador |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Either will set the window fullscreen on a different monitor than Powershell, or side by side with Powershell on the same monitor |
| `-NewWindow` | SwitchParameter | — | — | Named | — | No reutilices la ventana del navegador existente; en su lugar, crea una nueva. |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar la ventana después de posicionarla |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurar la ventana a su estado normal después de posicionar |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Elimina los bordes de la ventana del navegador |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar el foco de la ventana de PowerShell |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Después de abrir el navegador web, devuelve la url |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escapar los caracteres de control y modificadores al enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantener el foco del teclado en la ventana objetivo al enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### Open-BuiltWithSiteInfo -Queries "microsoft.com" -Monitor 0

```powershell
Open-BuiltWithSiteInfo -Queries "microsoft.com" -Monitor 0
```

Abre un análisis de BuiltWith para Microsoft.com en el monitor predeterminado.

### "microsoft.com" | Open-BuiltWithSiteInfo -m -1

```powershell
"microsoft.com" | Open-BuiltWithSiteInfo -m -1
```

Analiza Microsoft.com utilizando entrada de tubería con posicionamiento del monitor descartado.

## Related Links

- [Open-BuiltWithSiteInfo on GitHub](https://github.com/genXdev/genXdev)
