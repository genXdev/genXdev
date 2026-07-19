# ConvertTo-LLMOpenAIApiFunctionDefinition

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Converts PowerShell functions to OpenAI API function definitions.

## Description

Принимает определения командлетов и генерирует определения функций, совместимые с API OpenAI LLM, включая информацию о параметрах и обработчики обратных вызовов.

## Syntax

```powershell
ConvertTo-LLMOpenAIApiFunctionDefinition [[-ExposedCmdLets] <GenXdev.Helpers.ExposedCmdletDefinition[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | ✅ (ByValue) | 0 | `@()` | Команды PowerShell для преобразования в функции инструмента |

## Examples

### Get-Command Get-Process | ConvertTo-LLMOpenAIApiFunctionDefinition ##############################################################################

```powershell
Get-Command Get-Process | ConvertTo-LLMOpenAIApiFunctionDefinition
##############################################################################
```

## Outputs

- `List`1[[System.Collections.Hashtable, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]`

## Related Links

- [ConvertTo-LLMOpenAIApiFunctionDefinition on GitHub](https://github.com/genXdev/genXdev)
