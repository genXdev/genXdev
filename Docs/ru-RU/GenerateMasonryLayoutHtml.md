# GenerateMasonryLayoutHtml

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> <div class="masonry-gallery">
  <div class="masonry-item"><img src="image1.jpg" alt="Image 1"></div>
  <div class="masonry-item"><img src="image2.jpg" alt="Image 2"></div>
  <div class="masonry-item"><img src="image3.jpg" alt="Image 3"></div>
  <div class="masonry-item"><img src="image4.jpg" alt="Image 4"></div>
</div>
<style>
  .masonry-gallery {
    column-count: 3;
    column-gap: 10px;
  }
  .masonry-item {
    break-inside: avoid;
    margin-bottom: 10px;
  }
  .masonry-item img {
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

Создает интерактивную HTML-галерею с адаптивной сеткой в стиле masonry для отображения изображений. Возможности включают:
- Адаптивная сетка, подстраивающаяся под размер экрана
- Всплывающие подсказки с описаниями и ключевыми словами
- Функция копирования пути к изображению по клику
- Чистый современный стиль с эффектами при наведении

## Syntax

```powershell
GenerateMasonryLayoutHtml -Images <Object> [[-FilePath] <String>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-CanDelete] [-CanEdit] [-Description <String>] [-EmbedImages] [-ImageUrlPrefix <String>] [-MaxPrintImages <Int32>] [-PageSize <Int32>] [-RootMargin <String>] [-ShowOnlyPictures] [-SingleColumnMode] [-Threshold <Double>] [-Title <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Images` | Object | ✅ | — | 0 | — | Array of image objects with path, keywords and description |
| `-FilePath` | String | — | — | 1 | `$null` | Путь вывода для сгенерированного HTML-файла |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Заголовок для галереи |
| `-Description` | String | — | — | Named | `'Hover over images to see face recognition, object detection, and scene classification data'` | Описание для галереи |
| `-CanEdit` | SwitchParameter | — | — | Named | `$false` | Редактирование включено |
| `-CanDelete` | SwitchParameter | — | — | Named | `$false` | Включено ли удаление |
| `-EmbedImages` | SwitchParameter | — | — | Named | `$false` | Встраивайте изображения в виде URL-адресов с данными base64 вместо URL-адресов с протоколом file:// для лучшей переносимости |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Show only pictures in a rounded rectangle, no text below. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Автоматическая прокрутка страницы на это количество пикселей в секунду (null для отключения) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Анимировать прямоугольники (объекты/грани) в видимой области, циклически с интервалом 300 мс |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Принудительный одноколоночный макет (по центру, 1/3 ширины экрана) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Префикс для добавления к каждому пути к изображению (например, для удаленных URL-адресов) |
| `-PageSize` | Int32 | — | — | Named | `20` | Количество изображений для загрузки на страницу (для динамической загрузки) |
| `-MaxPrintImages` | Int32 | — | — | Named | `50` | Максимальное количество изображений для загрузки в режиме печати |
| `-RootMargin` | String | — | — | Named | `'1200px'` | IntersectionObserver rootMargin для триггера бесконечной прокрутки (например, "1200px") |
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
