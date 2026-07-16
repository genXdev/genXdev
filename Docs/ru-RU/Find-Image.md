# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages, `li

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Будет соответствовать любому из всех возможных типов метаданных. |
| `-Name` | String[] | — | — | 1 | `@('.\')` | Массив путей к каталогам для поиска изображений |
| `-Language` | String | — | — | Named | — | Язык для описаний и ключевых слов. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | Искомый текст описания, разрешены подстановочные знаки. |
| `-Keywords` | String[] | — | — | Named | `@()` | Ключевые слова для поиска, подстановочные знаки разрешены. |
| `-People` | String[] | — | — | Named | `@()` | Люди для поиска, разрешены подстановочные знаки. |
| `-Objects` | String[] | — | — | Named | `@()` | Объекты для поиска, допускаются подстановочные символы. |
| `-Scenes` | String[] | — | — | Named | `@()` | Категории сцен для поиска, допустимы подстановочные знаки. |
| `-PictureType` | String[] | — | — | Named | `@()` | Тип изображения для фильтрации (например, 'daylight', 'evening', 'indoor' и т.д.). Поддерживает подстановочные знаки. |
| `-StyleType` | String[] | — | — | Named | `@()` | Тип стиля для фильтрации (например, 'casual', 'formal' и т.д.). Поддерживает подстановочные знаки. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Общее настроение для фильтрации (например, 'спокойное', 'веселое', 'грустное' и т.д.). Поддерживаются подстановочные знаки. |
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
| `-KeysToSend` | String[] | — | — | Named | — | Клавиши для отправки в окно браузера, смотрите документацию по командлету GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Экранируйте управляющие символы и модификаторы при отправке нажатий клавиш |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Предотвращение возврата фокуса клавиатуры в PowerShell после отправки нажатий клавиш |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Используйте Shift+Enter вместо Enter при отправке ключей |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Задержка между различными входными строками в миллисекундах при отправке ключей |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Сфокусировать окно браузера после открытия |
| `-SetForeground` | SwitchParameter | — | — | Named | — | После открытия перевести окно браузера на передний план |
| `-Maximize` | SwitchParameter | — | — | Named | — | После позиционирования разверните окно |
| `-SetRestored` | SwitchParameter | — | — | Named | — | После позиционирования вернуть окно в нормальное состояние |
| `-Monitor` | Int32 | — | — | Named | `-2` | Используемый монитор: 0 — по умолчанию, -1 — игнорировать, -2 — настроенный дополнительный монитор, по умолчанию используется Global:DefaultSecondaryMonitor или 2, если не найден. |
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
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | <div id="gallery" style="display:grid;grid-template-columns:repeat(3,1fr);gap:10px;"></div>
<script>
const searchResults = []; // assume this contains image URLs
const gallery = document.getElementById('gallery');
searchResults.forEach(url => {
    const img = document.createElement('img');
    img.src = url;
    img.style.width = '100%';
    img.style.height = '200px';
    img.style.objectFit = 'cover';
    gallery.appendChild(img);
});
</script> |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return image data as objects. When used with -ShowInBrowser, both displays the gallery and returns the objects. |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove window borders and title bar for a cleaner appearance |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Разместите окно браузера и PowerShell рядом на одном мониторе |
| `-Interactive` | SwitchParameter | — | — | Named | — | Подключается к браузеру и добавляет дополнительные кнопки, такие как Редактировать и Удалить. Действует только при использовании с -ShowInBrowser. |
| `-Private` | SwitchParameter | — | — | Named | — | Открывается в режиме инкогнито/частного просмотра |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительное включение порта отладки и остановка существующих браузеров при необходимости |
| `-Edge` | SwitchParameter | — | — | Named | — | Открывается в Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Открывается в Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Открывается в Microsoft Edge или Google Chrome, в зависимости от того, какой браузер установлен по умолчанию |
| `-Firefox` | SwitchParameter | — | — | Named | — | Открывается в Firefox |
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
| `-NewWindow` | SwitchParameter | — | — | Named | — | Не использовать существующее окно браузера, вместо этого создать новое |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | <html><body></body></html> |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Show only pictures in a rounded rectangle, no text below. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, хранящиеся в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т. д. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Удалить альтернативные настройки, сохраненные в сессии, для AI-предпочтений, таких как язык, коллекции изображений и т.д. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Не используйте альтернативные настройки, сохраненные в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т.д. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Автоматическая прокрутка страницы на это количество пикселей в секунду (null для отключения) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Анимировать прямоугольники (объекты/грани) в видимой области, циклически с интервалом 300 мс |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Принудительный одноколоночный макет (по центру, 1/3 ширины экрана) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Префикс для добавления к каждому пути к изображению (например, для удаленных URL-адресов) |
| `-MinConfidenceRatio` | Double | — | — | Named | — | Минимальный коэффициент уверенности (0.0–1.0) для фильтрации людей, сцен и объектов по уверенности. Возвращает данные только для людей, сцен и объектов с уверенностью, равной или превышающей это значение. |

## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Find-Image on GitHub](https://github.com/genXdev/genXdev)
