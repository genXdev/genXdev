# Test-UnattendedMode

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> पता लगाता है कि PowerShell बिना किसी मानवीय हस्तक्षेप/स्वचालित मोड में चल रहा है या नहीं।

## Description

* विभिन्न संकेतकों का विश्लेषण करता है कि पावरशेल किसी अप्राप्त या स्वचालित संदर्भ में चल रहा है या नहीं।
* पाइपलाइन विश्लेषण, पर्यावरण चर, कंसोल रीडायरेक्शन और आह्वान संदर्भ की जाँच करता है।
* जब CallersInvocation प्रदान किया जाता है, तो स्वचालित पाइपलाइन या स्क्रिप्ट निष्पादन का पता लगाने के लिए पाइपलाइन स्थिति और गणना का विश्लेषण करता है।

## Syntax

```powershell
Test-UnattendedMode [[-CallersInvocation] <InvocationInfo>] [-Detailed] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallersInvocation` | InvocationInfo | — | — | 0 | — | पाइपलाइन और स्वचालन का पता लगाने के लिए कॉल करने वाले की आमंत्रण जानकारी |
| `-Detailed` | SwitchParameter | — | — | Named | `False` | कार्रवाई विवरण वस्तु लौटाएं, सरल बूलियन नहीं |

## Examples

### Example 1

```powershell
Test-UnattendedMode
```

एक बूलियन लौटाता है जो यह इंगित करता है कि क्या अनअटेंडेड मोड में चल रहा है।

### Example 2

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation
```

कॉल करने वाले के आह्वान संदर्भ का विश्लेषण करता है और एक बूलियन मान लौटाता है।

### Example 3

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation -Detailed
```

सभी संकेतकों के साथ विस्तृत विश्लेषण ऑब्जेक्ट लौटाता है।

### Example 4

```powershell
function My-Function {
    $isUnattended = Test-UnattendedMode -CallersInvocation $MyInvocation
    if ($isUnattended) {
        Write-Verbose "Running in unattended mode"
    }
}
```

किसी फंक्शन में अनअटेंडेड मोड की जांच करने के लिए उदाहरण उपयोग।

## Parameter Details

### `-CallersInvocation <InvocationInfo>`

> पाइपलाइन और स्वचालन का पता लगाने के लिए कॉल करने वाले की आमंत्रण जानकारी

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

> कार्रवाई विवरण वस्तु लौटाएं, सरल बूलियन नहीं

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

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-JsonExampleFromSchema.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-RefactorLLMSelection.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/WriteFileOutput.md)
