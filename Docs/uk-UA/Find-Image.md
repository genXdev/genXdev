# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages`, `li`

## Synopsis

> Шукає файли зображень та метадані у вказаних каталогах з можливостями фільтрації та опціональним відображенням галереї через браузер.

## Description

Виконує пошук файлів зображень (jpg, jpeg, png, gif, bmp, webp, tiff, tif) у вказаній директорії та її піддиректоріях. Для кожного зображення перевіряє пов'язані файли метаданих description.json, keywords.json, people.json та objects.json. Може фільтрувати зображення за збігом ключових слів, розпізнаванням людей та виявленням об'єктів, після чого повертає результати у вигляді об'єктів. Використовуйте -ShowInBrowser для відображення результатів у браузерному макеті кладки.

Логіка параметрів:
- В межах кожного типу параметрів (Keywords, People, Objects тощо): використовується логіка АБО
  Приклад: -Keywords "кіт","собака" знаходить зображення з КИТОМ АБО СОБАКОЮ
- Між різними типами параметрів: використовується логіка І
  Приклад: -Keywords "кіт" -People "Іван" знаходить зображення з котом ТА Іваном
- Параметри діапазону EXIF: вкажіть значення [min, max] для фільтрації діапазонів
- Рядкові параметри: підтримують відповідність за маскою з * та ?

