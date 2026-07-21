# Test-UnattendedMode

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Phát hiện nếu PowerShell đang chạy ở chế độ không giám sát/tự động.

## Description

* Phân tích các chỉ số khác nhau để xác định xem PowerShell có đang chạy trong ngữ cảnh không có người giám sát hay tự động hay không.
* Kiểm tra phân tích pipeline, biến môi trường, chuyển hướng console và ngữ cảnh gọi.
* Khi CallersInvocation được cung cấp, phân tích vị trí và số lượng pipeline để phát hiện thực thi pipeline hoặc script tự động.

## Syntax

```powershell
Test-UnattendedMode [[-CallersInvocation] <InvocationInfo>] [-Detailed] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallersInvocation` | InvocationInfo | — | — | 0 | — | Thông tin lời gọi của người gọi để phát hiện đường ống dẫn và tự động hóa |
| `-Detailed` | SwitchParameter | — | — | Named | `False` | @{detailed_analysis=False; reasoning=The user request is not a translation task. It instructs to translate Vietnam text, but user then says 'Return detailed analysis object instead of simple boolean'. This indicates user wants analysis of the request itself, not translation. Since original instruction was to translate text into Vietnamese, but user overrides final output format. Therefore, the appropriate response is to analyze the miscommunication: The original input does not contain any Vietnamese text to translate; it only contains instructions. Hence, translation is impossible. Therefore, detailed_analysis is false with reasoning.} |

## Examples

### Example 1

```powershell
Test-UnattendedMode
```

Trả về một giá trị boolean cho biết có đang chạy ở chế độ không có người giám sát hay không.

### Example 2

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation
```

Phân tích ngữ cảnh gọi của trình gọi và trả về một giá trị boolean.

### Example 3

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation -Detailed
```

Trả về đối tượng phân tích chi tiết với tất cả các chỉ số.

### Example 4

```powershell
function My-Function {
    $isUnattended = Test-UnattendedMode -CallersInvocation $MyInvocation
    if ($isUnattended) {
        Write-Verbose "Running in unattended mode"
    }
}
```

Ví dụ sử dụng trong một hàm để kiểm tra chế độ không giám sát.

## Parameter Details

### `-CallersInvocation <InvocationInfo>`

> Thông tin lời gọi của người gọi để phát hiện đường ống dẫn và tự động hóa

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Detailed`

> @{detailed_analysis=False; reasoning=The user request is not a translation task. It instructs to translate Vietnam text, but user then says 'Return detailed analysis object instead of simple boolean'. This indicates user wants analysis of the request itself, not translation. Since original instruction was to translate text into Vietnamese, but user overrides final output format. Therefore, the appropriate response is to analyze the miscommunication: The original input does not contain any Vietnamese text to translate; it only contains instructions. Hence, translation is impossible. Therefore, detailed_analysis is false with reasoning.}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


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
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-JsonExampleFromSchema.md)
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
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/WriteFileOutput.md)
