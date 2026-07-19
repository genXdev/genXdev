# Open-MediaFile

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `vlcmedia, `media, `findmedia

## Synopsis

> Открывает и воспроизводит медиафайлы с помощью медиаплеера VLC с расширенными возможностями фильтрации и настройки.

## Description

Эта функция сканирует медиафайлы по шаблонам поиска, создает плейлист и запускает медиаплеер VLC с расширенными параметрами конфигурации. Она поддерживает видео, аудиофайлы и изображения с автоматической установкой VLC при необходимости. Функция предоставляет широкие возможности управления воспроизведением, положением окна, настройками аудио/видео и обработкой субтитров.

## Syntax

```powershell
Open-MediaFile [[-Name] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AllDrives] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AttributesToSkip <IO.FileAttributes>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-CaseNameMatching <IO.MatchCasing>] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-Exclude <String[]>] [-FocusWindow] [-FollowSymlinkAndJunctions] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-IncludeAlternateFileStreams] [-IncludeAudio] [-IncludePictures] [-IncludeVideos] [-InputObject <Object>] [-KeysToSend <String[]>] [-Left] [-Loop] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoRecurse] [-OnlyAudio] [-OnlyPictures] [-OnlyVideos] [-PassThru] [-PassThruNoOpen] [-PassThruWindow] [-PlayAndExit] [-PlaylistPath <String>] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-TimeoutSeconds <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | `'*'` | Имя файла или шаблон для поиска. По умолчанию '*' 🌐 *Supports wildcards* |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Выполнить поиск по всем доступным дискам |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Не рекурсировать в подкаталоги |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Следуйте по симлинкам и переходам во время обхода каталогов. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Максимальная глубина рекурсии для продолжения поиска вверх по дереву при относительных поисках, пока не будут найдены элементы. 0 означает отключено. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Максимальный размер файла в байтах для включения в результаты. 0 означает без ограничений. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Минимальный размер файла в байтах для включения в результаты. 0 означает отсутствие минимума. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Включать только файлы, измененные после этой даты/времени (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Включать только файлы, изменённые до этой даты/времени (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Атрибуты файлов для пропуска (например, «Системный», «Скрытый» или «Нет»). |
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Имя файла или шаблон для поиска из ввода конвейера. По умолчанию "*" 🌐 *Supports wildcards* |
| `-PlaylistPath` | String | — | — | Named | `[System.IO.Path]::GetTempFileName() + '.m3u'` | Путь к плейлисту для сохранения медиафайлов. Если не указан, плейлист будет сохранен во временной директории. |
| `-Width` | Int32 | — | — | 1 | `-1` | Начальная ширина окна |
| `-Height` | Int32 | — | — | 2 | `-1` | Начальная высота окна |
| `-X` | Int32 | — | — | 3 | `-999999` | Начальная позиция окна по оси X |
| `-Y` | Int32 | — | — | 4 | `-999999` | Начальная позиция окна по оси Y |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | — | Keystrokes to send to the VLC Player Window, see documentation for cmdlet GenXdev\Send-Key |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Максимальная степень параллелизма для задач каталога |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Необязательно: время ожидания отмены в секундах |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys to VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys to VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Задержка между различными входными строками в миллисекундах при отправке нажатий клавиш в VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Сохранять фокус клавиатуры на окне VLC после отправки клавиш |
| `-Monitor` | Int32 | — | — | Named | `-2` | Используемый монитор: 0 — по умолчанию, -1 — игнорировать |
| `-AspectRatio` | String | — | — | Named | — | Исходное соотношение сторон |
| `-Crop` | String | — | — | Named | — | Обрезка видео |
| `-SubtitleFile` | String | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |
| `-SubtitleScale` | Int32 | — | — | Named | — | Коэффициент масштабирования текста субтитров |
| `-SubtitleLanguage` | String | — | — | Named | — | Язык субтитров |
| `-AudioLanguage` | String | — | — | Named | — | Язык аудио |
| `-PreferredAudioLanguage` | String | — | — | Named | — | Предпочитаемый язык аудио |
| `-HttpProxy` | String | — | — | Named | — | HTTP-прокси |
| `-HttpProxyPassword` | String | — | — | Named | — | Пароль HTTP-прокси |
| `-VerbosityLevel` | Int32 | — | — | Named | — | Уровень подробности |
| `-SubdirectoryBehavior` | String | — | — | Named | — | Поведение подкаталогов |
| `-IgnoredExtensions` | String | — | — | Named | — | Игнорируемые расширения |
| `-VLCPath` | String | — | — | Named | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` | Путь к исполняемому файлу VLC |
| `-ReplayGainMode` | String | — | — | Named | — | Режим усиления воспроизведения |
| `-ReplayGainPreamp` | Single | — | — | Named | — | Предварительное усиление с компенсацией громкости |
| `-ForceDolbySurround` | String | — | — | Named | — | Принудительное обнаружение Dolby Surround |
| `-AudioFilters` | String[] | — | — | Named | — | Аудиофильтры |
| `-Visualization` | String | — | — | Named | — | Аудиовизуализации |
| `-Deinterlace` | String | — | — | Named | — | Деинтерлейс |
| `-DeinterlaceMode` | String | — | — | Named | — | Режим деинтерлейсинга |
| `-VideoFilters` | String[] | — | — | Named | — | Модуль видеофильтров |
| `-VideoFilterModules` | String[] | — | — | Named | — | Модули видеофильтров |
| `-Modules` | String[] | — | — | Named | — | Модули |
| `-AudioFilterModules` | String[] | — | — | Named | — | Модули аудиофильтров |
| `-AudioVisualization` | String | — | — | Named | — | Режим визуализации аудио |
| `-PreferredSubtitleLanguage` | String | — | — | Named | — | Предпочитаемый язык субтитров |
| `-IgnoredFileExtensions` | String | — | — | Named | — | Игнорируемые расширения файлов |
| `-Arguments` | String | — | — | Named | — | Дополнительные аргументы |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Включить альтернативные потоки данных в результаты поиска |
| `-OnlyVideos` | SwitchParameter | — | — | Named | — | Only include video files in the playlist |
| `-OnlyAudio` | SwitchParameter | — | — | Named | — | Only include audio files in the playlist |
| `-OnlyPictures` | SwitchParameter | — | — | Named | — | Only include pictures in the playlist |
| `-IncludeVideos` | SwitchParameter | — | — | Named | — | Дополнительно включите видео в плейлист |
| `-IncludeAudio` | SwitchParameter | — | — | Named | — | Additionally include audio files in the playlist |
| `-IncludePictures` | SwitchParameter | — | — | Named | — | Additionally include pictures in the playlist |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Удаляет границы окна |
| `-Left` | SwitchParameter | — | — | Named | — | Поместить окно в левой части экрана |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Разместить окно в верхней части экрана |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Поместить окно в центр экрана |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Отправляет F11 в окно |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | Always on top |
| `-Random` | SwitchParameter | — | — | Named | — | Play files randomly forever |
| `-Loop` | SwitchParameter | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |
| `-Repeat` | SwitchParameter | — | — | Named | — | Repeat current item |
| `-StartPaused` | SwitchParameter | — | — | Named | — | Запуск приостановлен |
| `-PlayAndExit` | SwitchParameter | — | — | Named | — | Сыграть и выйти |
| `-DisableAudio` | SwitchParameter | — | — | Named | — | Отключить звук |
| `-DisableSubtitles` | SwitchParameter | — | — | Named | — | Отключить субтитры |
| `-AutoScale` | SwitchParameter | — | — | Named | — | Автомасштабирование видео |
| `-HighPriority` | SwitchParameter | — | — | Named | — | Увеличьте приоритет процесса |
| `-EnableTimeStretch` | SwitchParameter | — | — | Named | — | Включить растяжение времени аудио |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Открыть новый экземпляр VLC mediaplayer |
| `-EnableWallpaperMode` | SwitchParameter | — | — | Named | — | Включить режим видеообоев |
| `-EnableAudioTimeStretch` | SwitchParameter | — | — | Named | — | Включить растяжение времени аудио |
| `-Close` | SwitchParameter | — | — | Named | — | Закройте окно медиаплеера VLC |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Либо установит окно в полноэкранный режим на другом мониторе, отличном от PowerShell, либо рядом с PowerShell на одном мониторе. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Установить фокус на окне VLC после открытия |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Установить окно VLC на передний план после открытия |
| `-Maximize` | SwitchParameter | — | — | Named | — | Развернуть окно |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Восстанавливает фокус окна PowerShell после открытия VLC. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Получает или задает чувствительность к регистру для файлов и каталогов |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Максимальная глубина рекурсии для обхода директорий. 0 означает без ограничений. |
| `-Exclude` | String[] | — | — | Named | `@('*\\.git\\*')` | Exclude files or directories matching these wildcard patterns (e.g., *.tmp, *\bin\*). |
| `-PassThru` | SwitchParameter | — | — | Named | — | Возвращает файлы, найденные поиском |
| `-PassThruNoOpen` | SwitchParameter | — | — | Named | — | Возвращает файлы, найденные поиском, без открытия VLC |
| `-PassThruWindow` | SwitchParameter | — | — | Named | — | Возвращает вспомогательное окно для каждого процесса |

## Examples

### Open-MediaFile

```powershell
Open-MediaFile
```

Открывает все медиафайлы в текущей директории, используя настройки VLC по умолчанию.

### vlcmedia ~\Pictures -OnlyPictures -Fullscreen

```powershell
vlcmedia ~\Pictures -OnlyPictures -Fullscreen
```

Открывает только файлы изображений из папки Pictures в полноэкранном режиме, используя псевдоним 'vlcmedia'.

### media ~\Videos -OnlyVideos -Loop

```powershell
media ~\Videos -OnlyVideos -Loop
```

Открывает видеофайлы с включенным циклом, используя псевдоним 'media'.

## Related Links

- [Open-MediaFile on GitHub](https://github.com/genXdev/genXdev)
