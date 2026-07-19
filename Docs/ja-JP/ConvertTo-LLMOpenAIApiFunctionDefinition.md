# ConvertTo-LLMOpenAIApiFunctionDefinition

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Converts PowerShell functions to LLM OpenAI API function definitions.

## Description

公開されたコマンドレット定義を受け取り、パラメーター情報とコールバックハンドラーを含む LLM OpenAI API 互換の関数定義を生成します。

## Syntax

```powershell
ConvertTo-LLMOpenAIApiFunctionDefinition [[-ExposedCmdLets] <GenXdev.Helpers.ExposedCmdletDefinition[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | ✅ (ByValue) | 0 | `@()` | PowerShellコマンドをツール関数に変換する |

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
