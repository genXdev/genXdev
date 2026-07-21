# ResolveInputObjectFileNames

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> इनपुट वस्तुओं को फ़ाइल और निर्देशिका नामों में विस्तारित करता है, विभिन्न फ़िल्टर और आउटपुट विकल्पों का समर्थन करता है।

## Description

यह फ़ंक्शन इनपुट ऑब्जेक्ट (फ़ाइलें, निर्देशिकाएँ या संग्रह) को प्रोसेस करता है और उन्हें फ़ाइल तथा निर्देशिका नामों में विस्तारित करता है। यह फ़िल्टरिंग, पैटर्न मिलान का समर्थन करता है और परिणामों को ऑब्जेक्ट के रूप में आउटपुट कर सकता है। फ़ंक्शन पाइपलाइन इनपुट के साथ काम करने के लिए डिज़ाइन किया गया है और पुनरावृत्ति, वैकल्पिक डेटा स्ट्रीम आदि के लिए विकल्प प्रदान करता है।

## Syntax

```powershell
ResolveInputObjectFileNames [[-InputObject] <Object>] [[-RelativeBasePath] <String>] [-AllDrives] [-File] [-IncludeAlternateFileStreams] [-NoRecurse] [-PassThru] [<CommonParameters>]

ResolveInputObjectFileNames [[-Pattern] <String>] [<CommonParameters>]

ResolveInputObjectFileNames [-Directory] [-FilesAndDirectories] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | फ़ाइल नाम या निर्देशिकाएँ रखने वाली इनपुट वस्तु |
| `-File` | SwitchParameter | — | — | Named | — | केवल फ़ाइलें लौटाएं |
| `-Pattern` | String | — | — | 1 | — | सामग्री के भीतर खोजने के लिए नियमित अभिव्यक्ति पैटर्न *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | आउटपुट में सापेक्ष पथों को हल करने के लिए आधार पथ |
| `-AllDrives` | SwitchParameter | — | — | Named | — | सभी उपलब्ध ड्राइव में खोजें |
| `-Directory` | SwitchParameter | — | — | Named | — | केवल निर्देशिकाएँ खोजें *(Parameter set: )* |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | फ़ाइलें और निर्देशिकाएँ दोनों शामिल करें *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | आउटपुट मिलान किए गए आइटम ऑब्जेक्ट के रूप में |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | वैकल्पिक डेटा स्ट्रीम को खोज परिणामों में शामिल करें |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | उपनिर्देशिकाओं में पुनरावृत्ति न करें |

## Examples

### ResolveInputObjectFileNames -Input "C:\Temp" -File

```powershell
ResolveInputObjectFileNames -Input "C:\Temp" -File
```

## Parameter Details

### `-InputObject <Object>`

> फ़ाइल नाम या निर्देशिकाएँ रखने वाली इनपुट वस्तु

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Path`, `FilePath`, `Input` |
| **Accept wildcard characters?** | No |

<hr/>
### `-File`

> केवल फ़ाइलें लौटाएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Pattern <String>`

> सामग्री के भीतर खोजने के लिए नियमित अभिव्यक्ति पैटर्न

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-RelativeBasePath <String>`

> आउटपुट में सापेक्ष पथों को हल करने के लिए आधार पथ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllDrives`

> सभी उपलब्ध ड्राइव में खोजें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Directory`

> केवल निर्देशिकाएँ खोजें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `dir` |
| **Accept wildcard characters?** | No |
| **Parameter set** | DirectoriesOnly |

<hr/>
### `-FilesAndDirectories`

> फ़ाइलें और निर्देशिकाएँ दोनों शामिल करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both` |
| **Accept wildcard characters?** | No |
| **Parameter set** | DirectoriesOnly |

<hr/>
### `-PassThru`

> आउटपुट मिलान किए गए आइटम ऑब्जेक्ट के रूप में

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> वैकल्पिक डेटा स्ट्रीम को खोज परिणामों में शामिल करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> उपनिर्देशिकाओं में पुनरावृत्ति न करें

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
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/resetdefaultmonitor.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/WriteFileOutput.md)
