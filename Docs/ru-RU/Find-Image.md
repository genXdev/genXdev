# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages, `li

## Synopsis

> Выполняет поиск файлов изображений и метаданных в указанных каталогах с возможностями фильтрации и опциональным отображением галереи в браузере.

## Description

Выполняет поиск файлов изображений (jpg, jpeg, png, gif, bmp, webp, tiff, tif) в указанной директории и ее поддиректориях. Для каждого изображения проверяет связанные файлы description.json, keywords.json, people.json и objects.json на наличие метаданных. Может фильтровать изображения на основе совпадений ключевых слов, распознавания людей и обнаружения объектов, затем возвращать результаты в виде объектов. Используйте -ShowInBrowser для отображения результатов в браузерной плиточной раскладке.

Логика параметров:
- Внутри каждого типа параметров (Keywords, People, Objects и т.д.): используется логика ИЛИ
  Пример: -Keywords "cat","dog" находит изображения с КОШКОЙ ИЛИ СОБАКОЙ
- Между разными типами параметров: используется логика И
  Пример: -Keywords "cat" -People "John" находит изображения с кошкой И Джоном
- Параметры диапазона EXIF: укажите значения [min, max] для фильтрации диапазонов
- Строковые параметры: поддерживают подстановку с помощью * и ?

Функция просматривает директории изображений и проверяет альтернативные потоки данных, содержащие метаданные в формате JSON. Она может сопоставлять ключевые слова с использованием шаблонов подстановки, фильтровать по конкретным людям и искать обнаруженные объекты. По умолчанию возвращает объекты данных изображений. Используйте -ShowInBrowser для отображения в веб-браузере.

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Headless] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Будет соответствовать любому из всех возможных типов метаданных. |
| `-Name` | String[] | — | — | 1 | `@('.\')` | Массив путей к каталогам для поиска изображений |
| `-Language` | String | — | — | Named | — | Язык для описаний и ключевых слов. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | The `-DescriptionSearch` parameter. |
| `-Keywords` | String[] | — | — | Named | `@()` | Ключевые слова для поиска, подстановочные знаки разрешены. |
| `-People` | String[] | — | — | Named | `@()` | Люди для поиска, разрешены подстановочные знаки. |
| `-Objects` | String[] | — | — | Named | `@()` | Объекты для поиска, допускаются подстановочные символы. |
| `-Scenes` | String[] | — | — | Named | `@()` | Категории сцен для поиска, допустимы подстановочные знаки. |
| `-PictureType` | String[] | — | — | Named | `@()` | The `-PictureType` parameter. |
| `-StyleType` | String[] | — | — | Named | `@()` | Тип стиля для фильтрации (например, 'casual', 'formal' и т.д.). Поддерживает подстановочные знаки. |
| `-OverallMood` | String[] | — | — | Named | `@()` | The `-OverallMood` parameter. |
| `-MetaCameraMake` | String[] | — | — | Named | `@()` | Filter by camera manufacturer in image EXIF data. Supports wildcards. |
| `-MetaCameraModel` | String[] | — | — | Named | `@()` | Filter by camera model in image EXIF metadata. Supports wildcards. |
| `-MetaGPSLatitude` | Double[] | — | — | Named | — | Фильтровать по диапазону широты GPS в EXIF-метаданных изображения. |
| `-MetaGPSLongitude` | Double[] | — | — | Named | — | Filter by GPS longitude range in image EXIF metadata. |
| `-MetaGPSAltitude` | Double[] | — | — | Named | — | Фильтр по диапазону высоты GPS в EXIF-метаданных изображения (в метрах). |
| `-GeoLocation` | Double[] | — | — | Named | — | Географические координаты [широта, долгота] для поиска рядом. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | Максимальное расстояние в метрах от GeoLocation для поиска изображений. |
| `-MetaExposureTime` | Double[] | — | — | Named | — | Filter by exposure time range in image EXIF metadata (in seconds). |
| `-MetaFNumber` | Double[] | — | — | Named | — | Filter by F-number (aperture) range in image EXIF metadata. |
| `-MetaISO` | Int32[] | — | — | Named | — | Фильтр по диапазону чувствительности ISO в метаданных EXIF изображения. |
| `-MetaFocalLength` | Double[] | — | — | Named | — | Фильтр по диапазону фокусных расстояний в EXIF-метаданных изображения (в мм). |
| `-MetaWidth` | Int32[] | — | — | Named | — | Фильтровать по диапазону ширины изображения в пикселях из EXIF-метаданных. |
| `-MetaHeight` | Int32[] | — | — | Named | — | Filter by image height range in pixels from EXIF metadata. |
| `-MetaDateTaken` | DateTime[] | — | — | Named | — | Фильтр по дате съемки из EXIF-метаданных. Можно указать диапазон дат. |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Заголовок для галереи |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | Описание для галереи |
| `-AcceptLang` | String | — | — | Named | `$null` | Установить HTTP-заголовок accept-language браузера |
| `-KeysToSend` | String[] | — | — | Named | — | ('Клавиши для отправки в окно браузера, ' +
                'см. документацию по командлету GenXdev\Send-Key') |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Экранируйте управляющие символы и модификаторы при отправке клавиш |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Предотвратить возврат фокуса клавиатуры в PowerShell после отправки клавиш |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | ('Используйте Shift+Enter вместо Enter при отправке ' +
                'ключей') |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | ('Задержка между различными входными строками в ' +
                'миллисекундах при отправке клавиш') |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Сфокусировать окно браузера после открытия |
