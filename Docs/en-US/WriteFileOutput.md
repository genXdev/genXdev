# WriteFileOutput

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Outputs file information with hyperlinked display names for enhanced user
experience.

## Description

This function processes file input objects and outputs them in a user-friendly
format with hyperlinked file names when displayed in the console. It handles
different input types including strings, FileInfo objects, and other object
types. The function automatically detects if output is being redirected or
captured in a pipeline and adjusts its behavior accordingly.

## Syntax

```powershell
WriteFileOutput -CallerInvocation <Object> -Input <Object> [-FullPaths] [-Prefix <String>] [-RelativeBasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallerInvocation` | Object | ✅ | ✅ (ByValue) | 0 | — | The invocation information from the calling function |
| `-Input` | Object | ✅ | ✅ (ByValue) | 1 | — | The input object to process, which can be a file path or object |
| `-Prefix` | String | — | — | Named | — | An optional string prefix to prepend to the output display for additional context |
| `-RelativeBasePath` | String | — | — | Named | — | Base path for generating relative file paths in output |
| `-FullPaths` | SwitchParameter | — | — | Named | — | Forces output to use full absolute paths instead of relative paths |

## Examples

### WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"

```powershell
WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"
```

### Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_

```powershell
Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_
```

## Parameter Details

### `-CallerInvocation <Object>`

> The invocation information from the calling function

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Input <Object>`

> The input object to process, which can be a file path or object

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prefix <String>`

> An optional string prefix to prepend to the output display for additional context

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RelativeBasePath <String>`

> Base path for generating relative file paths in output

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullPaths`

> Forces output to use full absolute paths instead of relative paths

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

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-JsonExampleFromSchema.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Test-UnattendedMode.md)
