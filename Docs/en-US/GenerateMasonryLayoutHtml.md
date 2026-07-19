# GenerateMasonryLayoutHtml

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Generates a responsive masonry layout HTML gallery from image data.

## Description

Creates an interactive HTML gallery with responsive masonry grid layout for
displaying images. Features include:
- Responsive grid layout that adapts to screen size
- Image tooltips showing descriptions and keywords
- Click-to-copy image path functionality
- Clean modern styling with hover effects

## Syntax

```powershell
GenerateMasonryLayoutHtml -Images <Object> [[-FilePath] <String>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-CanDelete] [-CanEdit] [-Description <String>] [-EmbedImages] [-ImageUrlPrefix <String>] [-MaxPrintImages <Int32>] [-PageSize <Int32>] [-RootMargin <String>] [-ShowOnlyPictures] [-SingleColumnMode] [-Threshold <Double>] [-Title <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Images` | Object | ✅ | — | 0 | — | Array of image objects with path, keywords and description |
| `-FilePath` | String | — | — | 1 | `$null` | Output path for the generated HTML file |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Title for the gallery |
| `-Description` | String | — | — | Named | `'Hover over images to see face recognition, object detection, and scene classification data'` | Description for the gallery |
| `-CanEdit` | SwitchParameter | — | — | Named | `$false` | Whether editing is enabled |
| `-CanDelete` | SwitchParameter | — | — | Named | `$false` | Whether deletion is enabled |
| `-EmbedImages` | SwitchParameter | — | — | Named | `$false` | Embed images as base64 data URLs instead of file:// URLs for better portability |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Show only pictures in a rounded rectangle, no text below. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Auto-scroll the page by this many pixels per second (null to disable) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Animate rectangles (objects/faces) in visible range, cycling every 300ms |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Force single column layout (centered, 1/3 screen width) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Prefix to prepend to each image path (e.g. for remote URLs) |
| `-PageSize` | Int32 | — | — | Named | `20` | Number of images to load per page (for dynamic loading) |
| `-MaxPrintImages` | Int32 | — | — | Named | `50` | Maximum number of images to load for print mode |
| `-RootMargin` | String | — | — | Named | `'1200px'` | IntersectionObserver rootMargin for infinite scroll trigger (e.g. "1200px") |
| `-Threshold` | Double | — | — | Named | `0.1` | IntersectionObserver threshold for infinite scroll trigger |

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
