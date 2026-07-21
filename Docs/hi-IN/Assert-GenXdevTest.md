# Assert-GenXdevTest

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `rungenxdevtests`

## Synopsis

> GenXdev मॉड्यूल, उप-मॉड्यूल या cmdlet के लिए यूनिट परीक्षण निष्पादित करता है
बुद्धिमान डिबगिंग और AI-संचालित त्रुटि समाधान के साथ।

## Description

यह फ़ंक्शन GenXdev मॉड्यूल के लिए एक परीक्षण ढांचा प्रदान करता है, जो संपूर्ण मॉड्यूल से लेकर व्यक्तिगत cmdlet तक बहु-स्तरीय परीक्षण निष्पादन की पेशकश करता है। यह स्थैतिक कोड विश्लेषण के लिए PSScriptAnalyzer, इकाई परीक्षण के लिए Pester, और स्थैतिक कोड विश्लेषण के लिए PSScriptAnalyzer को एकीकृत करता है। फ़ंक्शन में AI-संचालित समाधान क्षमताओं के साथ बुद्धिमान त्रुटि प्रबंधन और विकास वर्कफ़्लो के लिए विस्तृत प्रगति रिपोर्टिंग शामिल है।

## Syntax

```powershell
Assert-GenXdevTest [[-CmdletName] <String>] [[-TestFailedAction] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-AllowLongRunningTests] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [-SkipPesterTests] [-SkipPSAnalyzerTests] [-StackTraceVerbosity <String>] [-Verbosity <String>] [<CommonParameters>]

Assert-GenXdevTest [-IncludeScripts] [-SkipModuleImports] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | cmdlet को फ़िल्टर करने के लिए खोज पैटर्न 🌐 *Supports wildcards* |
| `-TestFailedAction` | String | — | — | 1 | `'Continue'` | परीक्षण विफल होने पर की जाने वाली कार्रवाई। विकल्प: पूछें, जारी रखें, रोकें, SolveWithAI, Write-Error, Throw |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 2 | — | कमांडलेट परिभाषाओं से मेल खाने के लिए रेगुलर एक्सप्रेशन |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 3 | — | खोजने के लिए GenXdev मॉड्यूल नाम 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | स्थानीय मॉड्यूल पथों में खोज छोड़ें |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | केवल प्रकाशित मॉड्यूल पथों में खोजें |
| `-FromScripts` | SwitchParameter | — | — | Named | — | मॉड्यूल के बजाय स्क्रिप्ट फ़ाइलों में खोजें |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | नियमित मॉड्यूल के अतिरिक्त स्क्रिप्ट्स निर्देशिका को भी शामिल करता है *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | केवल अद्वितीय मॉड्यूल नाम लौटाएं |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | cmdlet नामों के लिए सटीक मिलान आवश्यक है |
| `-Verbosity` | String | — | — | Named | `'Normal'` | आउटपुट विस्तार स्तर |
| `-StackTraceVerbosity` | String | — | — | Named | `'FirstLine'` | स्टैक ट्रेस विस्तार स्तर |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | लंबे समय तक चलने वाले यूनिट-टेस्ट का भी चयन करता है |
| `-SkipModuleImports` | SwitchParameter | — | — | Named | — | परीक्षण से पहले GenXdev मॉड्यूल्स को आयात करना छोड़ें *(Parameter set: )* |
| `-SkipPSAnalyzerTests` | SwitchParameter | — | — | Named | — | PSAnalyzer परीक्षणों को छोड़ देता है |
| `-SkipPesterTests` | SwitchParameter | — | — | Named | — | पेस्टर परीक्षणों को छोड़ देता है |

## Examples

### Assert-GenXdevTest -ModuleName "GenXdev.AI" Executes all tests for the GenXdev.AI module including PSScriptAnalyzer and Pester tests.

```powershell
Assert-GenXdevTest -ModuleName "GenXdev.AI"
Executes all tests for the GenXdev.AI module including PSScriptAnalyzer and
Pester tests.
```

### Assert-GenXdevTest -SubModuleName "GenXdev.Coding.PowerShell.Modules" `     -TestFailedAction SolveWithAI Tests the specified sub-module and uses AI to automatically resolve any failures encountered during testing.

```powershell
Assert-GenXdevTest -SubModuleName "GenXdev.Coding.PowerShell.Modules" `
    -TestFailedAction SolveWithAI
Tests the specified sub-module and uses AI to automatically resolve any
failures encountered during testing.
```

### Assert-GenXdevTest -CmdletName "Get-GenXDevCmdlet" -Verbosity Detailed Tests the specific cmdlet with detailed output showing all test operations and results.

```powershell
Assert-GenXdevTest -CmdletName "Get-GenXDevCmdlet" -Verbosity Detailed
Tests the specific cmdlet with detailed output showing all test operations
and results.
```

### testcmdlet Assert-GenXdevTest Uses the alias to test the current cmdlet with default settings.

```powershell
testcmdlet Assert-GenXdevTest
Uses the alias to test the current cmdlet with default settings.
```

## Parameter Details

### `-CmdletName <String>`

> cmdlet को फ़िल्टर करने के लिए खोज पैटर्न

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `Filter`, `CmdLet`, `Cmd`, `FunctionName`, `Name` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-TestFailedAction <String>`

> परीक्षण विफल होने पर की जाने वाली कार्रवाई। विकल्प: पूछें, जारी रखें, रोकें, SolveWithAI, Write-Error, Throw

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'Continue'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DefinitionMatches <String>`

> कमांडलेट परिभाषाओं से मेल खाने के लिए रेगुलर एक्सप्रेशन

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModuleName <String[]>`

> खोजने के लिए GenXdev मॉड्यूल नाम

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Module`, `BaseModuleName`, `SubModuleName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-NoLocal`

> स्थानीय मॉड्यूल पथों में खोज छोड़ें

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

> केवल प्रकाशित मॉड्यूल पथों में खोजें

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

> मॉड्यूल के बजाय स्क्रिप्ट फ़ाइलों में खोजें

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
| **Parameter set** | ModuleName |

<hr/>
### `-OnlyReturnModuleNames`

> केवल अद्वितीय मॉड्यूल नाम लौटाएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactMatch`

> cmdlet नामों के लिए सटीक मिलान आवश्यक है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Verbosity <String>`

> आउटपुट विस्तार स्तर

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Normal'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StackTraceVerbosity <String>`

> स्टैक ट्रेस विस्तार स्तर

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'FirstLine'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowLongRunningTests`

> लंबे समय तक चलने वाले यूनिट-टेस्ट का भी चयन करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipModuleImports`

> परीक्षण से पहले GenXdev मॉड्यूल्स को आयात करना छोड़ें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ModuleName |

<hr/>
### `-SkipPSAnalyzerTests`

> PSAnalyzer परीक्षणों को छोड़ देता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipPesterTests`

> पेस्टर परीक्षणों को छोड़ देता है

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
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-GenXdevCmdLetInIde.md)
