# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Получает настройки LLM для операций ИИ в GenXdev.AI.

## Description

Эта функция извлекает настройки LLM (Large Language Model), используемые модулем GenXdev.AI для различных AI-операций. Настройки извлекаются из переменных сессии, постоянных предпочтений или файла настроек по умолчанию в таком порядке приоритета. Функция поддерживает автоматический выбор конфигурации на основе доступных ресурсов системной памяти.

Стратегия выбора памяти определяется автоматически на основе предоставленных параметров Gpu и Cpu:
- Если указаны оба параметра Gpu и Cpu: Используется комбинированная память CPU + GPU
- Если указан только параметр Gpu: Предпочитается память GPU (с запасным вариантом системной ОЗУ)
- Если указан только параметр Cpu: Используется только системная ОЗУ
- Если ни один параметр не указан: Используется комбинированная память CPU + GPU (по умолчанию)

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | Тип запроса LLM для получения настроек |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в AI-операциях |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций ИИ |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций ИИ |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | true |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Поддерживает ли конечная точка загрузку изображений |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Поддерживает ли конечная точка функцию вызова инструментов |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, хранящиеся в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т. д. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистите настройки сессии (глобальные переменные) перед получением |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Пропустить настройки сессии и получать из предпочтений или значений по умолчанию только |

## Examples

### Get-AILLMSettings

```powershell
Get-AILLMSettings
```

Получает настройки LLM для типа запроса SimpleIntelligence (по умолчанию).

### Get-AILLMSettings -LLMQueryType "Coding"

```powershell
Get-AILLMSettings -LLMQueryType "Coding"
```

Получает настройки LLM для типа запроса "Coding".

### Get-AILLMSettings -SkipSession

```powershell
Get-AILLMSettings -SkipSession
```

Получает настройки LLM из предпочтений или значений по умолчанию, игнорируя настройки сессии.

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
