# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages, `li

## Synopsis

> Busca archivos de imagen y metadatos en directorios especificados con capacidades de filtrado y visualización opcional de galería en navegador.

## Description

Busca archivos de imagen (jpg, jpeg, png, gif, bmp, webp, tiff, tif) en el directorio especificado y sus subdirectorios. Para cada imagen, revisa los archivos asociados description.json, keywords.json, people.json y objects.json en busca de metadatos. Puede filtrar imágenes según coincidencias de palabras clave, reconocimiento de personas y detección de objetos, y luego devolver los resultados como objetos. Use -ShowInBrowser para mostrar los resultados en un diseño de mampostería basado en navegador.

Lógica de parámetros:
- Dentro de cada tipo de parámetro (Palabras clave, Personas, Objetos, etc.): usa lógica OR
  Ejemplo: -Keywords "gato","perro" encuentra imágenes con gato O perro
- Entre diferentes tipos de parámetros: usa lógica AND
  Ejemplo: -Keywords "gato" -People "Juan" encuentra imágenes con gato Y Juan
- Parámetros de rango EXIF: proporcione valores [mín, máx] para filtrar rangos
- Parámetros de cadena: admiten coincidencias con comodines * y ?

La función busca en los directorios de imágenes y examina flujos de datos alternativos que contienen metadatos en formato JSON. Puede coincidir palabras clave usando patrones comodín, filtrar por personas específicas y buscar objetos detectados. De forma predeterminada, devuelve objetos de datos de imagen. Use -ShowInBrowser para mostrar en un navegador web.

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Headless] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Coincidirá con cualquiera de todos los posibles tipos de metadatos. |
| `-Name` | String[] | — | — | 1 | `@('.\')` | Array de rutas de directorios para buscar imágenes |
| `-Language` | String | — | — | Named | — | Idioma para descripciones y palabras clave. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | ('El texto de descripción a buscar, se permiten ' +
                'comodines.) |
| `-Keywords` | String[] | — | — | Named | `@()` | Las palabras clave a buscar, se permiten comodines. |
| `-People` | String[] | — | — | Named | `@()` | Personas a buscar, se permiten comodines. |
| `-Objects` | String[] | — | — | Named | `@()` | Objetos a buscar, se permiten comodines. |
| `-Scenes` | String[] | — | — | Named | `@()` | Categorías de escenas a buscar, comodines permitidos. |
| `-PictureType` | String[] | — | — | Named | `@()` | "Tipo de imagen para filtrar (p. ej., 'daylight', 'evening', 'indoor', etc.). Admite comodines." |
| `-StyleType` | String[] | — | — | Named | `@()` | Tipo de estilo a filtrar (p. ej., 'casual', 'formal', etc.). Admito comodines. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Estado de ánimo general para filtrar (p. ej., 'tranquilo', 'alegre', 'triste', etc.). Admite comodines. |
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
| `-KeysToSend` | String[] | — | — | Named | — | ('Pulsaciones a enviar a la ventana del navegador, ' +
                'consulta la documentación del cmdlet GenXdev\Send-Key') |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape los caracteres de control y modificadores al enviar teclas |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 'Evitar devolver el foco del teclado a PowerShell después de enviar teclas' |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Usa Shift+Enter en lugar de Enter al enviar teclas |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Retardo entre diferentes cadenas de entrada en milisegundos al enviar teclas |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Enfocar la ventana del navegador después de abrirla |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Abrir la ventana del navegador en primer plano después de abrir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar la ventana después de posicionarla |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restaurar la ventana a su estado normal después de posicionar |
| `-Monitor` | Int32 | — | — | Named | `-2` | ('El monitor a usar, 0 = predeterminado, -1 es descartar, ' +
                '-2 = Monitor secundario configurado, por defecto ' +
                "`Global:DefaultSecondaryMonitor o 2 si no se encuentra") |
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
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | Muestra los resultados de búsqueda en una galería de imágenes basada en navegador. |
| `-PassThru` | SwitchParameter | — | — | Named | — | ("Devuelve datos de imagen como objetos. Cuando se usa con " +
                "-ShowInBrowser, tanto muestra la galería como devuelve " +
                "los objetos.") |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove window borders and title bar for a cleaner appearance |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Coloca la ventana del navegador junto a PowerShell en el mismo monitor |
| `-Interactive` | SwitchParameter | — | — | Named | — | ('Se conectará al navegador y añadirá ' +
                'botones adicionales como Editar y Eliminar. Solo es efectivo cuando se usa con ' +
                '-ShowInBrowser.') |
| `-Private` | SwitchParameter | — | — | Named | — | Se abre en modo de incógnito/navegación privada |
| `-Force` | SwitchParameter | — | — | Named | — | ('Forzar la habilitación del puerto de depuración, deteniendo los ' +
                'navegadores existentes si es necesario) |
| `-Edge` | SwitchParameter | — | — | Named | — | Se abre en Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Se abre en Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Se abre en Microsoft Edge o Google Chrome, dependiendo de cuál sea el navegador predeterminado |
| `-Firefox` | SwitchParameter | — | — | Named | — | Se abre en Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Usar el navegador gestionado por Playwright en lugar del navegador instalado en el sistema operativo |
| `-Webkit` | SwitchParameter | — | — | Named | — | Abre el navegador WebKit gestionado por Playwright. Implica -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Ejecuta el navegador sin una ventana visible |
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
| `-NewWindow` | SwitchParameter | — | — | Named | — | No reutilices la ventana del navegador existente, sino que crea una nueva. |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | ('Solo devuelve el HTML generado en lugar de mostrarlo en un navegador.') |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Muestra solo imágenes en un rectángulo redondeado, sin texto debajo. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Usar configuraciones alternativas almacenadas en sesión para preferencias de IA como idioma, colecciones de imágenes, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ('Opciones alternativas claras almacenadas en la sesión para ' +
                'preferencias de IA como Idioma, Colecciones de imágenes, etc.) |
| `-SkipSession` | SwitchParameter | — | — | Named | — | No utilices configuraciones alternativas almacenadas en la sesión para las preferencias de IA como Idioma, colecciones de imágenes, etc. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Desplaza automáticamente la página esta cantidad de píxeles por segundo (nulo para deshabilitar) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Animar rectángulos (objetos/caras) en el rango visible, ciclando cada 300ms |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Forzar diseño de una sola columna (centrado, 1/3 del ancho de la pantalla) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Prefijo para anteponer a cada ruta de imagen (por ejemplo, para URLs remotas) |
| `-MinConfidenceRatio` | Double | — | — | Named | — | ('Relación mínima de confianza (0.0-1.0) para filtrar ' +
                'personas, escenas y objetos por confianza. Solo devuelve datos para ' +
                'personas, escenas y objetos con confianza mayor o igual ' +
                'a este valor.') |

## Examples

### Find-Image -Keywords "cat","dog" -Name "C:\Photos\*" Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.

```powershell
Find-Image -Keywords "cat","dog" -Name "C:\Photos\*"
Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.
```

### findimages cat,dog "C:\Photos" Same as above using the alias and positional parameters.

```powershell
findimages cat,dog "C:\Photos"
Same as above using the alias and positional parameters.
```

### Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser Searches for photos containing John OR Jane and displays them in a web gallery.

```powershell
Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser
Searches for photos containing John OR Jane and displays them in a web gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*" Searches for images that contain vacation keywords AND John as a person AND beach objects. All three criteria must be met (AND logic between parameter types).

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*"
Searches for images that contain vacation keywords AND John as a person AND beach objects.
All three criteria must be met (AND logic between parameter types).
```

### Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*" Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8. EXIF parameters use range filtering with [min, max] values.

```powershell
Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*"
Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8.
EXIF parameters use range filtering with [min, max] values.
```

### Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.

```powershell
Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru
Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.
```

### findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.

```powershell
findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser
Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*" Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*"
Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.
```

### Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.

```powershell
Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser
Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.
```

### Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.

```powershell
Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser
Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.
```

### Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*" Searches for daylight photos with a calm/peaceful mood and returns the image objects.

```powershell
Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*"
Searches for daylight photos with a calm/peaceful mood and returns the image objects.
```

### findimages -StyleType "casual" -HasNudity -Name "C:\Art\*" Searches for casual style images that contain nudity and returns the data objects.

```powershell
findimages -StyleType "casual" -HasNudity -Name "C:\Art\*"
Searches for casual style images that contain nudity and returns the data objects.
```

### Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*" Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.

```powershell
Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*"
Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.
```

## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Find-Image on GitHub](https://github.com/genXdev/genXdev)
