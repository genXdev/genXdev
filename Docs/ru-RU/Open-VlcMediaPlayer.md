# Open-VlcMediaPlayer

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlc

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-VlcMediaPlayer [[-Path] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-FocusWindow] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-KeysToSend <String[]>] [-Left] [-Loop] [-Maximize] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-PassThru] [-PlayAndExit] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | — | — | 0 | — | Медиафайл(ы) или URL-адрес(а) для открытия в VLC |
| `-Width` | Int32 | — | — | 1 | `-1` | Начальная ширина окна |
| `-Height` | Int32 | — | — | 2 | `-1` | Начальная высота окна |
| `-X` | Int32 | — | — | 3 | `-999999` | Начальная позиция окна по оси X |
| `-Y` | Int32 | — | — | 4 | `-999999` | Начальная позиция окна по оси Y |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | `@()` | Keystrokes to send to the VLC Player Window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys to VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys to VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `50` | Задержка между различными входными строками в миллисекундах при отправке нажатий клавиш в VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Сохранять фокус клавиатуры на окне VLC после отправки клавиш |
| `-Monitor` | Int32 | — | — | Named | `-1` | Используемый монитор: 0 — по умолчанию, -1 — игнорировать |
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
| `-NoBorders` | SwitchParameter | — | — | Named | — | Удаляет границы окна |
| `-Left` | SwitchParameter | — | — | Named | — | Поместить окно в левой части экрана |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Разместить окно в верхней части экрана |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Поместить окно в центр экрана |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Отправляет F11 в окно |
| `-PassThru` | SwitchParameter | — | — | Named | — | Возвращает вспомогательное окно для каждого процесса |
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
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Восстановление фокуса окна PowerShell после открытия VLC |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Related Links

- [Open-VlcMediaPlayer on GitHub](https://github.com/genXdev/genXdev)
