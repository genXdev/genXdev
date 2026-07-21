# Get-ModuleCmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 检索 PowerShell 模块中所有 cmdlet 的元数据。

## Description

检索指定模块中每个 cmdlet 的完整元数据（概要、描述、参数、示例、输出和别名），并为每个结果添加 SubModuleName 和 CmdletType 属性。

子模块分配使用两条独立的路径：

- 脚本 cmdlet (.ps1)：源文件与 .psm1 点源目录映射（Functions\<SubModuleName>\FileName.ps1）进行匹配。
- 编译后的 cmdlet (.dll)：来自 ImplementationType.Namespace 的命名空间（例如 GenXdev.FileSystem）。

## Syntax

```powershell
Get-ModuleCmdletMetaData -ModuleName <String> [-ApiEndpoint <String>] [-ApiKey <String>] [-Language <String>] [-Model <String>] [-NoSupportForJsonSchema <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | 要检索 cmdlet 元数据的 PowerShell 模块名称 |
| `-Language` | String | — | — | Named | — | zh-CN |
| `-Model` | String | — | — | Named | — | 用于AI翻译的模型标识符或模式 |
| `-ApiEndpoint` | String | — | — | Named | — | 人工智能翻译的API端点URL |
| `-ApiKey` | String | — | — | Named | — | 用于经过身份验证的AI翻译的API密钥 |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | 表示 LLM 不支持 JSON 模式 |
| `-TranslationInstructions` | String | — | — | Named | — | .SYNOPSIS
在PowerShell会话中显示关于.NET对象的属性和方法。

.DESCRIPTION
Get-Member cmdlet获取对象的成员（属性和方法）。

要获取所有对象的成员，请使用InputObject参数。如果指定对象并将结果通过管道传输到Get-Member，或者使用InputObject参数，则Get-Member将获取指定对象的类型成员，并返回一个代表这些成员的字符串数组。

默认情况下，Get-Member不获取静态成员。要获取静态成员，请使用Static参数。

你还可以使用Get-Member列出已加载到PowerShell会话中的.NET类的类型信息（如构造函数、事件等）。为此，请指定TypeName参数而不指定对象；或者将类名通过管道传输到Get-Member。

.PARAMETER InputObject
指定要获取其成员的对象的名称。使用此参数时，Get-Member只列出指定对象的成员。

.PARAMETER Name
指定要获取的成员的名称或名称模式。允许使用通配符。默认情况下，Get-Member获取对象的所有成员。

.PARAMETER ViewType
指定仅获取特定类型的成员。有效值为：Properties、Methods、Events、ParameterizedProperties、MemberSet、All。

.PARAMETER Static
指示cmdlet仅获取对象的静态属性和方法。默认情况下，它仅获取实例成员。

.PARAMETER Force
指示cmdlet添加成员类型（如NoteProperty）到对象的类型信息中。当与ViewType参数一起使用时，Force会获取所有成员类型的成员。

.PARAMETER TypeName
指定要获取其成员的类型名称。当指定TypeName但不指定InputObject时，Get-Member会获取该类型的所有成员。如果仅指定TypeName，则Get-Member会获取该类型的静态成员。

.INPUTS
System.Object
你可以通过管道将任何对象传输到Get-Member。

.OUTPUTS
Microsoft.PowerShell.Commands.MemberDefinition

.EXAMPLE
Get-Service | Get-Member
此命令获取服务对象的成员。

.EXAMPLE
Get-Member -InputObject $a
此命令获取变量中对象的所有成员。

.EXAMPLE
Get-Member -TypeName System.String
此命令获取System.String类的成员。

.RELATED LINKS
Online Version: https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/get-member?view=powershell-5.1 |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | 跳过基于LLM的翻译 |

## Examples

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev'
```

返回 GenXdev 模块中所有 cmdlet 的元数据。

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'
```

返回所有 GenXdev cmdlet 的荷兰语翻译元数据。

## Parameter Details

### `-ModuleName <String>`

> 要检索 cmdlet 元数据的 PowerShell 模块名称

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

> zh-CN

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

> 用于AI翻译的模型标识符或模式

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

> 人工智能翻译的API端点URL

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

> 用于经过身份验证的AI翻译的API密钥

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

> 表示 LLM 不支持 JSON 模式

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

> .SYNOPSIS
在PowerShell会话中显示关于.NET对象的属性和方法。

.DESCRIPTION
Get-Member cmdlet获取对象的成员（属性和方法）。

要获取所有对象的成员，请使用InputObject参数。如果指定对象并将结果通过管道传输到Get-Member，或者使用InputObject参数，则Get-Member将获取指定对象的类型成员，并返回一个代表这些成员的字符串数组。

默认情况下，Get-Member不获取静态成员。要获取静态成员，请使用Static参数。

你还可以使用Get-Member列出已加载到PowerShell会话中的.NET类的类型信息（如构造函数、事件等）。为此，请指定TypeName参数而不指定对象；或者将类名通过管道传输到Get-Member。

.PARAMETER InputObject
指定要获取其成员的对象的名称。使用此参数时，Get-Member只列出指定对象的成员。

.PARAMETER Name
指定要获取的成员的名称或名称模式。允许使用通配符。默认情况下，Get-Member获取对象的所有成员。

.PARAMETER ViewType
指定仅获取特定类型的成员。有效值为：Properties、Methods、Events、ParameterizedProperties、MemberSet、All。

.PARAMETER Static
指示cmdlet仅获取对象的静态属性和方法。默认情况下，它仅获取实例成员。

.PARAMETER Force
指示cmdlet添加成员类型（如NoteProperty）到对象的类型信息中。当与ViewType参数一起使用时，Force会获取所有成员类型的成员。

.PARAMETER TypeName
指定要获取其成员的类型名称。当指定TypeName但不指定InputObject时，Get-Member会获取该类型的所有成员。如果仅指定TypeName，则Get-Member会获取该类型的静态成员。

.INPUTS
System.Object
你可以通过管道将任何对象传输到Get-Member。

.OUTPUTS
Microsoft.PowerShell.Commands.MemberDefinition

.EXAMPLE
Get-Service | Get-Member
此命令获取服务对象的成员。

.EXAMPLE
Get-Member -InputObject $a
此命令获取变量中对象的所有成员。

.EXAMPLE
Get-Member -TypeName System.String
此命令获取System.String类的成员。

.RELATED LINKS
Online Version: https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/get-member?view=powershell-5.1

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

> 跳过基于LLM的翻译

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

- `Collections.Hashtable[]`

## Related Links

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/EnsureDefaultGenXdevRefactors.md)
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-CmdletMetaData.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Show-GenXdevCmdLetInIde.md)
