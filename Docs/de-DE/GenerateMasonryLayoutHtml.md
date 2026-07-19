# GenerateMasonryLayoutHtml

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> <div class="masonry-gallery">
  <div class="grid-sizer"></div>
  <div class="gutter-sizer"></div>
  <div class="grid-item"><img src="https://picsum.photos/400/600?random=1" alt="Image 1"></div>
  <div class="grid-item grid-item--width2"><img src="https://picsum.photos/800/600?random=2" alt="Image 2"></div>
  <div class="grid-item"><img src="https://picsum.photos/400/400?random=3" alt="Image 3"></div>
  <div class="grid-item"><img src="https://picsum.photos/400/800?random=4" alt="Image 4"></div>
  <div class="grid-item grid-item--width2"><img src="https://picsum.photos/800/400?random=5" alt="Image 5"></div>
  <div class="grid-item"><img src="https://picsum.photos/400/500?random=6" alt="Image 6"></div>
</div>

<style>
.masonry-gallery {
  column-count: 3;
  column-gap: 10px;
}

.grid-sizer, .grid-item {
  width: 100%;
  break-inside: avoid;
  margin-bottom: 10px;
}

.grid-item img {
  width: 100%;
  display: block;
  border-radius: 5px;
}

@media (max-width: 768px) {
  .masonry-gallery {
    column-count: 2;
  }
}

@media (max-width: 480px) {
  .masonry-gallery {
    column-count: 1;
  }
}
</style>

## Description

Erstellt eine interaktive HTML-Galerie mit responsive Masonry-Grid-Layout zur Anzeige von Bildern. Funktionen umfassen:
- Responsives Grid-Layout, das sich an die Bildschirmgröße anpasst
- Bild-Tooltips mit Beschreibungen und Schlüsselwörtern
- Klicken-zum-Kopieren-Funktion für Bildpfade
- Sauberes, modernes Styling mit Hover-Effekten

## Syntax

```powershell
GenerateMasonryLayoutHtml -Images <Object> [[-FilePath] <String>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-CanDelete] [-CanEdit] [-Description <String>] [-EmbedImages] [-ImageUrlPrefix <String>] [-MaxPrintImages <Int32>] [-PageSize <Int32>] [-RootMargin <String>] [-ShowOnlyPictures] [-SingleColumnMode] [-Threshold <Double>] [-Title <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Images` | Object | ✅ | — | 0 | — | Array of image objects with path, keywords and description |
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
