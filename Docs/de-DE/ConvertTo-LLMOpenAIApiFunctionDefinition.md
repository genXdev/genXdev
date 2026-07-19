# ConvertTo-LLMOpenAIApiFunctionDefinition

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> {
  "type": "function",
  "function": {
    "name": "convert_powershell_to_openai",
    "description": "Converts PowerShell functions to LLM OpenAI API function definitions.",
    "parameters": {
      "type": "object",
      "properties": {},
      "required": []
    }
  }
}

## Description

Nimmt verfügbare Cmdlet-Definitionen und generiert LLM-kompatible Funktionsdefinitionen für die OpenAI-API, einschließlich Parameterinformationen und Rückruf-Handlern.

## Syntax

```powershell
ConvertTo-LLMOpenAIApiFunctionDefinition [[-ExposedCmdLets] <GenXdev.Helpers.ExposedCmdletDefinition[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | ✅ (ByValue) | 0 | `@()` | PowerShell-Befehle zur Umwandlung in Tool-Funktionen |

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
