# Open-MediaFile

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlcmedia`, `media`, `findmedia`

## Synopsis

> Відкриває та відтворює медіафайли за допомогою медіаплеєра VLC з розширеними параметрами фільтрації та налаштування.

## Description

Ця функція сканує медіафайли на основі шаблонів пошуку, створює список відтворення та запускає медіаплеєр VLC з комплексними параметрами конфігурації. Вона підтримує відео, аудіофайли та зображення з автоматичним встановленням VLC за потреби. Функція забезпечує широкий контроль над поведінкою відтворення, позиціонуванням вікна, налаштуваннями аудіо/відео та обробкою субтитрів.

## Syntax

```powershell
Open-MediaFile [[-Name] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AllDrives] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AttributesToSkip <IO.FileAttributes>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-CaseNameMatching <IO.MatchCasing>] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-Exclude <String[]>] [-FocusWindow] [-FollowSymlinkAndJunctions] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-IncludeAlternateFileStreams] [-IncludeAudio] [-IncludePictures] [-IncludeVideos] [-InputObject <Object>] [-KeysToSend <String[]>] [-Left] [-Loop] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoRecurse] [-OnlyAudio] [-OnlyPictures] [-OnlyVideos] [-PassThru] [-PassThruNoOpen] [-PassThruWindow] [-PlayAndExit] [-PlaylistPath <String>] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-TimeoutSeconds <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | `'*'` | Ім'я файлу або шаблон для пошуку. За замовчуванням: '*' 🌐 *Supports wildcards* |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Пошук на всіх доступних дисках |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Не входити до підкаталогів |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Переходити за символьними посиланнями та точками з'єднання під час обходу каталогу. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Максимальна глибина рекурсії для продовження пошуку вгору по дереву для відносних пошуків, поки не знайдено елементів. 0 означає вимкнено. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Максимальний розмір файлу в байтах для включення в результати. 0 означає без обмежень. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Мінімальний розмір файлу в байтах для включення в результати. 0 означає без мінімуму. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Включати лише файли, змінені після цієї дати/часу (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Включати лише файли, змінені до цієї дати/часу (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Атрибути файлів для пропуску (наприклад, System, Hidden або None). |
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Ім'я файлу або шаблон для пошуку з введення каналу. За замовчуванням — "*". 🌐 *Supports wildcards* |
| `-PlaylistPath` | String | — | — | Named | `[System.IO.Path]::GetTempFileName() + '.m3u'` | Шлях до теки, у яку зберігати медіафайли зі списку відтворення. Якщо не вказано, список відтворення буде збережено у тимчасовій теці. |
| `-Width` | Int32 | — | — | 1 | `-1` | Початкова ширина вікна |
| `-Height` | Int32 | — | — | 2 | `-1` | Початкова висота вікна |
| `-X` | Int32 | — | — | 3 | `-999999` | Початкова позиція X вікна |
| `-Y` | Int32 | — | — | 4 | `-999999` | Початкова позиція Y вікна |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | — | Натискання клавіш для надсилання до вікна VLC Player, див. документацію для командлета GenXdev\Send-Key |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Максимальний ступінь паралелізму для завдань каталогу |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Необов'язково: час очікування скасування в секундах |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Екрануйте контрольні символи та модифікатори під час надсилання клавіш у VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Використовуйте Shift+Enter замість Enter під час надсилання клавіш до VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Затримка між різними вхідними рядками в мілісекундах під час надсилання клавіш у VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Утримувати фокус клавіатури на вікні VLC після надсилання клавіш |
| `-Monitor` | Int32 | — | — | Named | `-2` | Монітор для використання: 0 – стандартний, -1 – ігнорувати |
| `-AspectRatio` | String | — | — | Named | — | @{response=Співвідношення сторін джерела} |
| `-Crop` | String | — | — | Named | — | Обрізання відео |
| `-SubtitleFile` | String | — | — | Named | — | Використовуйте файл субтитрів |
| `-SubtitleScale` | Int32 | — | — | Named | — | коефіцієнт масштабування тексту субтитрів |
| `-SubtitleLanguage` | String | — | — | Named | — | Мова субтитрів |
| `-AudioLanguage` | String | — | — | Named | — | аудіомова |
| `-PreferredAudioLanguage` | String | — | — | Named | — | Бажана мова аудіо |
| `-HttpProxy` | String | — | — | Named | — | HTTP-проксі |
| `-HttpProxyPassword` | String | — | — | Named | — | Пароль проксі HTTP |
| `-VerbosityLevel` | Int32 | — | — | Named | — | Рівень докладності |
| `-SubdirectoryBehavior` | String | — | — | Named | — | Поведінка підкаталогів |
| `-IgnoredExtensions` | String | — | — | Named | — | Ігноровані розширення |
| `-VLCPath` | String | — | — | Named | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` | Шлях до виконуваного файлу VLC |
| `-ReplayGainMode` | String | — | — | Named | — | Режим посилення відтворення |
| `-ReplayGainPreamp` | Single | — | — | Named | — | Попереднє посилення відтворення |
| `-ForceDolbySurround` | String | — | — | Named | — | Примусове виявлення Dolby Surround |
| `-AudioFilters` | String[] | — | — | Named | — | Аудіофільтри |
| `-Visualization` | String | — | — | Named | — | Аудіовізуалізації |
| `-Deinterlace` | String | — | — | Named | — | Деінтерлейс |
| `-DeinterlaceMode` | String | — | — | Named | — | Режим виделишення черезрядкової розгортки |
| `-VideoFilters` | String[] | — | — | Named | — | Модуль відеофільтрів |
| `-VideoFilterModules` | String[] | — | — | Named | — | Модулі відеофільтрів |
| `-Modules` | String[] | — | — | Named | — | Модулі |
| `-AudioFilterModules` | String[] | — | — | Named | — | Модулі аудіофільтрів |
| `-AudioVisualization` | String | — | — | Named | — | Режим візуалізації аудіо |
| `-PreferredSubtitleLanguage` | String | — | — | Named | — | Бажана мова субтитрів |
| `-IgnoredFileExtensions` | String | — | — | Named | — | Ігноровані розширення файлів |
| `-Arguments` | String | — | — | Named | — | Додаткові аргументи |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Включити альтернативні потоки даних у результати пошуку |
| `-OnlyVideos` | SwitchParameter | — | — | Named | — | Включати до списку відтворення лише відеофайли. |
| `-OnlyAudio` | SwitchParameter | — | — | Named | — | @{response=Включати до списку відтворення лише аудіофайли} |
| `-OnlyPictures` | SwitchParameter | — | — | Named | — | @{response=У плейлист включайте лише зображення.} |
| `-IncludeVideos` | SwitchParameter | — | — | Named | — | Додатково включіть відео в список відтворення |
| `-IncludeAudio` | SwitchParameter | — | — | Named | — | Додатково включіть аудіофайли до списку відтворення |
| `-IncludePictures` | SwitchParameter | — | — | Named | — | Додатково включайте зображення в список відтворення |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Видаляє межі вікна |
| `-Left` | SwitchParameter | — | — | Named | — | Розмістити вікно в лівій частині екрана |
| `-Right` | SwitchParameter | — | — | Named | — | Розмістити вікно на правій стороні екрана |
| `-Top` | SwitchParameter | — | — | Named | — | Розташувати вікно у верхній частині екрану |
| `-Bottom` | SwitchParameter | — | — | Named | — | Розмістити вікно в нижній частині екрана |
| `-Centered` | SwitchParameter | — | — | Named | — | Розташувати вікно в центрі екрана |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Надсилає F11 до вікна |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | Завжди зверху |
| `-Random` | SwitchParameter | — | — | Named | — | Відтворювати файли випадковим чином безкінечно |
| `-Loop` | SwitchParameter | — | — | Named | — | Повторити все |
| `-Repeat` | SwitchParameter | — | — | Named | — | Повторити поточний елемент |
| `-StartPaused` | SwitchParameter | — | — | Named | — | Початок призупинено |
| `-PlayAndExit` | SwitchParameter | — | — | Named | — | Грати та вийти |
| `-DisableAudio` | SwitchParameter | — | — | Named | — | Вимкнути аудіо |
| `-DisableSubtitles` | SwitchParameter | — | — | Named | — | Вимкнути субтитри |
| `-AutoScale` | SwitchParameter | — | — | Named | — | Відео Автомасштабування |
| `-HighPriority` | SwitchParameter | — | — | Named | — | Збільшити пріоритет процесу |
| `-EnableTimeStretch` | SwitchParameter | — | — | Named | — | Увімкнути розтягування часу аудіо |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Відкрити новий екземпляр VLC медіаплеєра |
| `-EnableWallpaperMode` | SwitchParameter | — | — | Named | — | Увімкнути режим відео шпалер |
| `-EnableAudioTimeStretch` | SwitchParameter | — | — | Named | — | Увімкнути розтягування аудіо за часом |
| `-Close` | SwitchParameter | — | — | Named | — | Закрити вікно медіаплеєра VLC |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Встановить вікно у повноекранний режим на іншому моніторі, ніж Powershell, або поряд із Powershell на тому ж моніторі |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Сфокусувати вікно VLC після відкриття |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Помістити вікно VLC на передній план після відкриття |
| `-Maximize` | SwitchParameter | — | — | Named | — | Максимізувати вікно |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Відновлює фокус вікна PowerShell після відкриття VLC. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Використовуйте альтернативні налаштування, збережені в сеансі, для налаштування AI вподобань |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистити альтернативні налаштування, збережені в сеансі, для уподобань ШІ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Зберігати параметри лише в постійних налаштуваннях, не впливаючи на сеанс |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Отримує або задає чутливість до регістру для файлів та каталогів |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Максимальна глибина рекурсії для обходу каталогів. 0 означає необмежено. |
| `-Exclude` | String[] | — | — | Named | `@('*\\.git\\*')` | Виключати файли або каталоги, які відповідають цим шаблонам символів підстановки (наприклад, *.tmp, *\bin\*). |
| `-PassThru` | SwitchParameter | — | — | Named | — | Повертає файли, знайдені під час пошуку |
| `-PassThruNoOpen` | SwitchParameter | — | — | Named | — | Повертає знайдені файли без відкриття VLC |
| `-PassThruWindow` | SwitchParameter | — | — | Named | — | Повертає помічник вікна для кожного процесу |

## Examples

### Open-MediaFile

```powershell
Open-MediaFile
```

Відкриває всі медіафайли в поточному каталозі, використовуючи стандартні налаштування VLC.

### vlcmedia ~\Pictures -OnlyPictures -Fullscreen

```powershell
vlcmedia ~\Pictures -OnlyPictures -Fullscreen
```

Відкриває лише файли зображень із папки «Зображення» у повноекранному режимі за допомогою псевдоніма «vlcmedia».

### media ~\Videos -OnlyVideos -Loop

```powershell
media ~\Videos -OnlyVideos -Loop
```

Відкриває відеофайли з увімкненим повторенням, використовуючи псевдонім 'media'.

## Parameter Details

### `-Name <String[]>`

> Ім'я файлу або шаблон для пошуку. За замовчуванням: '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'*'` |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

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
### `-InputObject <Object>`

> Ім'я файлу або шаблон для пошуку з введення каналу. За замовчуванням — "*".

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PlaylistPath <String>`

> Шлях до теки, у яку зберігати медіафайли зі списку відтворення. Якщо не вказано, список відтворення буде збережено у тимчасовій теці.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.Path]::GetTempFileName() + '.m3u'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Початкова ширина вікна

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Початкова висота вікна

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> Початкова позиція X вікна

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> Початкова позиція Y вікна

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Натискання клавіш для надсилання до вікна VLC Player, див. документацію для командлета GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDegreeOfParallelism <Int32>`

> Максимальний ступінь паралелізму для завдань каталогу

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `threads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> Необов'язково: час очікування скасування в секундах

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `maxseconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Екрануйте контрольні символи та модифікатори під час надсилання клавіш у VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Використовуйте Shift+Enter замість Enter під час надсилання клавіш до VLC

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

> Затримка між різними вхідними рядками в мілісекундах під час надсилання клавіш у VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Утримувати фокус клавіатури на вікні VLC після надсилання клавіш

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> Монітор для використання: 0 – стандартний, -1 – ігнорувати

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AspectRatio <String>`

> @{response=Співвідношення сторін джерела}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Crop <String>`

> Обрізання відео

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleFile <String>`

> Використовуйте файл субтитрів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleScale <Int32>`

> коефіцієнт масштабування тексту субтитрів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleLanguage <String>`

> Мова субтитрів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioLanguage <String>`

> аудіомова

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferredAudioLanguage <String>`

> Бажана мова аудіо

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HttpProxy <String>`

> HTTP-проксі

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HttpProxyPassword <String>`

> Пароль проксі HTTP

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VerbosityLevel <Int32>`

> Рівень докладності

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubdirectoryBehavior <String>`

> Поведінка підкаталогів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoredExtensions <String>`

> Ігноровані розширення

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VLCPath <String>`

> Шлях до виконуваного файлу VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplayGainMode <String>`

> Режим посилення відтворення

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplayGainPreamp <Single>`

> Попереднє посилення відтворення

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceDolbySurround <String>`

> Примусове виявлення Dolby Surround

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioFilters <String[]>`

> Аудіофільтри

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Visualization <String>`

> Аудіовізуалізації

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Deinterlace <String>`

> Деінтерлейс

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DeinterlaceMode <String>`

> Режим виделишення черезрядкової розгортки

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VideoFilters <String[]>`

> Модуль відеофільтрів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VideoFilterModules <String[]>`

> Модулі відеофільтрів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Modules <String[]>`

> Модулі

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioFilterModules <String[]>`

> Модулі аудіофільтрів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioVisualization <String>`

> Режим візуалізації аудіо

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferredSubtitleLanguage <String>`

> Бажана мова субтитрів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoredFileExtensions <String>`

> Ігноровані розширення файлів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Arguments <String>`

> Додаткові аргументи

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> Включити альтернативні потоки даних у результати пошуку

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyVideos`

> Включати до списку відтворення лише відеофайли.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyAudio`

> @{response=Включати до списку відтворення лише аудіофайли}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPictures`

> @{response=У плейлист включайте лише зображення.}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeVideos`

> Додатково включіть відео в список відтворення

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAudio`

> Додатково включіть аудіофайли до списку відтворення

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludePictures`

> Додатково включайте зображення в список відтворення

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Видаляє межі вікна

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> Розмістити вікно в лівій частині екрана

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

> Розмістити вікно на правій стороні екрана

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

> Розташувати вікно у верхній частині екрану

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

> Розмістити вікно в нижній частині екрана

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

> Розташувати вікно в центрі екрана

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

> Надсилає F11 до вікна

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AlwaysOnTop`

> Завжди зверху

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Random`

> Відтворювати файли випадковим чином безкінечно

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Shuffle` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Loop`

> Повторити все

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repeat`

> Повторити поточний елемент

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StartPaused`

> Початок призупинено

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayAndExit`

> Грати та вийти

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisableAudio`

> Вимкнути аудіо

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisableSubtitles`

> Вимкнути субтитри

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoScale`

> Відео Автомасштабування

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HighPriority`

> Збільшити пріоритет процесу

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableTimeStretch`

> Увімкнути розтягування часу аудіо

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> Відкрити новий екземпляр VLC медіаплеєра

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableWallpaperMode`

> Увімкнути режим відео шпалер

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableAudioTimeStretch`

> Увімкнути розтягування аудіо за часом

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Close`

> Закрити вікно медіаплеєра VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Встановить вікно у повноекранний режим на іншому моніторі, ніж Powershell, або поряд із Powershell на тому ж моніторі

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Сфокусувати вікно VLC після відкриття

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

> Помістити вікно VLC на передній план після відкриття

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

> Максимізувати вікно

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Відновлює фокус вікна PowerShell після відкриття VLC.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Використовуйте альтернативні налаштування, збережені в сеансі, для налаштування AI вподобань

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

> Очистити альтернативні налаштування, збережені в сеансі, для уподобань ШІ

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

> Зберігати параметри лише в постійних налаштуваннях, не впливаючи на сеанс

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Отримує або задає чутливість до регістру для файлів та каталогів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.MatchCasing]::PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
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
### `-Exclude <String[]>`

> Виключати файли або каталоги, які відповідають цим шаблонам символів підстановки (наприклад, *.tmp, *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('*\\.git\\*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Повертає файли, знайдені під час пошуку

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThruNoOpen`

> Повертає знайдені файли без відкриття VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThruWindow`

> Повертає помічник вікна для кожного процесу

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-MediaFileCreationDate.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Switch-VlcMediaPlayerRepeat.md)
