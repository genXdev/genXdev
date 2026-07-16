# Set-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-AILLMSettings -LLMQueryType <String> [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [-ClearSession] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | ✅ | — | 0 | — | Тип запроса LLM |
| `-Model` | String | — | — | 1 | — | Идентификатор или шаблон модели для использования в AI-операциях |
| `-ApiEndpoint` | String | — | — | 7 | — | URL конечной точки API для операций ИИ |
| `-ApiKey` | String | — | — | 8 | — | Ключ API для аутентифицированных операций ИИ |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | true |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Поддерживает ли конечная точка загрузку изображений |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Поддерживает ли конечная точка функцию вызова инструментов |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Related Links

- [Set-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
