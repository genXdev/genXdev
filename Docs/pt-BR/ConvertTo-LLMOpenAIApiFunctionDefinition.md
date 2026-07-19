# ConvertTo-LLMOpenAIApiFunctionDefinition

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Converts PowerShell functions to LLM OpenAI API function definitions.

## Description

Pega definições de cmdlet expostas e gera definições de função compatíveis com a API LLM OpenAI,
incluindo informações de parâmetros e manipuladores de retorno de chamada.

## Syntax

```powershell
ConvertTo-LLMOpenAIApiFunctionDefinition [[-ExposedCmdLets] <GenXdev.Helpers.ExposedCmdletDefinition[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | ✅ (ByValue) | 0 | `@()` | Converta comandos do PowerShell em funções de ferramenta |

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
