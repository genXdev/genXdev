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
| `-Images` | IEnumerable`1[[GenXdev.Helpers.ImageSearchResult, GenXdev, Version=3.26.2026.0, Culture=neutral, PublicKeyToken=null]] | ✅ | ✅ (ByValue) | 0 | — | Array of image objects with path, keywords and description |
| `-FilePath` | String | — | — | 1 | `$null` | Ausgabepfad für die generierte HTML-Datei |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Titel für die Galerie |
| `-Description` | String | — | — | Named | `'Hover over images to see face recognition, object detection, and scene classification data'` | Beschreibung für die Galerie |
| `-CanEdit` | SwitchParameter | — | — | Named | `$false` | Ob die Bearbeitung aktiviert ist |
| `-CanDelete` | SwitchParameter | — | — | Named | `$false` | Ob Löschen aktiviert ist |
| `-EmbedImages` | SwitchParameter | — | — | Named | `$false` | Embed images as base64 data URLs instead of file:// URLs for better portability |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Show only pictures in a rounded rectangle, no text below. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Seite automatisch um diese Anzahl Pixel pro Sekunde scrollen (null zum Deaktivieren) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Rechtecke (Objekte/Flächen) im sichtbaren Bereich animieren, alle 300 ms wiederholen |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Erzwinge einspaltiges Layout (zentriert, 1/3 Bildschirmbreite) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Präfix, das jedem Bildpfad vorangestellt werden soll (z. B. für Remote-URLs) |
| `-PageSize` | Int32 | — | — | Named | `20` | Anzahl der Bilder, die pro Seite geladen werden sollen (für dynamisches Laden) |
| `-MaxPrintImages` | Int32 | — | — | Named | `50` | Maximale Anzahl der zu ladenden Bilder für den Druckmodus |
| `-RootMargin` | String | — | — | Named | `'1200px'` | IntersectionObserver rootMargin für Infinite-Scroll-Trigger (z. B. "1200px") |
| `-Threshold` | Double | — | — | Named | `0.1` | Schwellenwert des IntersectionObserver für den Trigger des endlosen Scrollens |

## Outputs

- `String`

## Related Links

- [GenerateMasonryLayoutHtml on GitHub](https://github.com/genXdev/genXdev)
