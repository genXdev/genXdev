# Show-FoundImagesInBrowser

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `showfoundimages

## Synopsis

> Muestra resultados de búsqueda de imágenes en una galería web con diseño de mampostería.

## Description

Toma los resultados de búsqueda de imágenes y los muestra en un diseño de mampostería basado en navegador. Puede operar en modo interactivo con capacidades de edición y eliminación, o en modo de visualización simple. Acepta objetos de datos de imagen típicamente de Find-Image y los renderiza con tooltips emergentes que muestran metadatos como reconocimiento facial, detección de objetos y datos de clasificación de escenas.

## Syntax

```powershell
Show-FoundImagesInBrowser [[-InputObject] <Object[]>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-OnlyReturnHtml] [-PassThru] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-Title <String>] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object[] | — | ✅ (ByValue) | 0 | `@()` | Image data objects to display in the gallery. |
| `-Interactive` | SwitchParameter | — | — | Named | — | Se conectará al navegador y añadirá botones adicionales como Editar y Eliminar |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Título de la galería |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | Pase el ratón sobre las imágenes para ver los datos de reconocimiento facial y detección de objetos |
| `-Private` | SwitchParameter | — | — | Named | — | Se abre en modo de incógnito/navegación privada |
| `-Force` | SwitchParameter | — | — | Named | — | Forzar habilitación del puerto de depuración, deteniendo los navegadores existentes si es necesario |
| `-Edge` | SwitchParameter | — | — | Named | — | Se abre en Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Se abre en Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Se abre en Microsoft Edge o Google Chrome, dependiendo de cuál sea el navegador predeterminado |
| `-Firefox` | SwitchParameter | — | — | Named | — | Se abre en Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Usa el navegador WebKit gestionado por Playwright |
| `-All` | SwitchParameter | — | — | Named | — | Se abre en todos los navegadores modernos registrados |
| `-Monitor` | Int32 | — | — | Named | `-2` | El monitor a utilizar, 0 = predeterminado, -1 es descartar, -2 = Monitor secundario configurado, por defecto Global:DefaultSecondaryMonitor o 2 si no se encuentra |
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
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana del navegador después de abrirla |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Abrir la ventana del navegador en primer plano después de abrir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar la ventana después de posicionarla |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurar la ventana a su estado normal después de posicionar |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar el foco de la ventana de PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Create a new browser window instead of reusing existing one |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | <button onclick="alert('Button clicked')">Click me</button> |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | Incorpora imágenes como URLs de datos base64 en lugar de URLs de archivo para una mejor portabilidad. |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Show only pictures in a rounded rectangle, no text below. |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escapar los caracteres de control y modificadores al enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantener el foco del teclado en la ventana objetivo al enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Retardo entre diferentes cadenas de entrada en milisegundos al enviar teclas |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove window borders and title bar for a cleaner appearance |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return the browser window helper object for further manipulation |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador junto a PowerShell en el mismo monitor |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utilice ajustes alternativos almacenados en la sesión para las preferencias de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Desplaza automáticamente la página esta cantidad de píxeles por segundo (nulo para deshabilitar) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Animar rectángulos (objetos/caras) en el rango visible, ciclando cada 300ms |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Forzar diseño de una sola columna (centrado, 1/3 del ancho de la pantalla) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Prefijo para anteponer a cada ruta de imagen (por ejemplo, para URLs remotas) |

## Examples

### Show-FoundImagesInBrowser -InputObject $images Displays the image results in a simple web gallery.

```powershell
Show-FoundImagesInBrowser -InputObject $images
Displays the image results in a simple web gallery.
```

### Show-FoundImagesInBrowser -InputObject $images -Interactive -Title "My Photos" Displays images in interactive mode with edit/delete buttons.

```powershell
Show-FoundImagesInBrowser -InputObject $images -Interactive -Title "My Photos"
Displays images in interactive mode with edit/delete buttons.
```

### showfoundimages $images -Private -FullScreen Opens the gallery in private browsing mode in fullscreen.

```powershell
showfoundimages $images -Private -FullScreen
Opens the gallery in private browsing mode in fullscreen.
```

## Related Links

- [Show-FoundImagesInBrowser on GitHub](https://github.com/genXdev/genXdev)
