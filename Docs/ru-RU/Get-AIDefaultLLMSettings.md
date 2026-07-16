# Get-AIDefaultLLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-AIDefaultLLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | Тип запроса LLM для получения настроек |
| `-Model` | String | — | — | Named | — | Фильтрация конфигураций по идентификатору или шаблону модели |
| `-ApiEndpoint` | String | — | — | Named | — | Фильтровать конфигурации по URL-адресу конечной точки API |
| `-ApiKey` | String | — | — | Named | — | Фильтровать конфигурации по ключу API |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, хранящиеся в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т. д. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистите настройки сессии (глобальные переменные) перед получением |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Пропустить настройки сессии и получать из предпочтений или значений по умолчанию только |

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-AIDefaultLLMSettings on GitHub](https://github.com/genXdev/genXdev)
