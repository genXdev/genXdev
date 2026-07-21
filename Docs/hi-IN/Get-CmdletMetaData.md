# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> निर्दिष्ट GenXdev cmdlet के लिए मेटाडेटा पुनर्प्राप्त करता है, सहायता टेक्स्ट को वैकल्पिक रूप से दूसरी भाषा में अनुवाद करता है।

## Description

किसी GenXdev cmdlet के बारे में व्यापक मेटाडेटा निकालता है और लौटाता है जिसमें उसका सारांश, विवरण, पैरामीटर, उदाहरण और अन्य सहायता जानकारी शामिल है। जब -Language पैरामीटर के माध्यम से कोई लक्ष्य भाषा निर्दिष्ट की जाती है, तो AI-आधारित अनुवाद सेवाओं का उपयोग करके सहायता पाठ का अनुवाद किया जा सकता है। अनुवाद आउटपुट को ठीक करने के लिए कस्टम अनुवाद निर्देश प्रदान किए जा सकते हैं।

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [[-NoSupportForJsonSchema] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | मेटाडेटा प्राप्त करने के लिए कमांडलेट का नाम |
| `-Language` | String | — | — | 1 | — | बीसीपी 47 भाषा टैग सहायता टेक्स्ट का अनुवाद करने के लिए (जैसे, एनएल-एनएल, डीई-डीई)। अनुवाद छोड़ने के लिए हटाएं। |
| `-TranslationInstructions` | String | — | — | 2 | — | AI अनुवाद मॉडल के लिए कस्टम निर्देश। डिफ़ॉल्ट cmdlet-मेटाडेटा-जागरूक अनुवाद निर्देशों को ओवरराइड करता है। |
| `-Model` | String | — | — | 3 | — | AI अनुवादों के लिए उपयोग किया जाने वाला मॉडल पहचानकर्ता या पैटर्न |
| `-ApiEndpoint` | String | — | — | 4 | — | AI अनुवादों के लिए API एंडपॉइंट URL |
| `-ApiKey` | String | — | — | 5 | — | प्रमाणित AI अनुवादों के लिए API कुंजी |
| `-NoSupportForJsonSchema` | String | — | — | 6 | — | इंगित करता है कि LLM के पास JSON स्कीमा के लिए कोई समर्थन नहीं है |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | जब -Language निर्दिष्ट किया गया हो तब भी LLM-आधारित अनुवाद को छोड़ें; सहायता पाठ को स्रोत भाषा में ही रखें। |

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

डिफ़ॉल्ट भाषा में Find-Item cmdlet के लिए मेटाडेटा पुनर्प्राप्त करता है।

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

Find-Item cmdlet के लिए डच अनुवादों के साथ मेटाडेटा प्राप्त करता है।

## Parameter Details

### `-Name <String>`

> मेटाडेटा प्राप्त करने के लिए कमांडलेट का नाम

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> बीसीपी 47 भाषा टैग सहायता टेक्स्ट का अनुवाद करने के लिए (जैसे, एनएल-एनएल, डीई-डीई)। अनुवाद छोड़ने के लिए हटाएं।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TranslationInstructions <String>`

> AI अनुवाद मॉडल के लिए कस्टम निर्देश। डिफ़ॉल्ट cmdlet-मेटाडेटा-जागरूक अनुवाद निर्देशों को ओवरराइड करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> AI अनुवादों के लिए उपयोग किया जाने वाला मॉडल पहचानकर्ता या पैटर्न

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> AI अनुवादों के लिए API एंडपॉइंट URL

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> प्रमाणित AI अनुवादों के लिए API कुंजी

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> इंगित करता है कि LLM के पास JSON स्कीमा के लिए कोई समर्थन नहीं है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipTranslation`

> जब -Language निर्दिष्ट किया गया हो तब भी LLM-आधारित अनुवाद को छोड़ें; सहायता पाठ को स्रोत भाषा में ही रखें।

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

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/EnsureDefaultGenXdevRefactors.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-GenXdevCmdLetInIde.md)