Функція виконує пошук у каталогах зображень та перевіряє альтернативні потоки даних, що містять метадані у форматі JSON. Вона може зіставляти ключові слова за допомогою шаблонів із символами підстановки, фільтрувати за конкретними людьми та шукати виявлені об'єкти. За замовчуванням повертає об'єкти даних зображення. Використовуйте -ShowInBrowser для відображення у веб-браузері.

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Headless] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Відповідатиме будь-якому з усіх можливих типів метаданих. |
| `-Name` | String[] | — | — | 1 | `@('.\')` | Масив шляхів до каталогів для пошуку зображень |
| `-Language` | String | — | — | Named | — | Мова для описів та ключових слів. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | ('Текст опису для пошуку, символи підстановки ' +
                'дозволені.) |
| `-Keywords` | String[] | — | — | Named | `@()` | Ключові слова для пошуку, дозволено символи підстановки. |
| `-People` | String[] | — | — | Named | `@()` | Люди для пошуку, замінники дозволені. |
| `-Objects` | String[] | — | — | Named | `@()` | Об'єкти для пошуку, дозволені символи підстановки. |
| `-Scenes` | String[] | — | — | Named | `@()` | Категорії сцен для пошуку, можна використовувати символи підстановки. |
| `-PictureType` | String[] | — | — | Named | `@()` | Тип зображення для фільтрації (наприклад, 'денне світло', 'вечір', 'приміщення' тощо). Підтримує символи підстановки. |
| `-StyleType` | String[] | — | — | Named | `@()` | Тип стилю для фільтрації (наприклад, 'casual', 'formal' тощо). Підтримує символи підстановки. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Загальний настрій для фільтрації (наприклад, «спокійний», «веселий», «сумний» тощо). Підтримуються символи підстановки. |
| `-MetaCameraMake` | String[] | — | — | Named | `@()` | Фільтрувати за маркою камери в метаданих EXIF зображень. Підтримує символи підстановки. |
| `-MetaCameraModel` | String[] | — | — | Named | `@()` | Фільтрувати за моделлю камери в метаданих EXIF зображення. Підтримує символи підстановки. |
| `-MetaGPSLatitude` | Double[] | — | — | Named | — | Фільтрувати за діапазоном широти GPS у метаданих EXIF зображення. |
| `-MetaGPSLongitude` | Double[] | — | — | Named | — | Фільтрувати за діапазоном довготи GPS в метаданих EXIF зображення. |
| `-MetaGPSAltitude` | Double[] | — | — | Named | — | Фільтрувати за діапазоном висоти GPS у метаданих EXIF зображення (в метрах). |
| `-GeoLocation` | Double[] | — | — | Named | — | Географічні координати [широта, довгота] для пошуку поблизу. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | Максимальна відстань у метрах від координат для пошуку зображень. |
| `-MetaExposureTime` | Double[] | — | — | Named | — | Фільтрувати за діапазоном часу експозиції в метаданих EXIF зображення (у секундах). |
| `-MetaFNumber` | Double[] | — | — | Named | — | Фільтрувати за діапазоном F-числа (діафрагми) в метаданих EXIF зображення. |
| `-MetaISO` | Int32[] | — | — | Named | — | Фільтрувати за діапазоном чутливості ISO в метаданих EXIF зображення. |
| `-MetaFocalLength` | Double[] | — | — | Named | — | Фільтрувати за діапазоном фокусної відстані в метаданих EXIF зображення (у мм). |
| `-MetaWidth` | Int32[] | — | — | Named | — | Фільтрувати за діапазоном ширини зображення в пікселях з метаданих EXIF. |
| `-MetaHeight` | Int32[] | — | — | Named | — | Фільтрувати за діапазоном висоти зображення в пікселях з метаданих EXIF. |
| `-MetaDateTaken` | DateTime[] | — | — | Named | — | Фільтрувати за датою зйомки з метаданих EXIF. Може бути діапазон дат. |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Назва для галереї |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | Опис для галереї |
| `-AcceptLang` | String | — | — | Named | `$null` | Встановити HTTP-заголовок accept-lang у браузері |
| `-KeysToSend` | String[] | — | — | Named | — | Клавіші для надсилання у вікно браузера, дивіться документацію для командлета GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Екранувати керуючі символи та модифікатори під час відправлення клавіш |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Запобігання повернення фокусу клавіатури до PowerShell після надсилання клавіш |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Використовуйте Shift+Enter замість Enter під час надсилання клавіш |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Затримка між різними вхідними рядками в мілісекундах під час відправлення клавіш |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Зосередити вікно браузера після відкриття |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Перевести вікно браузера на передній план після відкриття |
| `-Maximize` | SwitchParameter | — | — | Named | — | Збільшити вікно після позиціонування |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Відновити нормальний стан вікна після позиціонування |
| `-Monitor` | Int32 | — | — | Named | `-2` | Монітор для використання, 0 = за замовчуванням, -1 = ігнорувати, -2 = налаштований додатковий монітор, за замовчуванням використовується `Global:DefaultSecondaryMonitor` або 2, якщо не знайдено. |
| `-Width` | Int32 | — | — | Named | `-1` | Початкова ширина вікна веб-оглядача |
| `-Height` | Int32 | — | — | Named | `-1` | Початкова висота вікна веб-браузера |
| `-X` | Int32 | — | — | Named | `-999999` | Початкове положення X вікна веб-браузера |
| `-Y` | Int32 | — | — | Named | `-999999` | Початкове положення Y вікна веб-браузера |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Шлях до бази даних для файлів налаштувань |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | Вбудовуйте зображення як base64. |
| `-NoFallback` | SwitchParameter | — | — | Named | — | Перемикач для вимкнення поведінки резервного копіювання (fallback). |
| `-NeverRebuild` | SwitchParameter | — | — | Named | — | Перемикач, щоб пропустити ініціалізацію бази даних та перебудову. |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Пошук на всіх доступних дисках |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Не входити до підкаталогів |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Переходити за символьними посиланнями та точками з'єднання під час обходу каталогу. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Максимальна глибина рекурсії для обходу каталогів. 0 означає необмежено. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Максимальна глибина рекурсії для продовження пошуку вгору по дереву для відносних пошуків, поки не знайдено елементів. 0 означає вимкнено. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Максимальний розмір файлу в байтах для включення в результати. 0 означає без обмежень. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Мінімальний розмір файлу в байтах для включення в результати. 0 означає без мінімуму. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Включати лише файли, змінені після цієї дати/часу (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Включати лише файли, змінені до цієї дати/часу (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Атрибути файлів для пропуску (наприклад, System, Hidden або None). |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Фільтруйте зображення, що містять оголеність. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Відфільтрувати зображення, які НЕ містять оголеності. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | Фільтрувати зображення, що містять відвертий вміст. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Відфільтруйте зображення, які НЕ містять відвертого контенту. |
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | Відобразити результати пошуку у браузерній галереї зображень. |
| `-PassThru` | SwitchParameter | — | — | Named | — | 'Повертає дані зображень як об'єкти. При використанні з ' +
                '-ShowInBrowser, одночасно відображає галерею та повертає ' +
                'об'єкти.' |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Видалити межі вікна та рядок заголовка для більш чистого вигляду |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Розмістіть вікно браузера поруч із PowerShell на одному моніторі |
| `-Interactive` | SwitchParameter | — | — | Named | — | Підключатиметься до браузера та додаватиме додаткові кнопки, наприклад, Редагувати та Видалити. Ефективно лише при використанні з -ShowInBrowser. |
| `-Private` | SwitchParameter | — | — | Named | — | Відкривається в режимі інкогніто/приватного перегляду |
| `-Force` | SwitchParameter | — | — | Named | — | Примусово увімкнути порт налагодження, зупинивши існуючі браузери, якщо це необхідно |
| `-Edge` | SwitchParameter | — | — | Named | — | Відкривається в Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Відкривається в Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Відкривається в Microsoft Edge або Google Chrome, залежно від того, який браузер є типовим |
| `-Firefox` | SwitchParameter | — | — | Named | — | Відкриває в Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Використовувати браузер, керований Playwright, замість браузера, встановленого в ОС |
| `-Webkit` | SwitchParameter | — | — | Named | — | Відкриває керований Playwright браузер WebKit. Передбачає -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Запустити браузер без видимого вікна |
| `-All` | SwitchParameter | — | — | Named | — | Відкривається у всіх зареєстрованих сучасних браузерах |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Відкривається в режимі повного екрана |
| `-Left` | SwitchParameter | — | — | Named | — | Розмістити вікно браузера в лівій частині екрана |
| `-Right` | SwitchParameter | — | — | Named | — | Розмістити вікно браузера в правій частині екрана |
| `-Top` | SwitchParameter | — | — | Named | — | Розмістити вікно браузера у верхній частині екрану |
| `-Bottom` | SwitchParameter | — | — | Named | — | Розмістити вікно браузера в нижній частині екрана |
| `-Centered` | SwitchParameter | — | — | Named | — | Розмістити вікно браузера в центрі екрана |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Приховати елементи керування браузером |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Запобігання завантаженню розширень браузера |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Вимкнути блокування спливаючих вікон |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Відновити фокус вікна PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Не використовуйте повторно існуюче вікно браузера, натомість створіть нове. |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | ('Лише повертати згенерований HTML, а не ' +
                'відображати його в браузері.') |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | 'Показати лише зображення у заокругленому прямокутнику, без тексту знизу.' |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Використовувати альтернативні налаштування, що зберігаються в сеансі, для вподобань AI, як-от мова, колекції зображень тощо |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очищає альтернативні налаштування, збережені в сесії для параметрів ШІ, таких як мова, колекції зображень тощо. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Не використовуйте альтернативні налаштування, що зберігаються в сесії, для уподобань ШІ, таких як мова, колекції зображень тощо |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Автоматично прокручувати сторінку на цю кількість пікселів за секунду (null для вимкнення) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Анімувати прямокутники (об'єкти/грані) у видимому діапазоні, циклічно кожні 300 мс |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Примусове одноколонкове розташування (центроване, 1/3 ширини екрана) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Префікс для додавання до кожного шляху зображення (наприклад, для віддалених URL-адрес) |
| `-MinConfidenceRatio` | Double | — | — | Named | — | Мінімальний коефіцієнт впевненості (0.0-1.0) для фільтрації людей, сцен та об'єктів за впевненістю. Повертає дані лише для людей, сцен та об'єктів з впевненістю більшою або рівною цьому значенню. |

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

## Parameter Details

### `-Any <String[]>`

> Відповідатиме будь-якому з усіх можливих типів метаданих.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Name <String[]>`

> Масив шляхів до каталогів для пошуку зображень

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@('.\')` |
| **Accept pipeline input?** | False |
| **Aliases** | `imagespath`, `directories`, `imgdirs`, `imagedirectory`, `ImageDirectories` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Мова для описів та ключових слів.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DescriptionSearch <String[]>`

> ('Текст опису для пошуку, символи підстановки ' +
                'дозволені.)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Keywords <String[]>`

> Ключові слова для пошуку, дозволено символи підстановки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-People <String[]>`

> Люди для пошуку, замінники дозволені.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Objects <String[]>`

> Об'єкти для пошуку, дозволені символи підстановки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Scenes <String[]>`

> Категорії сцен для пошуку, можна використовувати символи підстановки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PictureType <String[]>`

> Тип зображення для фільтрації (наприклад, 'денне світло', 'вечір', 'приміщення' тощо). Підтримує символи підстановки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StyleType <String[]>`

> Тип стилю для фільтрації (наприклад, 'casual', 'formal' тощо). Підтримує символи підстановки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OverallMood <String[]>`

> Загальний настрій для фільтрації (наприклад, «спокійний», «веселий», «сумний» тощо). Підтримуються символи підстановки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaCameraMake <String[]>`

> Фільтрувати за маркою камери в метаданих EXIF зображень. Підтримує символи підстановки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaCameraModel <String[]>`

> Фільтрувати за моделлю камери в метаданих EXIF зображення. Підтримує символи підстановки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaGPSLatitude <Double[]>`

> Фільтрувати за діапазоном широти GPS у метаданих EXIF зображення.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaGPSLongitude <Double[]>`

> Фільтрувати за діапазоном довготи GPS в метаданих EXIF зображення.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaGPSAltitude <Double[]>`

> Фільтрувати за діапазоном висоти GPS у метаданих EXIF зображення (в метрах).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GeoLocation <Double[]>`

> Географічні координати [широта, довгота] для пошуку поблизу.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GeoDistanceInMeters <Double>`

> Максимальна відстань у метрах від координат для пошуку зображень.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaExposureTime <Double[]>`

> Фільтрувати за діапазоном часу експозиції в метаданих EXIF зображення (у секундах).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaFNumber <Double[]>`

> Фільтрувати за діапазоном F-числа (діафрагми) в метаданих EXIF зображення.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaISO <Int32[]>`

> Фільтрувати за діапазоном чутливості ISO в метаданих EXIF зображення.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaFocalLength <Double[]>`

> Фільтрувати за діапазоном фокусної відстані в метаданих EXIF зображення (у мм).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaWidth <Int32[]>`

> Фільтрувати за діапазоном ширини зображення в пікселях з метаданих EXIF.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaHeight <Int32[]>`

> Фільтрувати за діапазоном висоти зображення в пікселях з метаданих EXIF.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaDateTaken <DateTime[]>`

> Фільтрувати за датою зйомки з метаданих EXIF. Може бути діапазон дат.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Title <String>`

> Назва для галереї

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Photo Gallery'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Description <String>`

> Опис для галереї

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `('Hover over images to see face recognition ' +
            'and object detection data')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> Встановити HTTP-заголовок accept-lang у браузері

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Клавіші для надсилання у вікно браузера, дивіться документацію для командлета GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Екранувати керуючі символи та модифікатори під час відправлення клавіш

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Запобігання повернення фокусу клавіатури до PowerShell після надсилання клавіш

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Використовуйте Shift+Enter замість Enter під час надсилання клавіш

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Затримка між різними вхідними рядками в мілісекундах під час відправлення клавіш

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Зосередити вікно браузера після відкриття

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> Перевести вікно браузера на передній план після відкриття

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> Збільшити вікно після позиціонування

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetRestored`

> Відновити нормальний стан вікна після позиціонування

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> Монітор для використання, 0 = за замовчуванням, -1 = ігнорувати, -2 = налаштований додатковий монітор, за замовчуванням використовується `Global:DefaultSecondaryMonitor` або 2, якщо не знайдено.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Початкова ширина вікна веб-оглядача

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Початкова висота вікна веб-браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> Початкове положення X вікна веб-браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> Початкове положення Y вікна веб-браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Шлях до бази даних для файлів налаштувань

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-EmbedImages`

> Вбудовуйте зображення як base64.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoFallback`

> Перемикач для вимкнення поведінки резервного копіювання (fallback).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NeverRebuild`

> Перемикач, щоб пропустити ініціалізацію бази даних та перебудову.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllDrives`

> Пошук на всіх доступних дисках

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> Не входити до підкаталогів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> Переходити за символьними посиланнями та точками з'єднання під час обходу каталогу.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRecursionDepth <Int32>`

> Максимальна глибина рекурсії для обходу каталогів. 0 означає необмежено.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `md`, `depth`, `maxdepth` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSearchUpDepth <Int32>`

> Максимальна глибина рекурсії для продовження пошуку вгору по дереву для відносних пошуків, поки не знайдено елементів. 0 означає вимкнено.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxupward` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int64>`

> Максимальний розмір файлу в байтах для включення в результати. 0 означає без обмежень.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxlength`, `maxsize` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileSize <Int64>`

> Мінімальний розмір файлу в байтах для включення в результати. 0 означає без мінімуму.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `minsize`, `minlength` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedAfter <DateTime>`

> Включати лише файли, змінені після цієї дати/часу (UTC).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ma`, `after` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedBefore <DateTime>`

> Включати лише файли, змінені до цієї дати/часу (UTC).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `before`, `mb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributesToSkip <IO.FileAttributes>`

> Атрибути файлів для пропуску (наприклад, System, Hidden або None).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.FileAttributes]::System` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-HasNudity`

> Фільтруйте зображення, що містять оголеність.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoNudity`

> Відфільтрувати зображення, які НЕ містять оголеності.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HasExplicitContent`

> Фільтрувати зображення, що містять відвертий вміст.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoExplicitContent`

> Відфільтруйте зображення, які НЕ містять відвертого контенту.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowInBrowser`

> Відобразити результати пошуку у браузерній галереї зображень.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `show`, `s` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> 'Повертає дані зображень як об'єкти. При використанні з ' +
                '-ShowInBrowser, одночасно відображає галерею та повертає ' +
                'об'єкти.'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Видалити межі вікна та рядок заголовка для більш чистого вигляду

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Розмістіть вікно браузера поруч із PowerShell на одному моніторі

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Interactive`

> Підключатиметься до браузера та додаватиме додаткові кнопки, наприклад, Редагувати та Видалити. Ефективно лише при використанні з -ShowInBrowser.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `i`, `editimages` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> Відкривається в режимі інкогніто/приватного перегляду

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Примусово увімкнути порт налагодження, зупинивши існуючі браузери, якщо це необхідно

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> Відкривається в Microsoft Edge

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Відкривається в Google Chrome

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> Відкривається в Microsoft Edge або Google Chrome, залежно від того, який браузер є типовим

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> Відкриває в Firefox

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> Використовувати браузер, керований Playwright, замість браузера, встановленого в ОС

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Відкриває керований Playwright браузер WebKit. Передбачає -PlayWright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> Запустити браузер без видимого вікна

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> Відкривається у всіх зареєстрованих сучасних браузерах

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> Відкривається в режимі повного екрана

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> Розмістити вікно браузера в лівій частині екрана

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> Розмістити вікно браузера в правій частині екрана

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Top`

> Розмістити вікно браузера у верхній частині екрану

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> Розмістити вікно браузера в нижній частині екрана

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Розмістити вікно браузера в центрі екрана

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> Приховати елементи керування браузером

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBrowserExtensions`

> Запобігання завантаженню розширень браузера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisablePopupBlocker`

> Вимкнути блокування спливаючих вікон

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Відновити фокус вікна PowerShell

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> Не використовуйте повторно існуюче вікно браузера, натомість створіть нове.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyReturnHtml`

> ('Лише повертати згенерований HTML, а не ' +
                'відображати його в браузері.')

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowOnlyPictures`

> 'Показати лише зображення у заокругленому прямокутнику, без тексту знизу.'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoMetadata`, `OnlyPictures` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Використовувати альтернативні налаштування, що зберігаються в сеансі, для вподобань AI, як-от мова, колекції зображень тощо

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Очищає альтернативні налаштування, збережені в сесії для параметрів ШІ, таких як мова, колекції зображень тощо.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Не використовуйте альтернативні налаштування, що зберігаються в сесії, для уподобань ШІ, таких як мова, колекції зображень тощо

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoScrollPixelsPerSecond <Int32>`

> Автоматично прокручувати сторінку на цю кількість пікселів за секунду (null для вимкнення)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoAnimateRectangles`

> Анімувати прямокутники (об'єкти/грані) у видимому діапазоні, циклічно кожні 300 мс

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleColumnMode`

> Примусове одноколонкове розташування (центроване, 1/3 ширини екрана)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageUrlPrefix <String>`

> Префікс для додавання до кожного шляху зображення (наприклад, для віддалених URL-адрес)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinConfidenceRatio <Double>`

> Мінімальний коефіцієнт впевненості (0.0-1.0) для фільтрації людей, сцен та об'єктів за впевненістю. Повертає дані лише для людей, сцен та об'єктів з впевненістю більшою або рівною цьому значенню.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertTo-DiplomaticSpeak.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Update-AllImageMetaData.md)
