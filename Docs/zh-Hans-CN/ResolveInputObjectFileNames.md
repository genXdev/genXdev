# ResolveInputObjectFileNames

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> 将输入对象扩展为文件和目录名称，支持各种筛选和输出选项。

## Description

此函数处理输入对象（文件、目录或集合）并将其展开为文件和目录名称。它支持筛选、模式匹配，并能以对象形式输出结果。该函数旨在与管道输入配合使用，并提供递归、备用数据流等选项。

## Syntax

```powershell
ResolveInputObjectFileNames [[-InputObject] <Object>] [[-RelativeBasePath] <String>] [-AllDrives] [-File] [-IncludeAlternateFileStreams] [-NoRecurse] [-PassThru] [<CommonParameters>]

ResolveInputObjectFileNames [[-Pattern] <String>] [<CommonParameters>]

ResolveInputObjectFileNames [-Directory] [-FilesAndDirectories] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | 包含文件名或目录的输入对象 |
| `-File` | SwitchParameter | — | — | Named | — | 只返回文件 |
| `-Pattern` | String | — | — | 1 | — | 用于在内容中搜索的正则表达式模式 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | 用于解析输出中相对路径的基础路径 |
| `-AllDrives` | SwitchParameter | — | — | Named | — | 在所有可用驱动器中搜索 |
| `-Directory` | SwitchParameter | — | — | Named | — | 仅搜索目录 *(Parameter set: )* |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | 包含文件和目录 *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    将指定的目录从HDFS复制到本地文件系统
.DESCRIPTION
    Copy-FromHDFS cmdlet 将指定的目录从HDFS复制到本地文件系统。
    它相当于 'hdfs dfs -copyToLocal' 命令。
    目标路径将成为源路径内容的根目录，除非指定了 -Overwrite 参数。
    当使用 -Overwrite 参数时，目标路径及其内容将被源目录替换。
    目标路径不能是包含多个文件的现有目录。
.PARAMETER Path
    要复制的HDFS目录路径。
.PARAMETER Destination
    本地文件系统上的目标路径。
.PARAMETER Overwrite
    覆盖目标路径上的任何现有内容。
.INPUTS
    字符串
    您可以通过管道将HDFS路径传递给 Copy-FromHDFS。
.OUTPUTS
    字符串
    Copy-FromHDFS 返回一个表示复制操作的字符串。
.EXAMPLE
    C:\PS> Copy-FromHDFS -Path /user/data -Destination D:\data
    此命令将HDFS中的 /user/data 目录复制到本地文件系统的 D:\data。
.EXAMPLE
    Copy-FromHDFS /user/data D:\data -Overwrite
    将 /user/data 目录从HDFS复制到 D:\data，如果存在则覆盖。 |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | 在搜索结果中包含备用数据流 |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | 不递归到子目录 |

## Examples

### ResolveInputObjectFileNames -Input "C:\Temp" -File

```powershell
ResolveInputObjectFileNames -Input "C:\Temp" -File
```

## Parameter Details

### `-InputObject <Object>`

> 包含文件名或目录的输入对象

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

> 只返回文件

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

> 用于在内容中搜索的正则表达式模式

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

> 用于解析输出中相对路径的基础路径

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

> 在所有可用驱动器中搜索

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

> 仅搜索目录

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

> 包含文件和目录

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

> .SYNOPSIS
    将指定的目录从HDFS复制到本地文件系统
.DESCRIPTION
    Copy-FromHDFS cmdlet 将指定的目录从HDFS复制到本地文件系统。
    它相当于 'hdfs dfs -copyToLocal' 命令。
    目标路径将成为源路径内容的根目录，除非指定了 -Overwrite 参数。
    当使用 -Overwrite 参数时，目标路径及其内容将被源目录替换。
    目标路径不能是包含多个文件的现有目录。
.PARAMETER Path
    要复制的HDFS目录路径。
.PARAMETER Destination
    本地文件系统上的目标路径。
.PARAMETER Overwrite
    覆盖目标路径上的任何现有内容。
.INPUTS
    字符串
    您可以通过管道将HDFS路径传递给 Copy-FromHDFS。
.OUTPUTS
    字符串
    Copy-FromHDFS 返回一个表示复制操作的字符串。
.EXAMPLE
    C:\PS> Copy-FromHDFS -Path /user/data -Destination D:\data
    此命令将HDFS中的 /user/data 目录复制到本地文件系统的 D:\data。
.EXAMPLE
    Copy-FromHDFS /user/data D:\data -Overwrite
    将 /user/data 目录从HDFS复制到 D:\data，如果存在则覆盖。

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

> 在搜索结果中包含备用数据流

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

> 不递归到子目录

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

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-JsonExampleFromSchema.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/resetdefaultmonitor.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/WriteFileOutput.md)
