# Invoke-GenXdevScriptAnalyzer

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> पावरशेल स्क्रिप्ट विश्लेषक को लागू करता है ताकि अनुपालन और सर्वोत्तम प्रथाओं के लिए पावरशेल स्क्रिप्ट का विश्लेषण किया जा सके।

## Description

यह फ़ंक्शन PSScriptAnalyzer के चारों ओर एक रैपर प्रदान करता है ताकि PowerShell स्क्रिप्ट्स का अनुपालन मुद्दों, सर्वोत्तम अभ्यास उल्लंघनों और संभावित बगों के लिए विश्लेषण किया जा सके। यह कस्टमाइज़ेबल नियमों और सेटिंग्स के साथ फ़ाइल-आधारित विश्लेषण और स्ट्रिंग-आधारित स्क्रिप्ट विश्लेषण दोनों का समर्थन करता है।

## Syntax

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptFilePath <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer -ScriptDefinition <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer [-EnableExit] [-Fix] [-Recurse] [-ReportSummary] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ScriptFilePath` | String | ✅ | — | 0 | — | स्क्रिप्ट फ़ाइल का पथ निर्दिष्ट करता है। *(Parameter set: )* |
| `-ScriptDefinition` | String | ✅ | — | Named | — | स्क्रिप्ट परिभाषा को एक स्ट्रिंग के रूप में निर्दिष्ट करता है। *(Parameter set: )* |
| `-EnableExit` | SwitchParameter | — | — | Named | — | निर्दिष्ट करता है कि उपकरण को त्रुटि पर बाहर निकलना चाहिए। |
| `-Fix` | SwitchParameter | — | — | Named | — | उल्लंघनों को स्वचालित रूप से ठीक करना सक्षम करता है। |
| `-Recurse` | SwitchParameter | — | — | Named | — | फ़ाइलों को पुनरावर्ती रूप से प्रोसेस करें। |
| `-ReportSummary` | SwitchParameter | — | — | Named | — | विश्लेषण के बाद एक सारांश रिपोर्ट करें। |

## Examples

### Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\MyScript.ps1"

```powershell
Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\MyScript.ps1"
```

### Invoke-GenXdevScriptAnalyzer -ScriptDefinition "Get-Process | Where-Object {$_.Name -eq 'notepad'}"

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptDefinition "Get-Process | Where-Object {$_.Name -eq 'notepad'}"
```

### Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\" -Recurse -Fix

```powershell
Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\" -Recurse -Fix
```

## Parameter Details

### `-ScriptFilePath <String>`

> स्क्रिप्ट फ़ाइल का पथ निर्दिष्ट करता है।

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Path`, `FullName` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Path |

<hr/>
### `-ScriptDefinition <String>`

> स्क्रिप्ट परिभाषा को एक स्ट्रिंग के रूप में निर्दिष्ट करता है।

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Script |

<hr/>
### `-EnableExit`

> निर्दिष्ट करता है कि उपकरण को त्रुटि पर बाहर निकलना चाहिए।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Fix`

> उल्लंघनों को स्वचालित रूप से ठीक करना सक्षम करता है।

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

> फ़ाइलों को पुनरावर्ती रूप से प्रोसेस करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReportSummary`

> विश्लेषण के बाद एक सारांश रिपोर्ट करें।

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
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-GenXdevPSFormatter.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-GenXdevCmdLetInIde.md)
