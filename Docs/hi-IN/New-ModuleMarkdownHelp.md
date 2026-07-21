# New-ModuleMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> किसी भी PowerShell मॉड्यूल के लिए समृद्ध Markdown सहायता फ़ाइलें उत्पन्न करता है।

## Description

किसी भी PowerShell मॉड्यूल के लिए एक व्यापक Markdown सहायता साइट उत्पन्न करता है:
प्रति cmdlet एक .md फ़ाइल सभी मेटाडेटा अनुभागों के साथ, साथ ही एक README.md
अनुक्रमणिका जिसमें प्रति उप-मॉड्यूल तालिकाएँ हैं जो प्रत्येक cmdlet फ़ाइल से लिंक होती हैं।

उप-मॉड्यूल खोज पोर्टेबल है: स्क्रिप्ट cmdlets के लिए .psm1 डॉट-सोर्स निर्देशिकाएँ,
संकलित cmdlets के लिए .NET नामस्थान, बिना उप-मॉड्यूल संरचना वाले मॉड्यूल के लिए
एक स्तरीय फ़ॉलबैक श्रृंखला के साथ।

## Syntax

```powershell
New-ModuleMarkdownHelp -ModuleName <String> [-ApiEndpoint <String>] [-ApiKey <String>] [-Force] [-Language <String>] [-LinkPrefix <String>] [-Model <String>] [-NoSupportForJsonSchema <String>] [-OutputPath <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | पावरशेल मॉड्यूल का नाम जिसके लिए सहायता उत्पन्न करनी है |
| `-OutputPath` | String | — | — | Named | — | .md फ़ाइलों के लिए कस्टम आउटपुट निर्देशिका। डिफ़ॉल्ट <moduleRoot>\Docs\<language> है। |
| `-Language` | String | — | — | Named | `'en-US'` | जनरेटेड हेल्प के लिए BCP 47 भाषा टैग (जैसे, en-US, nl-NL, de-DE) |
| `-Force` | SwitchParameter | — | — | Named | — | बिना पूछे मौजूदा .md फ़ाइलों को अधिलेखित करें |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | @{response=Skip LLM translation; keep help in source language} |
| `-Model` | String | — | — | Named | — | AI अनुवादों के लिए उपयोग किया जाने वाला मॉडल पहचानकर्ता या पैटर्न |
| `-ApiEndpoint` | String | — | — | Named | — | AI अनुवादों के लिए API एंडपॉइंट URL |
| `-ApiKey` | String | — | — | Named | — | प्रमाणित AI अनुवादों के लिए API कुंजी |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | इंगित करता है कि LLM के पास JSON स्कीमा के लिए कोई समर्थन नहीं है |
| `-LinkPrefix` | String | — | — | Named | — | README इंडेक्स लिंक्स के लिए URL उपसर्ग (जैसे, https://github.com/org/repo/Docs/) |
| `-TranslationInstructions` | String | — | — | Named | — | कस्टम AI अनुवाद निर्देश |

## Examples

### New-ModuleMarkdownHelp -ModuleName 'Pester' -SkipTranslation

```powershell
New-ModuleMarkdownHelp -ModuleName 'Pester' -SkipTranslation
```

Docs\ फ़ोल्डर उत्पन्न करता है जिसमें प्रति Pester cmdlet एक .md + README.md अनुक्रमणिका होती है।

### New-ModuleMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'

```powershell
New-ModuleMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'
```

डच-अनुवादित मार्कडाउन सहायता उत्पन्न करता है, मौजूदा फ़ाइलों को ओवरराइट करता है।

### New-ModuleMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation

```powershell
New-ModuleMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation
```

README सूची में पूर्ण GitHub लिंक के साथ सहायता उत्पन्न करता है।

## Parameter Details

### `-ModuleName <String>`

> पावरशेल मॉड्यूल का नाम जिसके लिए सहायता उत्पन्न करनी है

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputPath <String>`

> .md फ़ाइलों के लिए कस्टम आउटपुट निर्देशिका। डिफ़ॉल्ट <moduleRoot>\Docs\<language> है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> जनरेटेड हेल्प के लिए BCP 47 भाषा टैग (जैसे, en-US, nl-NL, de-DE)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'en-US'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> बिना पूछे मौजूदा .md फ़ाइलों को अधिलेखित करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipTranslation`

> @{response=Skip LLM translation; keep help in source language}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LinkPrefix <String>`

> README इंडेक्स लिंक्स के लिए URL उपसर्ग (जैसे, https://github.com/org/repo/Docs/)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TranslationInstructions <String>`

> कस्टम AI अनुवाद निर्देश

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String[]`

## Related Links

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/EnsureDefaultGenXdevRefactors.md)
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-CmdletMetaData.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-GenXdevCmdLetInIde.md)
