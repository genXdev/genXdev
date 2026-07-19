# GenerateMasonryLayoutHtml

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Genera una galería HTML de diseño de mampostería responsivo a partir de datos de imagen.

## Description

Crea una galería HTML interactiva con diseño de cuadrícula tipo masonry responsive para mostrar imágenes. Las características incluyen:
- Diseño de cuadrícula adaptable al tamaño de pantalla
- Tooltips en imágenes que muestran descripciones y palabras clave
- Función de copiar ruta de imagen al hacer clic
- Estilo moderno y limpio con efectos hover

## Syntax

```powershell
GenerateMasonryLayoutHtml -Images <Object> [[-FilePath] <String>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-CanDelete] [-CanEdit] [-Description <String>] [-EmbedImages] [-ImageUrlPrefix <String>] [-MaxPrintImages <Int32>] [-PageSize <Int32>] [-RootMargin <String>] [-ShowOnlyPictures] [-SingleColumnMode] [-Threshold <Double>] [-Title <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Images` | Object | ✅ | — | 0 | — | Matriz de objetos de imagen con ruta, palabras clave y descripción |
| `-FilePath` | String | — | — | 1 | `$null` | Ruta de salida para el archivo HTML generado |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Título de la galería |
| `-Description` | String | — | — | Named | `'Hover over images to see face recognition, object detection, and scene classification data'` | Descripción de la galería |
| `-CanEdit` | SwitchParameter | — | — | Named | `$false` | Si la edición está habilitada |
| `-CanDelete` | SwitchParameter | — | — | Named | `$false` | Si la eliminación está habilitada |
| `-EmbedImages` | SwitchParameter | — | — | Named | `$false` | Incrustar imágenes como URLs de datos base64 en lugar de URLs de archivo para una mejor portabilidad |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Show only pictures in a rounded rectangle, no text below. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Desplaza automáticamente la página esta cantidad de píxeles por segundo (nulo para deshabilitar) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Animar rectángulos (objetos/caras) en el rango visible, ciclando cada 300ms |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Forzar diseño de una sola columna (centrado, 1/3 del ancho de la pantalla) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Prefijo para anteponer a cada ruta de imagen (por ejemplo, para URLs remotas) |
| `-PageSize` | Int32 | — | — | Named | `20` | Número de imágenes a cargar por página (para carga dinámica) |
| `-MaxPrintImages` | Int32 | — | — | Named | `50` | Número máximo de imágenes a cargar para el modo de impresión |
| `-RootMargin` | String | — | — | Named | `'1200px'` | rootMargin del IntersectionObserver para el disparador de scroll infinito (ej. "1200px") |
| `-Threshold` | Double | — | — | Named | `0.1` | Umbral de IntersectionObserver para el disparador de desplazamiento infinito |

## Examples

### Create gallery from image array and save to file $images = @(     @{         path = "C:\photos\sunset.jpg"         keywords = @("nature", "sunset", "landscape")         description = @{             short_description = "Mountain sunset"             long_description = "Beautiful sunset over mountain range"         }     } ) GenerateMasonryLayoutHtml -Images $images -FilePath "C:\output\gallery.html"

```powershell
Create gallery from image array and save to file
$images = @(
    @{
        path = "C:\photos\sunset.jpg"
        keywords = @("nature", "sunset", "landscape")
        description = @{
            short_description = "Mountain sunset"
            long_description = "Beautiful sunset over mountain range"
        }
    }
)
GenerateMasonryLayoutHtml -Images $images -FilePath "C:\output\gallery.html"
```

### Generate HTML string without saving $html = GenerateMasonryLayoutHtml $images

```powershell
Generate HTML string without saving
$html = GenerateMasonryLayoutHtml $images
```

## Outputs

- `String`

## Related Links

- [GenerateMasonryLayoutHtml on GitHub](https://github.com/genXdev/genXdev)
