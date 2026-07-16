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

## Outputs

- `String`

## Related Links

- [GenerateMasonryLayoutHtml on GitHub](https://github.com/genXdev/genXdev)
