# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> PSScriptAnalyzer स्वरूपण नियमों का उपयोग करके PowerShell स्क्रिप्ट फ़ाइलों को स्वरूपित करता है।

## Description

यह फ़ंक्शन PSScriptAnalyzer के Invoke-Formatter cmdlet का उपयोग करके स्क्रिप्ट फ़ाइलों पर PowerShell स्वरूपण नियम लागू करता है। यह अलग-अलग फ़ाइलों को संसाधित कर सकता है या निर्देशिकाओं में कई फ़ाइलों को पुनरावर्ती रूप से प्रारूपित कर सकता है। फ़ंक्शन अनुकूलन योग्य स्वरूपण सेटिंग्स का उपयोग करता है और स्वरूपण प्रक्रिया की विस्तृत लॉगिंग प्रदान करता है।

## Syntax

```powershell
Invoke-GenXdevPSFormatter -Path <String> [-Range <Int32[]>] [-Recurse] [-Settings <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | फ़ॉर्मेट करने के लिए स्क्रिप्ट फ़ाइल का पथ निर्दिष्ट करता है। |
| `-Settings` | Object | — | — | Named | — | एक सेटिंग्स हैशटेबल या PowerShell डेटा फ़ाइल (.psd1) का पथ जिसमें स्वरूपण सेटिंग्स होती हैं। |
| `-Range` | Int32[] | — | — | Named | — | फ़ॉर्मेटिंग किस सीमा के भीतर होनी चाहिए, यह चार पूर्णांकों की एक सरणी के रूप में: प्रारंभिक पंक्ति संख्या, प्रारंभिक स्तंभ संख्या, समाप्ति पंक्ति संख्या, समाप्ति स्तंभ संख्या। |
| `-Recurse` | SwitchParameter | — | — | Named | — | उपनिर्देशिकाओं में फ़ाइलों को पुनरावर्ती रूप से संसाधित करें। |

## Examples

### Invoke-GenXdevPSFormatter -Path "C:\Scripts\MyScript.ps1"

```powershell
Invoke-GenXdevPSFormatter -Path "C:\Scripts\MyScript.ps1"
```

### Invoke-GenXdevPSFormatter -Path "C:\Scripts" -Recurse

```powershell
Invoke-GenXdevPSFormatter -Path "C:\Scripts" -Recurse
```

### "MyScript.ps1" | Invoke-GenXdevPSFormatter -Settings @{IncludeRules=@('PSUseCorrectCasing')}

```powershell
"MyScript.ps1" | Invoke-GenXdevPSFormatter -Settings @{IncludeRules=@('PSUseCorrectCasing')}
```

## Parameter Details

### `-Path <String>`

> फ़ॉर्मेट करने के लिए स्क्रिप्ट फ़ाइल का पथ निर्दिष्ट करता है।

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Name`, `FullName`, `ImagePath`, `FileName`, `ScriptFileName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Settings <Object>`

> एक सेटिंग्स हैशटेबल या PowerShell डेटा फ़ाइल (.psd1) का पथ जिसमें स्वरूपण सेटिंग्स होती हैं।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Range <Int32[]>`

> फ़ॉर्मेटिंग किस सीमा के भीतर होनी चाहिए, यह चार पूर्णांकों की एक सरणी के रूप में: प्रारंभिक पंक्ति संख्या, प्रारंभिक स्तंभ संख्या, समाप्ति पंक्ति संख्या, समाप्ति स्तंभ संख्या।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Recurse`

> उपनिर्देशिकाओं में फ़ाइलों को पुनरावर्ती रूप से संसाधित करें।

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
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-CmdletMetaData.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-GenXdevCmdLetInIde.md)
