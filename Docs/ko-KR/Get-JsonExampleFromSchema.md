# Get-JsonExampleFromSchema

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> JSON 스키마 정의에서 사람이 읽을 수 있는 예제 JSON 문자열을 생성합니다.

## Description

모든 JSON 스키마(OpenAI json_schema 형식 또는 원시 스키마)를 LLM 시스템 지침에 주입하기 적합한 간결한 예제 JSON 문자열로 변환합니다. 중첩된 개체, 배열, 스칼라 유형, 열거형, 유니온, oneOf/anyOf/allOf 조합 및 date-time, email과 같은 형식 힌트를 처리합니다.

이 함수는 스키마를 재귀적으로 탐색하여 PowerShell 개체 트리를 빌드한 다음, ConvertTo-Json을 통해 이를 간결한 JSON 문자열로 직렬화합니다.

## Syntax

```powershell
Get-JsonExampleFromSchema [[-Schema] <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Schema` | Object | — | — | 0 | — | JSON 스키마 정의(JSON 문자열 또는 PSCustomObject)입니다. OpenAI json_schema 래퍼 형식 및 원시 JSON 스키마 개체를 지원합니다. |

## Examples

### $schema = '{ "type": "object", "properties": { "name": { "type": "string" } } }' Get-JsonExampleFromSchema -Schema $schema

```powershell
$schema = '{ "type": "object", "properties": { "name": { "type": "string" } } }'
Get-JsonExampleFromSchema -Schema $schema
```

생성합니다: {"name":"..."}

### $openAiSchema = '{ "type": "json_schema", "json_schema": { "name": "response", "strict": true, "schema": { "type": "object", "properties": { "items": { "type": "array", "items": { "type": "object", "properties": { "id": { "type": "integer" }, "label": { "type": "string" } } } } } } } }' Get-JsonExampleFromSchema -Schema $openAiSchema

```powershell
$openAiSchema = '{ "type": "json_schema", "json_schema": { "name": "response",
"strict": true, "schema": { "type": "object", "properties": {
"items": { "type": "array", "items": { "type": "object", "properties": {
"id": { "type": "integer" }, "label": { "type": "string" } } } } } } } }'
Get-JsonExampleFromSchema -Schema $openAiSchema
```

생성: {"items":[{"id":0,"label":"..."}]}

## Parameter Details

### `-Schema <Object>`

> JSON 스키마 정의(JSON 문자열 또는 PSCustomObject)입니다. OpenAI json_schema 래퍼 형식 및 원시 JSON 스키마 개체를 지원합니다.

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

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-DefaultWebLanguage.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/WriteFileOutput.md)
