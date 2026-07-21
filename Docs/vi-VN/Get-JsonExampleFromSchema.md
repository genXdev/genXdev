# Get-JsonExampleFromSchema

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Tạo một chuỗi JSON ví dụ có thể đọc được từ định nghĩa JSON Schema.

## Description

Chuyển đổi bất kỳ Lược đồ JSON nào (định dạng json_schema của OpenAI hoặc lược đồ thô) thành một chuỗi JSON ví dụ nhỏ gọn phù hợp để chèn vào hướng dẫn hệ thống LLM. Xử lý các đối tượng lồng nhau, mảng, kiểu vô hướng, enum, union, các cấu trúc hợp thành oneOf/anyOf/allOf, và các gợi ý định dạng như ngày-giờ và email. Hàm xây dựng một cây đối tượng PowerShell bằng cách duyệt đệ quy lược đồ, sau đó tuần tự hóa nó thành một chuỗi JSON nhỏ gọn thông qua ConvertTo-Json.

## Syntax

```powershell
Get-JsonExampleFromSchema [[-Schema] <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Schema` | Object | — | — | 0 | — | Định nghĩa lược đồ JSON (chuỗi JSON hoặc PSCustomObject). Hỗ trợ định dạng bao bọc json_schema của OpenAI và các đối tượng Lược đồ JSON thô. |

## Examples

### $schema = '{ "type": "object", "properties": { "name": { "type": "string" } } }' Get-JsonExampleFromSchema -Schema $schema

```powershell
$schema = '{ "type": "object", "properties": { "name": { "type": "string" } } }'
Get-JsonExampleFromSchema -Schema $schema
```

Tạo: {"name":"..."}

### $openAiSchema = '{ "type": "json_schema", "json_schema": { "name": "response", "strict": true, "schema": { "type": "object", "properties": { "items": { "type": "array", "items": { "type": "object", "properties": { "id": { "type": "integer" }, "label": { "type": "string" } } } } } } } }' Get-JsonExampleFromSchema -Schema $openAiSchema

```powershell
$openAiSchema = '{ "type": "json_schema", "json_schema": { "name": "response",
"strict": true, "schema": { "type": "object", "properties": {
"items": { "type": "array", "items": { "type": "object", "properties": {
"id": { "type": "integer" }, "label": { "type": "string" } } } } } } } }'
Get-JsonExampleFromSchema -Schema $openAiSchema
```

Tạo ra: {"items":[{"id":0,"label":"..."}]}

## Parameter Details

### `-Schema <Object>`

> Định nghĩa lược đồ JSON (chuỗi JSON hoặc PSCustomObject). Hỗ trợ định dạng bao bọc json_schema của OpenAI và các đối tượng Lược đồ JSON thô.

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

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-DefaultWebLanguage.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/WriteFileOutput.md)
