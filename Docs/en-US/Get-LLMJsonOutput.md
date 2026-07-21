# Get-LLMJsonOutput

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Extracts valid JSON from LLM response text using best-effort heuristics.

## Description

Takes raw LLM response text that may contain markdown fences, commentary, or
other non-JSON content and attempts to extract clean, valid JSON from it.
Uses a multi-step strategy: first strips markdown fences, then attempts to
parse the entire string as JSON, and if that fails, uses schema-guided
extraction followed by heuristic fallbacks.

The function handles:
- Markdown code fences (```json ... ```)
- JSON objects ({...}) and arrays ([...])
- Strings, numbers, booleans, and date-time values
- Schema-guided extraction using json_schema type hints

## Syntax

```powershell
Get-LLMJsonOutput -Text <String> [[-ResponseFormat] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | ✅ | — | 0 | — | The raw text to extract JSON from |
| `-ResponseFormat` | String | — | — | 1 | — | Optional JSON schema string to guide extraction (OpenAI json_schema format) |

## Examples

### Get-LLMJsonOutput -Text '

Get-LLMJsonOutput -Text '```json
{"result": "hello"}
```'

Extracts: {"result": "hello"}

### $schema = '{"type":"json_schema","json_schema":{"name":"r","schema":{"type":"object"}}}' Get-LLMJsonOutput -Text 'The answer is {"key": "value"}' -ResponseFormat $schema

```powershell
$schema = '{"type":"json_schema","json_schema":{"name":"r","schema":{"type":"object"}}}'
Get-LLMJsonOutput -Text 'The answer is {"key": "value"}' -ResponseFormat $schema
```

Extracts: {"key": "value"}

## Parameter Details

### `-Text <String>`

> The raw text to extract JSON from

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResponseFormat <String>`

> Optional JSON schema string to guide extraction (OpenAI json_schema format)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-JsonExampleFromSchema.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/WriteFileOutput.md)
