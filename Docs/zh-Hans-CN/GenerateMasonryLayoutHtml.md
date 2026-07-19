# GenerateMasonryLayoutHtml

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Generates a responsive masonry layout HTML gallery from image data.

## Description

<details>
<summary><b>Expand description</b></summary>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Masonry Image Gallery</title>
    <style>
        /* Reset and base styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f5f5f5;
            padding: 20px;
        }
        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }
        .gallery {
            column-count: 4;
            column-gap: 16px;
            padding: 0 16px;
        }
        .gallery-item {
            break-inside: avoid;
            margin-bottom: 16px;
            background: #fff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
            cursor: pointer;
        }
        .gallery-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }
        .gallery-item img {
            width: 100%;
            display: block;
            transition: transform 0.3s ease;
        }
        .gallery-item:hover img {
            transform: scale(1.05);
        }
        .info {
            padding: 12px 15px;
        }
        .info .title {
            font-weight: bold;
            color: #333;
            margin-bottom: 5px;
        }
        .info .keywords {
            font-size: 0.9em;
            color: #777;
        }
        /* Tooltip */
        .gallery-item .tooltip {
            visibility: hidden;
            opacity: 0;
            position: absolute;
            bottom: 100%;
            left: 50%;
            transform: translateX(-50%);
            background: rgba(0,0,0,0.8);
            color: #fff;
            padding: 8px 12px;
            border-radius: 6px;
            white-space: nowrap;
            font-size: 0.9em;
            transition: opacity 0.3s;
            pointer-events: none;
            z-index: 10;
        }
        .gallery-item:hover .tooltip {
            visibility: visible;
            opacity: 1;
        }
        .tooltip::after {
            content: '';
            position: absolute;
            top: 100%;
            left: 50%;
            margin-left: -5px;
            border-width: 5px;
            border-style: solid;
            border-color: rgba(0,0,0,0.8) transparent transparent transparent;
        }
        /* Click to copy notification */
        .copy-toast {
            position: fixed;
            bottom: 30px;
            left: 50%;
            transform: translateX(-50%);
            background: #333;
            color: #fff;
            padding: 12px 24px;
            border-radius: 8px;
            opacity: 0;
            transition: opacity 0.4s;
            z-index: 100;
            font-size: 1em;
        }
        .copy-toast.show {
            opacity: 1;
        }
        /* Responsive */
        @media (max-width: 1024px) {
            .gallery {
                column-count: 3;
            }
        }
        @media (max-width: 768px) {
            .gallery {
                column-count: 2;
            }
        }
        @media (max-width: 480px) {
            .gallery {
                column-count: 1;
            }
        }
    </style>
</head>
<body>
    <h1>📸 Image Gallery</h1>
    <div class="gallery" id="gallery"></div>
    <div class="copy-toast" id="copyToast">Path copied to clipboard!</div>

<script>
        // Sample image data – replace with your own images
        const images = [
            { src: 'https://picsum.photos/seed/1/600/800', title: 'Mountain View', keywords: 'nature, mountain, landscape' },
            { src: 'https://picsum.photos/seed/2/400/600', title: 'City Streets', keywords: 'urban, street, architecture' },
            { src: 'https://picsum.photos/seed/3/500/400', title: 'Ocean Sunset', keywords: 'ocean, sunset, beach' },
            { src: 'https://picsum.photos/seed/4/800/600', title: 'Forest Path', keywords: 'forest, trees, path' },
            { src: 'https://picsum.photos/seed/5/300/500', title: 'Desert Dunes', keywords: 'desert, dunes, sand' },
            { src: 'https://picsum.photos/seed/6/600/400', title: 'Autumn Leaves', keywords: 'autumn, leaves, fall' },
            { src: 'https://picsum.photos/seed/7/700/900', title: 'Night Sky', keywords: 'night, stars, sky' },
            { src: 'https://picsum.photos/seed/8/500/700', title: 'Lake Reflection', keywords: 'lake, reflection, water' },
            { src: 'https://picsum.photos/seed/9/650/450', title: 'Flower Field', keywords: 'flowers, field, nature' },
            { src: 'https://picsum.photos/seed/10/750/500', title: 'Waterfall', keywords: 'waterfall, water, nature' },
            { src: 'https://picsum.photos/seed/11/400/800', title: 'Snowy Peak', keywords: 'snow, mountain, peak' },
            { src: 'https://picsum.photos/seed/12/550/600', title: 'Bridge', keywords: 'bridge, architecture, river' }
        ];

