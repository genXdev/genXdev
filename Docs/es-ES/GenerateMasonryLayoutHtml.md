# GenerateMasonryLayoutHtml

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
GenerateMasonryLayoutHtml -Images <IEnumerable`1[[GenXdev.Helpers.ImageSearchResult, GenXdev, Version=3.26.2026.0, Culture=neutral, PublicKeyToken=null]]> [[-FilePath] <String>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-CanDelete] [-CanEdit] [-Description <String>] [-EmbedImages] [-ImageUrlPrefix <String>] [-MaxPrintImages <Int32>] [-PageSize <Int32>] [-RootMargin <String>] [-ShowOnlyPictures] [-SingleColumnMode] [-Threshold <Double>] [-Title <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Images` | IEnumerable`1[[GenXdev.Helpers.ImageSearchResult, GenXdev, Version=3.26.2026.0, Culture=neutral, PublicKeyToken=null]] | ✅ | ✅ (ByValue) | 0 | — | Matriz de objetos de imagen con ruta, palabras clave y descripción |
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

## Outputs

- `String`

## Related Links

- [GenerateMasonryLayoutHtml on GitHub](https://github.com/genXdev/genXdev)
