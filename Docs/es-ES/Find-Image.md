# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages, `li

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Coincidirá con cualquiera de todos los posibles tipos de metadatos. |
| `-Name` | String[] | — | — | 1 | `@('.\')` | Array de rutas de directorios para buscar imágenes |
| `-Language` | String | — | — | Named | — | Idioma para descripciones y palabras clave. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | El texto de descripción a buscar, se permiten comodines. |
| `-Keywords` | String[] | — | — | Named | `@()` | Las palabras clave a buscar, se permiten comodines. |
| `-People` | String[] | — | — | Named | `@()` | Personas a buscar, se permiten comodines. |
| `-Objects` | String[] | — | — | Named | `@()` | Objetos a buscar, se permiten comodines. |
| `-Scenes` | String[] | — | — | Named | `@()` | Categorías de escenas a buscar, comodines permitidos. |
| `-PictureType` | String[] | — | — | Named | `@()` | Tipo de imagen para filtrar (p. ej., 'daylight', 'evening', 'indoor', etc). Admite comodines. |
| `-StyleType` | String[] | — | — | Named | `@()` | Tipo de estilo por el que filtrar (p. ej., 'casual', 'formal', etc.). Admite caracteres comodín. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Estado de ánimo general por el que filtrar (p. ej., 'tranquilo', 'alegre', 'triste', etc.) Admito comodines. |
| `-MetaCameraMake` | String[] | — | — | Named | `@()` | Filter by camera make in image EXIF metadata. Supports wildcards. |
| `-MetaCameraModel` | String[] | — | — | Named | `@()` | Filtrar por modelo de cámara en los metadatos EXIF de la imagen. Admite comodines. |
| `-MetaGPSLatitude` | Double[] | — | — | Named | — | Filtrar por rango de latitud GPS en metadatos EXIF de la imagen. |
| `-MetaGPSLongitude` | Double[] | — | — | Named | — | Filtrar por rango de longitud GPS en metadatos EXIF de la imagen. |
| `-MetaGPSAltitude` | Double[] | — | — | Named | — | Filtrar por rango de altitud GPS en metadatos EXIF de la imagen (en metros). |
| `-GeoLocation` | Double[] | — | — | Named | — | Coordenadas geográficas [latitud, longitud] para buscar cerca. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | Distancia máxima en metros desde la ubicación geográfica para buscar imágenes. |
| `-MetaExposureTime` | Double[] | — | — | Named | — | Filtrar por rango de tiempo de exposición en metadatos EXIF de imágenes (en segundos). |
| `-MetaFNumber` | Double[] | — | — | Named | — | Filter by F-number (aperture) range in image EXIF metadata. |
| `-MetaISO` | Int32[] | — | — | Named | — | Filter by ISO sensitivity range in image EXIF metadata. |
| `-MetaFocalLength` | Double[] | — | — | Named | — | Filtrar por rango de distancia focal en metadatos EXIF de la imagen (en mm). |
| `-MetaWidth` | Int32[] | — | — | Named | — | Filtrar por rango de ancho de imagen en píxeles a partir de metadatos EXIF. |
| `-MetaHeight` | Int32[] | — | — | Named | — | Filter by image height range in pixels from EXIF metadata. |
| `-MetaDateTaken` | DateTime[] | — | — | Named | — | Filter by date taken from EXIF metadata. Can be a date range. |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Título de la galería |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | Descripción de la galería |
| `-AcceptLang` | String | — | — | Named | `$null` | Set browser accept-lang http header |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Browser window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escapar los caracteres de control y modificadores al enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Evitar devolver el foco del teclado a PowerShell después de enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Retardo entre diferentes cadenas de entrada en milisegundos al enviar teclas |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana del navegador después de abrirla |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Abrir la ventana del navegador en primer plano después de abrir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar la ventana después de posicionarla |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurar la ventana a su estado normal después de posicionar |
| `-Monitor` | Int32 | — | — | Named | `-2` | El monitor a utilizar, 0 = predeterminado, -1 es descartar, -2 = Monitor secundario configurado, por defecto Global:DefaultSecondaryMonitor o 2 si no se encuentra |
| `-Width` | Int32 | — | — | Named | `-1` | El ancho inicial de la ventana del navegador web |
| `-Height` | Int32 | — | — | Named | `-1` | La altura inicial de la ventana del navegador web |
| `-X` | Int32 | — | — | Named | `-999999` | La posición inicial X de la ventana del navegador web |
| `-Y` | Int32 | — | — | Named | `-999999` | La posición Y inicial de la ventana del navegador web |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | Embed images as base64. |
| `-NoFallback` | SwitchParameter | — | — | Named | — | Interruptor para desactivar el comportamiento de respaldo. |
| `-NeverRebuild` | SwitchParameter | — | — | Named | — | Cambiar a omitir la inicialización y reconstrucción de la base de datos. |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Buscar en todas las unidades disponibles |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | No recurse en subdirectorios |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Seguir enlaces simbólicos y uniones durante el recorrido de directorios. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Profundidad máxima de recursión para el recorrido de directorios. 0 significa ilimitado. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Profundidad máxima de recursión para continuar buscando hacia arriba en el árbol para búsquedas relativas, mientras no se encuentren elementos. 0 significa desactivado. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Tamaño máximo de archivo en bytes a incluir en los resultados. 0 significa ilimitado. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Tamaño mínimo de archivo en bytes para incluir en los resultados. 0 significa sin mínimo. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Incluir solo archivos modificados después de esta fecha/hora (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Incluir solo los archivos modificados antes de esta fecha/hora (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Atributos de archivo a omitir (por ejemplo, Sistema, Oculto o Ninguno). |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filtrar imágenes que contengan desnudez. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filtrar imágenes que NO contengan desnudos. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | Filter images that contain explicit content. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain explicit content. |
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | Mostrar los resultados de búsqueda en una galería de imágenes basada en navegador. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Devuelve los datos de la imagen como objetos. Cuando se usa con -ShowInBrowser, muestra la galería y devuelve los objetos. |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove window borders and title bar for a cleaner appearance |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador junto a PowerShell en el mismo monitor |
| `-Interactive` | SwitchParameter | — | — | Named | — | Se conectará al navegador y agregará botones adicionales como Editar y Eliminar. Solo es efectivo cuando se usa con -ShowInBrowser. |
| `-Private` | SwitchParameter | — | — | Named | — | Se abre en modo de incógnito/navegación privada |
| `-Force` | SwitchParameter | — | — | Named | — | Forzar habilitación del puerto de depuración, deteniendo los navegadores existentes si es necesario |
| `-Edge` | SwitchParameter | — | — | Named | — | Se abre en Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Se abre en Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Se abre en Microsoft Edge o Google Chrome, dependiendo de cuál sea el navegador predeterminado |
| `-Firefox` | SwitchParameter | — | — | Named | — | Se abre en Firefox |
| `-All` | SwitchParameter | — | — | Named | — | Se abre en todos los navegadores modernos registrados |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Se abre en modo de pantalla completa |
| `-Left` | SwitchParameter | — | — | Named | — | Colocar la ventana del navegador en el lado izquierdo de la pantalla |
| `-Right` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en el lado derecho de la pantalla |
| `-Top` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en la parte superior de la pantalla |
| `-Bottom` | SwitchParameter | — | — | Named | — | Colocar la ventana del navegador en la parte inferior de la pantalla |
| `-Centered` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador en el centro de la pantalla |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ocultar los controles del navegador |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Prevenir la carga de extensiones del navegador |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Desactivar el bloqueador de ventanas emergentes |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar el foco de la ventana de PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | No reutilices la ventana del navegador existente; en su lugar, crea una nueva. |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | <button onclick="alert('Button clicked')">Click me</button> |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Show only pictures in a rounded rectangle, no text below. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usa configuraciones alternativas guardadas en la sesión para preferencias de IA como idioma, colecciones de imágenes, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | No uses configuraciones alternativas almacenadas en la sesión para preferencias de IA como Idioma, colecciones de imágenes, etc. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Desplaza automáticamente la página esta cantidad de píxeles por segundo (nulo para deshabilitar) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Animar rectángulos (objetos/caras) en el rango visible, ciclando cada 300ms |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Forzar diseño de una sola columna (centrado, 1/3 del ancho de la pantalla) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Prefijo para anteponer a cada ruta de imagen (por ejemplo, para URLs remotas) |
| `-MinConfidenceRatio` | Double | — | — | Named | — | Proporción de confianza mínima (0.0-1.0) para filtrar personas, escenas y objetos por confianza. Solo devuelve datos para personas, escenas y objetos con una confianza mayor o igual a este valor. |

## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Find-Image on GitHub](https://github.com/genXdev/genXdev)
