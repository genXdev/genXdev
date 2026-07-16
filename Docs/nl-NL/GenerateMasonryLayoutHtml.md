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
| `-Images` | IEnumerable`1[[GenXdev.Helpers.ImageSearchResult, GenXdev, Version=3.26.2026.0, Culture=neutral, PublicKeyToken=null]] | ✅ | ✅ (ByValue) | 0 | — | Array van afbeeldingsobjecten met pad, trefwoorden en beschrijving |
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

## Outputs

- `String`

## Related Links

- [GenerateMasonryLayoutHtml on GitHub](https://github.com/genXdev/genXdev)
