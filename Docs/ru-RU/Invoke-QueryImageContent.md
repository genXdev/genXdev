# Invoke-QueryImageContent

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Анализирует содержимое изображения с помощью возможностей AI-зрения

## Description

Обрабатывает изображения с использованием возможностей искусственного зрения для анализа содержимого и ответа на вопросы об изображении. Функция поддерживает различные параметры анализа, включая контроль температуры для случайности ответов и ограничение токенов для длины вывода.

## Syntax

```powershell
Invoke-QueryImageContent -Query <String> -ImagePath <String> [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatOnce] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <String[]>] [-ForceConsent] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | The query string for analyzing the image |
| `-ImagePath` | String | ✅ | — | 1 | — | Путь к файлу изображения для анализа |
| `-Instructions` | String | — | — | 2 | — | Системные инструкции для модели |
| `-ResponseFormat` | String | — | — | Named | `$null` | {"type": "json_schema", "json_schema": {"name": "text_transformation_response", "strict": true, "schema": {"required": ["response"], "properties": {"response": {"type": "string", "description": "The transformed text output"}}, "type": "object"}}} |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для случайности ответа (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | Уровень детализации изображения |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | Тип запроса LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в AI-операциях |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций ИИ |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций ИИ |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Время ожидания в секундах для операций ИИ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
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
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Functions` | String[] | — | — | Named | — | Указывает функции, которые будут использоваться для операции AI. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | Указывает предоставленные командлеты для операции ИИ. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Указывает имена функций инструмента, не требующих подтверждения. |
| `-AudioTemperature` | Double | — | — | Named | — | Температура для генерации аудиоответа. |
| `-TemperatureResponse` | Double | — | — | Named | — | Температура для генерации ответа. |
| `-Language` | String | — | — | Named | — | Язык для генерируемых описаний и ключевых слов |
| `-CpuThreads` | Int32 | — | — | Named | — | Количество потоков ЦП для использования. |
| `-SuppressRegex` | String | — | — | Named | — | Regex to suppress output. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Размер аудиоконтекста для обработки. |
| `-SilenceThreshold` | Double | — | — | Named | — | Порог тишины для обработки аудио. |
| `-LengthPenalty` | Double | — | — | Named | — | Штраф за длину для генерации последовательности. |
| `-EntropyThreshold` | Double | — | — | Named | — | Порог энтропии для фильтрации вывода. |
| `-LogProbThreshold` | Double | — | — | Named | — | Порог логарифмической вероятности для фильтрации вывода. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Нет порога речи для обнаружения аудио. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Если указано, не произносите вывод. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Если указано, не произносите мысли модели. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Если указано, отключает VOX. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | При использовании захвата аудио с рабочего стола. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Если указано, отключает использование контекста. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Если указано, используйте стратегию выборки с лучевым поиском. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Если указано, возвращайте только ответы. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Если указано, не добавляйте мысли в историю. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Hello! How can I help you today? |
| `-Speak` | SwitchParameter | — | — | Named | — | Говорите на выходе. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Привет! Я здесь, чтобы помочь вам. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Вот ответ, содержащий только разметку. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | {"type":"json_schema","json_schema":{"name":"text_transformation_response","strict":true,"schema":{"required":["response"],"properties":{"response":{"type":"string","description":"The transformed text output"}},"type":"object"}}} |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Отключить кэширование сессий. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальная длина обратного вызова для вызовов инструментов. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Заставить принудительно отображать запрос согласия, даже если настройки для пакета ImageSharp установлены. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Автоматически соглашаться на установку стороннего программного обеспечения и устанавливать постоянный флаг для пакетов ImageSharp. |

## Examples

### Invoke-QueryImageContent `     -Query "What objects are in this image?" `     -ImagePath "C:\Images\sample.jpg" `     -Temperature 0.01

```powershell
Invoke-QueryImageContent `
    -Query "What objects are in this image?" `
    -ImagePath "C:\Images\sample.jpg" `
    -Temperature 0.01
```

Analyzes an image with specific temperature and token limits.

### Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation
```

### Query-Image "Describe this image" "C:\Images\photo.jpg"

```powershell
Query-Image "Describe this image" "C:\Images\photo.jpg"
```

Простой анализ изображения с использованием псевдонимов и позиционных параметров.

## Related Links

- [Invoke-QueryImageContent on GitHub](https://github.com/genXdev/genXdev)
