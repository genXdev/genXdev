# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize

## Synopsis

> Преобразует дипломатичный или тактичный язык в прямой, ясный и однозначный язык.

## Description

Эта функция преобразует дипломатический язык, раскрывая истинный смысл вежливых или политкорректных выражений. Она использует модели ИИ для трансформации эвфемизмов в прямые утверждения, делая общение однозначным и понятным. Функция особенно полезна для анализа политических заявлений, деловой переписки или любых текстов, где реальное значение может быть скрыто за дипломатичными оборотами.

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | Преобразуемый текст из дипломатического языка |
| `-Instructions` | String | — | — | 1 | `''` | Дополнительные инструкции для модели ИИ |
| `-Temperature` | Double | — | — | Named | `0.0` | Температура для случайности ответа (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Тип запроса LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в AI-операциях |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций ИИ |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций ИИ |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Время ожидания в секундах для операций ИИ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Скопировать преобразованный текст в буфер обмена |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Attachments` | Object[] | — | — | Named | — | Приложения для включения в AI-операцию. |
| `-ImageDetail` | String | — | — | Named | — | Уровень детализации изображения для обработки ИИ. |
| `-Functions` | Object[] | — | — | Named | — | Функции для предоставления модели ИИ. |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | Командлеты для предоставления ИИ-модели. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Имена функций инструментов, не требующие подтверждения. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Не добавляйте мысли в историю ИИ. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | {
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
          "description": "Преобразованный текстовый вывод"
        }
      },
      "type": "object"
    }
  }
} |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Озвучивай мысли во время обработки ИИ. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Disable session caching for this operation. |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Разрешить использование инструментов по умолчанию в работе ИИ. |
| `-AudioTemperature` | Double | — | — | Named | — | Температура аудио для генерации аудио с помощью ИИ. |
| `-TemperatureResponse` | Double | — | — | Named | — | Температура для генерации ИИ-ответов. |
| `-CpuThreads` | Int32 | — | — | Named | — | Количество потоков ЦП для работы ИИ. |
| `-SuppressRegex` | String[] | — | — | Named | — | Regex to suppress in AI output. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Размер аудиоконтекста для обработки звука AI. |
| `-SilenceThreshold` | Double | — | — | Named | — | Порог тишины для обработки аудио ИИ. |
| `-LengthPenalty` | Double | — | — | Named | — | Штраф за длину для генерации последовательностей ИИ. |
| `-EntropyThreshold` | Double | — | — | Named | — | Порог энтропии для вывода ИИ. |
| `-LogProbThreshold` | Double | — | — | Named | — | Порог логарифмической вероятности для вывода ИИ. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | No speech threshold for AI audio processing. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Не произносите ответ ИИ. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | не говори мысли ИИ. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disable VOX for AI audio output. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Используйте захват звука рабочего стола для ИИ аудио. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Не используйте контекст для работы ИИ. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Используйте стратегию выборки с лучевым поиском для ИИ. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | {"response":"Только ответы от ИИ."} |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | No markup blocks detected. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types in AI output. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальная длина обратного вызова для вызовов инструментов. |

## Examples

### ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your approach"

```powershell
ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your
approach"
```

### undiplomatize "Your proposal has merit but requires further consideration"

```powershell
undiplomatize "Your proposal has merit but requires further consideration"
```

### "We're putting you on timeout" |     ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2

```powershell
"We're putting you on timeout" |
    ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2
```

## Outputs

- `String`

## Related Links

- [ConvertFrom-DiplomaticSpeak on GitHub](https://github.com/genXdev/genXdev)
