# Get-SimularMovieTitles

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Находит похожие названия фильмов на основе общих свойств.

## Description

Анализирует предоставленные фильмы, чтобы найти общие свойства, и возвращает список из 10 похожих названий фильмов. Использует ИИ для выявления закономерностей и тем во входных фильмах, чтобы предложить соответствующие рекомендации.

## Syntax

```powershell
Get-SimularMovieTitles -Movies <String[]> [[-LLMQueryType] <String>] [-AcceptLang <String>] [-All] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-ApplicationMode] [-Attachments <String[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-Bottom <Int32>] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DisablePopupBlocker] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Firefox] [-FocusWindow] [-FullScreen] [-Functions <Collections.Hashtable[]>] [-Headless] [-Height <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Instructions <String>] [-Language <String>] [-Left <Int32>] [-LengthPenalty <Double>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Maximize] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-OutputMarkdownBlocksOnly] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetClipboard] [-SetForeground] [-SideBySide] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-Webkit] [-Width <Int32>] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Movies` | String[] | ✅ | — | 0 | — | Array of movie titles to analyze for similarities |
| `-LLMQueryType` | String | — | — | 1 | `'Knowledge'` | Тип запроса LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в AI-операциях |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций ИИ |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций ИИ |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Время ожидания в секундах для операций ИИ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для случайности ответа (0.0-1.0) |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Открывает поиск на IMDB для каждого результата |
| `-Language` | String | — | — | Named | — | Язык для поиска в IMDB или сеанса браузера |
| `-Monitor` | Int32 | — | — | Named | `-1` | Индекс или имя монитора для размещения окна браузера |
| `-Width` | Int32 | — | — | Named | `-1` | Ширина окна браузера в пикселях |
| `-Height` | Int32 | — | — | Named | `-1` | Высота окна браузера в пикселях |
| `-AcceptLang` | String | — | — | Named | — | Заголовок HTTP Accept-Language для сеанса браузера |
| `-Private` | SwitchParameter | — | — | Named | — | Открыть браузер в режиме инкогнито/приватном режиме |
| `-Chrome` | SwitchParameter | — | — | Named | — | Используйте Google Chrome для сеанса браузера |
| `-Chromium` | SwitchParameter | — | — | Named | — | Используйте Chromium для сеанса браузера |
| `-Firefox` | SwitchParameter | — | — | Named | — | Используйте Mozilla Firefox для сеанса браузера |
| `-Left` | Int32 | — | — | Named | — | Левое положение окна браузера в пикселях |
| `-Right` | Int32 | — | — | Named | — | Правильное положение окна браузера в пикселях |
| `-Bottom` | Int32 | — | — | Named | — | Положение нижнего края окна браузера в пикселях |
| `-Centered` | SwitchParameter | — | — | Named | — | Открыть окно браузера, центрированное на экране |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Открыть браузер в полноэкранном режиме |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Открыть браузер в режиме приложения (минимальный интерфейс) |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Отключить расширения браузера для сеанса |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Отключить блокировку всплывающих окон в сеансе браузера |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Сфокусировать окно браузера после открытия |
| `-SetForeground` | SwitchParameter | — | — | Named | — | После открытия окно браузера выводить на передний план |
| `-Maximize` | SwitchParameter | — | — | Named | — | Разверните окно браузера на весь экран после открытия |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Восстановить фокус на предыдущем окне после закрытия браузера |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Открывать каждый результат IMDB в новом окне браузера |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.imdb.com/search/title/?title= |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | https://www.google.com |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Send Escape key to browser after opening |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Сохранять фокус клавиатуры в браузере после отправки ключей |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Используйте Shift+Enter для отправки клавиш в браузер |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Задержка в миллисекундах между отправкой нажатий клавиш в браузер |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Открыть окно браузера без рамок |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Используйте браузер, управляемый Playwright, вместо браузера, установленного в ОС |
| `-Webkit` | SwitchParameter | — | — | Named | — | Открывает браузер WebKit, управляемый Playwright. Подразумевает -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Запустите браузер без видимого окна |
| `-All` | SwitchParameter | — | — | Named | — | Открывается во всех зарегистрированных современных браузерах |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Для каждого результата откройте окна браузера рядом |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Instructions` | String | — | — | Named | — | Инструкции для модели ИИ по созданию списка строк |
| `-Attachments` | String[] | — | — | Named | — | Массив путей к файлам для прикрепления |
| `-ImageDetail` | String | — | — | Named | — | Уровень детализации изображения для обработки изображений. |
| `-Functions` | Collections.Hashtable[] | — | — | Named | — | Массив определений функций, которые могут быть вызваны моделью ИИ во время обработки. |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Массив определений команд PowerShell для использования в качестве инструментов, которые может вызывать ИИ. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | ["ls", "cd", "pwd", "echo", "cat", "head", "tail", "less", "more", "grep", "wc", "sort", "uniq", "date", "whoami", "id", "hostname", "uname", "env", "printenv", "clear"] |
| `-AudioTemperature` | Double | — | — | Named | — | Температура для генерации аудио. |
| `-TemperatureResponse` | Double | — | — | Named | — | Температура для генерации ответа. |
| `-CpuThreads` | Int32 | — | — | Named | — | Количество потоков ЦП для использования. |
| `-SuppressRegex` | String | — | — | Named | — | Регулярное выражение для подавления определенных выходных данных. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Размер аудиоконтекста для обработки. |
| `-SilenceThreshold` | Double | — | — | Named | — | Порог тишины для обработки аудио. |
| `-LengthPenalty` | Double | — | — | Named | — | Штраф за длину для генерации последовательности. |
| `-EntropyThreshold` | Double | — | — | Named | — | Порог энтропии для фильтрации вывода. |
| `-LogProbThreshold` | Double | — | — | Named | — | Порог логарифмической вероятности для фильтрации вывода. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Нет порога речи для обнаружения аудио. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Отключить речевой вывод. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Отключение вывода мысленной речи. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disable VOX (voice activation). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Используйте захват звука рабочего стола. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disable context usage. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Применить стратегию выборки с лучевым поиском. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Ты — полезный помощник, предназначенный для вывода JSON. |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | При указании копирует результирующий список строк обратно в системный буфер обмена после обработки. |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Не добавляйте мысли модели в историю разговора |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | The quick brown fox jumps over the lazy dog. The transformation is complete. |
| `-Speak` | SwitchParameter | — | — | Named | — | Включить преобразование текста в речь для ответов ИИ |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Включить преобразование текста в речь для ответов ИИ |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Не хранить сессию в кэше сессии |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Enable default tools for the AI model. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Return only markup blocks in the output. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for specific types of markup blocks. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальная длина обратного вызова для вызовов инструментов. |

## Examples

### Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb

```powershell
Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb
```

### moremovietitle "The Matrix","Inception" -imdb

```powershell
moremovietitle "The Matrix","Inception" -imdb
```

## Related Links

- [Get-SimularMovieTitles on GitHub](https://github.com/genXdev/genXdev)
