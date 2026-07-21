# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do`

## Synopsis

> कार्यक्षेत्र में प्रत्येक GenXdev मॉड्यूल पर एक स्क्रिप्ट ब्लॉक निष्पादित करता है।

## Description

यह फ़ंक्शन कार्यक्षेत्र में GenXdev मॉड्यूल के माध्यम से पुनरावृत्ति करता है और प्रत्येक मॉड्यूल के विरुद्ध एक प्रदान किए गए स्क्रिप्ट ब्लॉक को निष्पादित करता है। यह मॉड्यूल को नाम पैटर्न द्वारा फ़िल्टर कर सकता है, स्थानीय मॉड्यूल को बाहर कर सकता है, केवल प्रकाशित मॉड्यूल शामिल कर सकता है, या मॉड्यूल के बजाय स्क्रिप्ट्स को संसाधित कर सकता है। फ़ंक्शन स्क्रिप्ट ब्लॉक को निष्पादित करने से पहले स्वचालित रूप से सही मॉड्यूल निर्देशिका में नेविगेट करता है।

## Syntax

```powershell
Invoke-OnEachGenXdevModule -Script <ScriptBlock> [[-ModuleName] <String[]>] [-FromScripts] [-IncludeScripts] [-NoLocal] [-OnlyPublished] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | — | 0 | — | प्रत्येक GenXdev मॉड्यूल के लिए निष्पादित करने हेतु स्क्रिप्ट ब्लॉक |
| `-ModuleName` | String[] | — | — | 1 | `@('GenXdev*')` | मॉड्यूल नामों पर लागू करने के लिए फ़िल्टर 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | स्थानीय विकास मॉड्यूल को प्रसंस्करण से बाहर रखता है |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | केवल प्रकाशित मॉड्यूल शामिल करता है जिनमें LICENSE और README.md फ़ाइलें होती हैं |
| `-FromScripts` | SwitchParameter | — | — | Named | — | मॉड्यूल निर्देशिकाओं के बजाय स्क्रिप्ट निर्देशिका को प्रोसेस करें |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | नियमित मॉड्यूल के अतिरिक्त स्क्रिप्ट्स निर्देशिका को भी शामिल करता है |

## Examples

### Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }

```powershell
Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }
```

सभी GenXdev मॉड्यूल नामों की सूची बनाएं।

### foreach-genxdev-module-do {     param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)     Get-ChildItem } -ModuleName "GenXdev.AI"

```powershell
foreach-genxdev-module-do {
    param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)
    Get-ChildItem
} -ModuleName "GenXdev.AI"
```

GenXDev.AI मॉड्यूल निर्देशिका की सामग्री को सूचीबद्ध करने के लिए उपनाम का उपयोग करता है।

## Parameter Details

### `-Script <ScriptBlock>`

> प्रत्येक GenXdev मॉड्यूल के लिए निष्पादित करने हेतु स्क्रिप्ट ब्लॉक

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ScriptBlock` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModuleName <String[]>`

> मॉड्यूल नामों पर लागू करने के लिए फ़िल्टर

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@('GenXdev*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `Module`, `BaseModuleName`, `SubModuleName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-NoLocal`

> स्थानीय विकास मॉड्यूल को प्रसंस्करण से बाहर रखता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPublished`

> केवल प्रकाशित मॉड्यूल शामिल करता है जिनमें LICENSE और README.md फ़ाइलें होती हैं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FromScripts`

> मॉड्यूल निर्देशिकाओं के बजाय स्क्रिप्ट निर्देशिका को प्रोसेस करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeScripts`

> नियमित मॉड्यूल के अतिरिक्त स्क्रिप्ट्स निर्देशिका को भी शामिल करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
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
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/WriteFileOutput.md)
