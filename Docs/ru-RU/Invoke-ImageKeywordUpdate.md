# Invoke-ImageKeywordUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagekeywordgeneration

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageKeywordUpdate [[-ImageDirectories] <String[]>] [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ExposedCmdLets <String[]>] [-FacesDirectory <String>] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LLMQueryType <String>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-ResponseFormat <String>] [-RetryFailed] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Пути к каталогам, содержащим изображения для обработки |
| `-Recurse` | SwitchParameter | — | — | Named | — | Обработать изображения в указанной директории и всех поддиректориях |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Only process images that don't already have face metadata files |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Will retry previously failed image keyword updates |
| `-Language` | String | — | — | Named | — | Язык для генерируемых описаний и ключевых слов |
| `-FacesDirectory` | String | — | — | Named | — | Каталог, содержащий изображения лиц, сгруппированные по папкам людей. Если не указан, используется настроенное предпочтение каталога лиц. |
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
| `-NoContext` | SwitchParameter | — | — | Named | — | Если указано, отключает использование контекста. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальная длина обратного вызова для вызовов инструментов. |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru для возврата структурированных объектов вместо вывода в консоль |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Обнаруживает изменения в каталоге лиц и повторно регистрирует лица при необходимости |

## Related Links

- [Invoke-ImageKeywordUpdate on GitHub](https://github.com/genXdev/genXdev)