| `-SetForeground` | SwitchParameter | — | — | Named | — | После открытия перевести окно браузера на передний план |
| `-Maximize` | SwitchParameter | — | — | Named | — | После позиционирования разверните окно |
| `-SetRestored` | SwitchParameter | — | — | Named | — | После позиционирования вернуть окно в нормальное состояние |
| `-Monitor` | Int32 | — | — | Named | `-2` | Монитор для использования: 0 = по умолчанию, -1 = игнорировать, -2 = настроенный вторичный монитор, по умолчанию используется 'Global:DefaultSecondaryMonitor' или 2, если не найден. |
| `-Width` | Int32 | — | — | Named | `-1` | Начальная ширина окна веб-браузера |
| `-Height` | Int32 | — | — | Named | `-1` | Начальная высота окна веб-браузера |
| `-X` | Int32 | — | — | Named | `-999999` | Начальная позиция X окна веб-браузера |
| `-Y` | Int32 | — | — | Named | `-999999` | Начальная Y-позиция окна веб-браузера |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | Встраивайте изображения в формате base64. |
| `-NoFallback` | SwitchParameter | — | — | Named | — | Переключатель для отключения поведения отката. |
| `-NeverRebuild` | SwitchParameter | — | — | Named | — | Переключатель для пропуска инициализации и перестроения базы данных. |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Выполнить поиск по всем доступным дискам |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Не рекурсировать в подкаталоги |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Следуйте по симлинкам и переходам во время обхода каталогов. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Максимальная глубина рекурсии для обхода директорий. 0 означает без ограничений. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Максимальная глубина рекурсии для продолжения поиска вверх по дереву при относительных поисках, пока не будут найдены элементы. 0 означает отключено. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Максимальный размер файла в байтах для включения в результаты. 0 означает без ограничений. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Минимальный размер файла в байтах для включения в результаты. 0 означает отсутствие минимума. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Включать только файлы, измененные после этой даты/времени (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Включать только файлы, изменённые до этой даты/времени (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Атрибуты файлов для пропуска (например, «Системный», «Скрытый» или «Нет»). |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filter images that contain nudity. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain nudity. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | Filter images that contain explicit content. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain explicit content. |
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | Отобразить результаты поиска в браузерной галерее изображений. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Возвращает данные изображения в виде объектов. При использовании с 
                -ShowInBrowser одновременно отображает галерею и возвращает 
                объекты. |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove window borders and title bar for a cleaner appearance |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Разместите окно браузера и PowerShell рядом на одном мониторе |
| `-Interactive` | SwitchParameter | — | — | Named | — | Подключится к браузеру и добавит дополнительные кнопки, такие как Редактировать и Удалить. Работает только при использовании с -ShowInBrowser. |
| `-Private` | SwitchParameter | — | — | Named | — | Открывается в режиме инкогнито/частного просмотра |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительно включить отладочный порт, остановив существующие браузеры при необходимости |
| `-Edge` | SwitchParameter | — | — | Named | — | Открывается в Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Открывается в Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Открывается в Microsoft Edge или Google Chrome, в зависимости от того, какой браузер установлен по умолчанию |
| `-Firefox` | SwitchParameter | — | — | Named | — | Открывается в Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Использовать браузер, управляемый Playwright, вместо установленного в ОС браузера |
| `-Webkit` | SwitchParameter | — | — | Named | — | Открывает управляемый Playwright браузер WebKit. Включает -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Запустите браузер без видимого окна |
| `-All` | SwitchParameter | — | — | Named | — | Открывается во всех зарегистрированных современных браузерах |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Открывается в полноэкранном режиме |
| `-Left` | SwitchParameter | — | — | Named | — | Разместите окно браузера в левой части экрана |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Разместите окно браузера в верхней части экрана |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Поместить окно браузера в центр экрана |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Скрыть элементы управления браузером |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Предотвращение загрузки расширений браузера |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Отключите блокировку всплывающих окон |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Восстановить фокус окна PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Не используйте повторно существующее окно браузера, вместо этого создайте новое |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | ('Только вернуть сгенерированный HTML, а не отображать его в браузере.') |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Показывать только изображения в скругленном прямоугольнике, без текста внизу. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, сохраненные в сеансе, для предпочтений ИИ, таких как язык, коллекции изображений и т. д. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистить альтернативные настройки, сохраненные в сессии для предпочтений ИИ, таких как язык, коллекции изображений и т. д. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Не используйте альтернативные настройки, сохраненные в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т.д. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Автоматическая прокрутка страницы на это количество пикселей в секунду (null для отключения) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Анимировать прямоугольники (объекты/грани) в видимой области, циклически с интервалом 300 мс |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Принудительный одноколоночный макет (по центру, 1/3 ширины экрана) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Префикс для добавления к каждому пути к изображению (например, для удаленных URL-адресов) |
| `-MinConfidenceRatio` | Double | — | — | Named | — | Минимальный коэффициент уверенности (0.0-1.0) для фильтрации людей, сцен и объектов по уверенности. Возвращает данные только для людей, сцен и объектов, уверенность в которых больше или равна этому значению. |

## Examples

### Find-Image -Keywords "cat","dog" -Name "C:\Photos\*" Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.

```powershell
Find-Image -Keywords "cat","dog" -Name "C:\Photos\*"
Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.
```

### findimages cat,dog "C:\Photos" Same as above using the alias and positional parameters.

```powershell
findimages cat,dog "C:\Photos"
Same as above using the alias and positional parameters.
```

### Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser Searches for photos containing John OR Jane and displays them in a web gallery.

```powershell
Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser
Searches for photos containing John OR Jane and displays them in a web gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*" Searches for images that contain vacation keywords AND John as a person AND beach objects. All three criteria must be met (AND logic between parameter types).

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*"
Searches for images that contain vacation keywords AND John as a person AND beach objects.
All three criteria must be met (AND logic between parameter types).
```

### Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*" Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8. EXIF parameters use range filtering with [min, max] values.

```powershell
Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*"
Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8.
EXIF parameters use range filtering with [min, max] values.
```

### Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.

```powershell
Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru
Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.
```

### findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.

```powershell
findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser
Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*" Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*"
Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.
```

### Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.

```powershell
Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser
Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.
```

### Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.

```powershell
Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser
Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.
```

### Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*" Searches for daylight photos with a calm/peaceful mood and returns the image objects.

```powershell
Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*"
Searches for daylight photos with a calm/peaceful mood and returns the image objects.
```

### findimages -StyleType "casual" -HasNudity -Name "C:\Art\*" Searches for casual style images that contain nudity and returns the data objects.

```powershell
findimages -StyleType "casual" -HasNudity -Name "C:\Art\*"
Searches for casual style images that contain nudity and returns the data objects.
```

### Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*" Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.

```powershell
Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*"
Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.
```

## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Find-Image on GitHub](https://github.com/genXdev/genXdev)
