# Get-LLMJsonOutput

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Estrae JSON valido dal testo di risposta del LLM utilizzando euristiche di miglior sforzo.

## Description

@{response=Prende il testo grezzo della risposta LLM che può contenere recinzioni markdown, commenti o altro contenuto non JSON e tenta di estrarre JSON pulito e valido. Utilizza una strategia multi-step: prima rimuove le recinzioni markdown, quindi tenta di analizzare l'intera stringa come JSON e, se fallisce, utilizza l'estrazione guidata dallo schema seguita da fallback euristici.

La funzione gestisce:
- Recinzioni di codice markdown (...)
- Oggetti JSON ({...}) e array ([...])
- Stringhe, numeri, booleani e valori data-ora
- Estrazione guidata dallo schema utilizzando suggerimenti di tipo json_schema}

## Syntax

```powershell
Get-LLMJsonOutput -Text <String> [[-ResponseFormat] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | ✅ | — | 0 | — | @{response=PowerShell è un potente linguaggio di scripting e un ambiente interattivo progettato per l'automazione delle attività amministrative e la gestione della configurazione. Combina flessibilità della riga di comando, un linguaggio di scripting e un framework di gestione della configurazione.} |
| `-ResponseFormat` | String | — | — | 1 | — | @{response=Parametro obbligatorio. Specifica il nome del file di log.} |

## Examples

### Get-LLMJsonOutput -Testo '

Get-LLMJsonOutput -Testo '

```json
{"result": "hello"}
```

@{response=Estrae: {"result": "hello"}}

### $schema = '{"type":"json_schema","json_schema":{"name":"r","schema":{"type":"object"}}}' Get-LLMJsonOutput -Text 'The answer is {"key": "value"}' -ResponseFormat $schema

```powershell
$schema = '{"type":"json_schema","json_schema":{"name":"r","schema":{"type":"object"}}}'
Get-LLMJsonOutput -Text 'The answer is {"key": "value"}' -ResponseFormat $schema
```

Estrae: {"key": "value"}

## Parameter Details

### `-Text <String>`

> @{response=PowerShell è un potente linguaggio di scripting e un ambiente interattivo progettato per l'automazione delle attività amministrative e la gestione della configurazione. Combina flessibilità della riga di comando, un linguaggio di scripting e un framework di gestione della configurazione.}

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

> @{response=Parametro obbligatorio. Specifica il nome del file di log.}

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

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-JsonExampleFromSchema.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/WriteFileOutput.md)
