# Get-JsonExampleFromSchema

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Generiert eine menschenlesbare Beispiel-JSON-Zeichenfolge aus einer JSON-Schema-Definition.

## Description

Konvertiert jedes JSON-Schema (OpenAI json_schema-Format oder rohes Schema) in eine kompakte Beispiel-JSON-Zeichenfolge, die sich zum Einfügen in LLM-Systemanweisungen eignet. Verarbeitet verschachtelte Objekte, Arrays, skalare Typen, Enums, Unions, oneOf/anyOf/allOf-Kompositionen und Format-Hinweise wie date-time und email.

Die Funktion erstellt einen PowerShell-Objektbaum, indem sie das Schema rekursiv durchläuft, und serialisiert ihn dann über ConvertTo-Json in eine kompakte JSON-Zeichenfolge.

## Syntax

```powershell
Get-JsonExampleFromSchema [[-Schema] <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Schema` | Object | — | — | 0 | — | Eine JSON-Schema-Definition (JSON-Zeichenfolge oder PSCustomObject). Unterstützt das OpenAI json_schema-Wrapperformat und rohe JSON-Schema-Objekte. |

## Examples

### $schema = '{ "type": "object", "properties": { "name": { "type": "string" } } }' Get-JsonExampleFromSchema -Schema $schema

```powershell
$schema = '{ "type": "object", "properties": { "name": { "type": "string" } } }'
Get-JsonExampleFromSchema -Schema $schema
```

Erzeugt: {"name":"..."}

### $openAiSchema = '{ "type": "json_schema", "json_schema": { "name": "response", "strict": true, "schema": { "type": "object", "properties": { "items": { "type": "array", "items": { "type": "object", "properties": { "id": { "type": "integer" }, "label": { "type": "string" } } } } } } } }' Get-JsonExampleFromSchema -Schema $openAiSchema

```powershell
$openAiSchema = '{ "type": "json_schema", "json_schema": { "name": "response",
"strict": true, "schema": { "type": "object", "properties": {
"items": { "type": "array", "items": { "type": "object", "properties": {
"id": { "type": "integer" }, "label": { "type": "string" } } } } } } } }'
Get-JsonExampleFromSchema -Schema $openAiSchema
```

@{response=Generiert: {"items":[{"id":0,"label":"..."}]}}

## Parameter Details

### `-Schema <Object>`

> Eine JSON-Schema-Definition (JSON-Zeichenfolge oder PSCustomObject). Unterstützt das OpenAI json_schema-Wrapperformat und rohe JSON-Schema-Objekte.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/de-DE/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/de-DE/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/de-DE/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/de-DE/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/de-DE/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/de-DE/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/de-DE/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/de-DE/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/de-DE/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/de-DE/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/de-DE/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-DefaultWebLanguage.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/de-DE/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/de-DE/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/de-DE/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/de-DE/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/de-DE/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/de-DE/WriteFileOutput.md)
