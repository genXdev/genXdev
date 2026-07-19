# Open-IMDBQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `imdb

## Synopsis

> Abre una consulta de búsqueda en IMDB en un navegador web.

## Description

Abre una consulta de "Internet Movie Database" en un navegador web con amplias opciones de configuración. Esta función proporciona un envoltorio conveniente alrededor de la funcionalidad de búsqueda de IMDB, permitiendo a los usuarios buscar películas, programas de televisión, actores y otro contenido de entretenimiento directamente desde PowerShell.

La función acepta términos de búsqueda y construye URLs de búsqueda adecuadas de IMDB, luego las abre en el navegador web especificado con posicionamiento de ventana personalizable, selección de navegador y opciones de visualización. Soporta todos los navegadores principales, incluyendo Edge, Chrome y Firefox, con opciones para navegación privada, modo de pantalla completa y gestión de ventanas.

Las características clave incluyen soporte para múltiples monitores, localización de idioma, automatización de teclado y opciones completas de configuración del navegador. La función puede manejar múltiples consultas de búsqueda simultáneamente y proporciona opciones tanto para uso interactivo como para flujos de trabajo automatizados.

## Syntax

```powershell
Open-IMDBQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The search terms to query on IMDB |
| `-Language` | String | — | — | 1 | — | El idioma de los resultados de búsqueda devueltos |
| `-Monitor` | Int32 | — | — | Named | `-1` | El monitor a utilizar: 0 = predeterminado, -1 = descartar, -2 = Monitor secundario configurado, el valor predeterminado es -1 |
| `-Width` | Int32 | — | — | Named | `-1` | El ancho inicial de la ventana del navegador web |
| `-Height` | Int32 | — | — | Named | `-1` | La altura inicial de la ventana del navegador web |
| `-X` | Int32 | — | — | Named | `-999999` | La posición inicial X de la ventana del navegador web |
| `-Y` | Int32 | — | — | Named | `-999999` | La posición Y inicial de la ventana del navegador web |
| `-AcceptLang` | String | — | — | Named | — | Set browser accept-lang http header |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Browser window, see documentation for cmdlet GenXdev\Send-Key |
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
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Desactiva la funcionalidad de bloqueo de ventanas emergentes del navegador |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana del navegador después de abrirla |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Abrir la ventana del navegador en primer plano después de abrir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar la ventana después de posicionarla |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurar la ventana a su estado normal después de posicionar |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar el foco de la ventana de PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | No reutilices la ventana del navegador existente; en su lugar, crea una nueva. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Devuelve un objeto [System.Diagnostics.Process] del proceso del navegador |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Después de abrir el navegador web, devuelve la url |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escapa los caracteres de control al enviar pulsaciones de teclas al navegador |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Evita que el foco del teclado vuelva a PowerShell después de enviar pulsaciones de teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Utiliza Shift+Enter en lugar de Enter normal para saltos de línea al enviar teclas |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Retraso entre el envío de diferentes secuencias de teclas en milisegundos |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Elimina los bordes de la ventana |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Abrir ventanas del navegador una al lado de la otra |

## Examples

### Open-IMDBQuery -Queries "The Matrix" -Monitor 0

```powershell
Open-IMDBQuery -Queries "The Matrix" -Monitor 0
```

Opens an IMDB search for "The Matrix" on the default monitor.

### imdb "The Matrix" -m 0

```powershell
imdb "The Matrix" -m 0
```

Opens an IMDB search for "The Matrix" using the alias and shorthand parameters.

### "Inception", "Interstellar" | Open-IMDBQuery -Language "French" -Chrome

```powershell
"Inception", "Interstellar" | Open-IMDBQuery -Language "French" -Chrome
```

Recherche plusieurs films sur IMDB avec des résultats en français dans Chrome.

### Open-IMDBQuery -Queries "Tom Hanks" -FullScreen -RestoreFocus

```powershell
Open-IMDBQuery -Queries "Tom Hanks" -FullScreen -RestoreFocus
```

Busca a Tom Hanks en IMDb en modo de pantalla completa, luego devuelve el enfoque a PowerShell.

## Related Links

- [Open-IMDBQuery on GitHub](https://github.com/genXdev/genXdev)
