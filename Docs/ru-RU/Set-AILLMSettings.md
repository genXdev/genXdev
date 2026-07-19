# Set-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Устанавливает настройки LLM для операций AI в GenXdev.AI.

## Description

Этот [int] $TimeoutSeconds,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Указывает, что конечная точка не поддерживает формат ответа json_schema'
        )]
        [switch] $NoSupportForJsonSchema,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Указывает, что конечная точка не поддерживает функциональность загрузки изображений'
        )]
        [switch] $NoSupportForImageUpload,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Указывает, что конечная точка не поддерживает функциональность вызова инструментов'
        )]
        [switch] $NoSupportForToolCalls,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Сохранить настройки только в текущем сеансе без ' +
                'сохранения')
        )]
        [switch] $SessionOnly,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Очистить альтернативные настройки, сохраненные в сеансе для ' +
                'настроек ИИ')
        )]
        [switch] $ClearSession, сохраняет настройки LLM (Large Language Model), используемые модулем
GenXdev.AI для различных операций ИИ. Настройки могут храниться постоянно
в предпочтениях (по умолчанию), только в текущем сеансе (с помощью -SessionOnly) или
очищены из сеанса (с помощью -ClearSession). Функция проверяет, что хотя бы
один параметр настройки предоставлен, если только не происходит очистка настроек сеанса.

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

## Examples

### Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"

```powershell
Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"
```

Устанавливает настройки LLM для типа запроса Coding постоянно в настройках.

### Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly

```powershell
Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly
```

Устанавливает настройки LLM только для SimpleIntelligence на текущую сессию.

### Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession

```powershell
Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession
```

Очищает настройки LLM сессии для типа запроса Pictures, не затрагивая
постоянные предпочтения.

### Set-AILLMSettings "Coding" "*Qwen*14B*"

```powershell
Set-AILLMSettings "Coding" "*Qwen*14B*"
```

Устанавливает настройки LLM для типа запроса Coding с использованием позиционных параметров.

## Related Links

- [Set-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
