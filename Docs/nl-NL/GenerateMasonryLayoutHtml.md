# GenerateMasonryLayoutHtml

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> <div class="masonry-gallery">
  <div class="item">
    <img src="https://via.placeholder.com/300x400" alt="Image 1">
  </div>
  <div class="item">
    <img src="https://via.placeholder.com/300x300" alt="Image 2">
  </div>
  <div class="item">
    <img src="https://via.placeholder.com/300x500" alt="Image 3">
  </div>
  <div class="item">
    <img src="https://via.placeholder.com/300x350" alt="Image 4">
  </div>
  <div class="item">
    <img src="https://via.placeholder.com/300x450" alt="Image 5">
  </div>
  <div class="item">
    <img src="https://via.placeholder.com/300x250" alt="Image 6">
  </div>
</div>

<style>
.masonry-gallery {
  column-count: 3;
  column-gap: 16px;
  padding: 16px;
}

.masonry-gallery .item {
  break-inside: avoid;
  margin-bottom: 16px;
}

.masonry-gallery .item img {
  width: 100%;
  display: block;
  border-radius: 8px;
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

Maakt een interactieve HTML-galerij met een responsieve metselwerklay-out voor het weergeven van afbeeldingen. Functies omvatten:
- Responsieve gridlay-out die zich aanpast aan de schermgrootte
- Afbeeldingstooltips die beschrijvingen en trefwoorden tonen
- Klik-om-afbeeldingspad te kopiëren-functionaliteit
- Schone moderne styling met hover-effecten

## Syntax

```powershell
GenerateMasonryLayoutHtml -Images <Object> [[-FilePath] <String>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-CanDelete] [-CanEdit] [-Description <String>] [-EmbedImages] [-ImageUrlPrefix <String>] [-MaxPrintImages <Int32>] [-PageSize <Int32>] [-RootMargin <String>] [-ShowOnlyPictures] [-SingleColumnMode] [-Threshold <Double>] [-Title <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Images` | Object | ✅ | — | 0 | — | Array van afbeeldingsobjecten met pad, trefwoorden en beschrijving |
| `-FilePath` | String | — | — | 1 | `$null` | Uitvoerpad voor het gegenereerde HTML-bestand |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Title for the gallery |
| `-Description` | String | — | — | Named | `'Hover over images to see face recognition, object detection, and scene classification data'` | Beschrijving voor de galerij |
| `-CanEdit` | SwitchParameter | — | — | Named | `$false` | Of bewerken is ingeschakeld |
| `-CanDelete` | SwitchParameter | — | — | Named | `$false` | Of verwijdering is ingeschakeld |
| `-EmbedImages` | SwitchParameter | — | — | Named | `$false` | Sluit afbeeldingen in als base64 data-URL's in plaats van file://-URL's voor betere draagbaarheid |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Show only pictures in a rounded rectangle, no text below. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Auto-scroll de pagina met dit aantal pixels per seconde (null om uit te schakelen) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Animeer rechthoeken (objecten/vlakken) in het zichtbare bereik, elke 300 ms cyclisch herhalen |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Forceer indeling in één kolom (gecentreerd, 1/3 schermbreedte) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Prefix die aan elk afbeeldingspad moet worden toegevoegd (bijv. voor externe URL's) |
| `-PageSize` | Int32 | — | — | Named | `20` | Aantal afbeeldingen om per pagina te laden (voor dynamisch laden) |
| `-MaxPrintImages` | Int32 | — | — | Named | `50` | Maximum aantal afbeeldingen om te laden voor afdrukmodus |
| `-RootMargin` | String | — | — | Named | `'1200px'` | IntersectionObserver rootMargin voor oneindig scrollen trigger (bijv. "1200px") |
| `-Threshold` | Double | — | — | Named | `0.1` | Drempel voor IntersectionObserver voor oneindig scrollen trigger |

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