const gallery = document.getElementById('gallery');
        const toast = document.getElementById('copyToast');
        let toastTimeout;

images.forEach((img, index) => {
            const item = document.createElement('div');
            item.className = 'gallery-item';

// Tooltip
            const tooltip = document.createElement('div');
            tooltip.className = 'tooltip';
            tooltip.textContent = `${img.title} - ${img.keywords}`;

// Image
            const image = document.createElement('img');
            image.src = img.src;
            image.alt = img.title;
            image.loading = 'lazy';

// Info
            const info = document.createElement('div');
            info.className = 'info';
            info.innerHTML = `<div class="title">${img.title}</div><div class="keywords">${img.keywords}</div>`;

item.appendChild(tooltip);
            item.appendChild(image);
            item.appendChild(info);

// Click to copy
            item.addEventListener('click', function(e) {
                // Copy image path (src) to clipboard
                const path = img.src;
                navigator.clipboard.writeText(path).then(() => {
                    showToast();
                }).catch(err => {
                    console.error('Failed to copy: ', err);
                });
            });

gallery.appendChild(item);
        });

function showToast() {
            toast.classList.add('show');
            clearTimeout(toastTimeout);
            toastTimeout = setTimeout(() => {
                toast.classList.remove('show');
            }, 2000);
        }
    </script>
</body>
</html>

</details>
## Syntax

```powershell
GenerateMasonryLayoutHtml -Images <Object> [[-FilePath] <String>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-CanDelete] [-CanEdit] [-Description <String>] [-EmbedImages] [-ImageUrlPrefix <String>] [-MaxPrintImages <Int32>] [-PageSize <Int32>] [-RootMargin <String>] [-ShowOnlyPictures] [-SingleColumnMode] [-Threshold <Double>] [-Title <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Images` | Object | ✅ | — | 0 | — | Array of image objects with path, keywords and description |
| `-FilePath` | String | — | — | 1 | `$null` | 生成的HTML文件输出路径 |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | 画廊标题 |
| `-Description` | String | — | — | Named | `'Hover over images to see face recognition, object detection, and scene classification data'` | 画廊的描述 |
| `-CanEdit` | SwitchParameter | — | — | Named | `$false` | 是否启用编辑 |
| `-CanDelete` | SwitchParameter | — | — | Named | `$false` | 是否启用删除 |
| `-EmbedImages` | SwitchParameter | — | — | Named | `$false` | 将图片以 base64 数据 URL 的形式嵌入，而非 file:// URL，以提高可移植性。 |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Show only pictures in a rounded rectangle, no text below. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | 按此速率（像素/秒）自动滚动页面（设为 null 可禁用） |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | 在可见范围内动画化矩形（物体/面），每300ms循环一次 |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | 强制单列布局（居中，1/3屏幕宽度） |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | 要添加到每个图像路径前的前缀（例如用于远程URL） |
| `-PageSize` | Int32 | — | — | Named | `20` | 每页加载的图像数量（用于动态加载） |
| `-MaxPrintImages` | Int32 | — | — | Named | `50` | 打印模式下加载的最大图像数量 |
| `-RootMargin` | String | — | — | Named | `'1200px'` | 用于无限滚动触发的IntersectionObserver rootMargin（例如"1200px"） |
| `-Threshold` | Double | — | — | Named | `0.1` | 用于无限滚动触发的 IntersectionObserver 阈值 |

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
