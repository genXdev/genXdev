# Assert-ModuleDefinition

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 使用 AI 辅助重构 PowerShell 源代码文件。

## Description

此功能利用AI自动化了PowerShell代码重构的过程。它管理提示模板，检测活动IDE（VS Code或Visual Studio），并通过键盘自动化编排重构工作流程。该功能可处理模块清单（.psd1）和模块脚本（.psm1）文件。

## Syntax

```powershell
Assert-ModuleDefinition -ModuleName <String> [-EditPrompt] [-Prompt <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 模块的名称 |
| `-Prompt` | String | — | — | Named | — | .NAME
    Get-Help

.SYNOPSIS
   显示有关 Windows PowerShell 命令和概念的信息。

.SYNTAX
    Get-Help [[-Name] <string>] [-Path <string>] [-Category <string[]>] [-Component <string[]>] [-Functionality <string[]>] [-Role <string[]>] [-Full] [-Online] [-View <string>] [-ShowWindow] [<CommonParameters>]

.DESCRIPTION
    Get-Help cmdlet 显示有关 Windows PowerShell 命令和概念的信息。
    如果没有参数，Get-Help 将显示 Windows PowerShell 帮助系统的基本信息。
    使用 Name 参数可以获取特定命令或主题的帮助。
    使用参数可以限制搜索范围、自定义显示以及获取新更新的帮助内容。

.PARAMETER Name
   指定要获取帮助的命令名称或主题。
   允许使用通配符。

.PARAMETER Path
   指定帮助文件的路径。

.PARAMETER Category
   指定帮助文件的类别。

.PARAMETER Component
   指定帮助文件的组件。

.PARAMETER Functionality
   指定帮助文件的功能。

.PARAMETER Role
   指定帮助文件的角色。

.PARAMETER Full
   显示帮助文件的完整内容。

.PARAMETER Online
   在默认浏览器中显示帮助文件的在线版本。

.PARAMETER View
   指定帮助文件的视图。

.PARAMETER ShowWindow
   在新窗口中显示帮助文件。

.INPUTS
   String

.OUTPUTS
   PSObject

.NOTES
   这是 Get-Help cmdlet 的部分帮助内容。 |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | 仅编辑AI提示词 |

## Examples

### Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt

```powershell
Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt
```

### "MyModule" | Assert-ModuleDefinition

```powershell
"MyModule" | Assert-ModuleDefinition
```

## Parameter Details

### `-ModuleName <String>`

> 模块的名称

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> .NAME
    Get-Help

.SYNOPSIS
   显示有关 Windows PowerShell 命令和概念的信息。

.SYNTAX
    Get-Help [[-Name] <string>] [-Path <string>] [-Category <string[]>] [-Component <string[]>] [-Functionality <string[]>] [-Role <string[]>] [-Full] [-Online] [-View <string>] [-ShowWindow] [<CommonParameters>]

.DESCRIPTION
    Get-Help cmdlet 显示有关 Windows PowerShell 命令和概念的信息。
    如果没有参数，Get-Help 将显示 Windows PowerShell 帮助系统的基本信息。
    使用 Name 参数可以获取特定命令或主题的帮助。
    使用参数可以限制搜索范围、自定义显示以及获取新更新的帮助内容。

.PARAMETER Name
   指定要获取帮助的命令名称或主题。
   允许使用通配符。

.PARAMETER Path
   指定帮助文件的路径。

.PARAMETER Category
   指定帮助文件的类别。

.PARAMETER Component
   指定帮助文件的组件。

.PARAMETER Functionality
   指定帮助文件的功能。

.PARAMETER Role
   指定帮助文件的角色。

.PARAMETER Full
   显示帮助文件的完整内容。

.PARAMETER Online
   在默认浏览器中显示帮助文件的在线版本。

.PARAMETER View
   指定帮助文件的视图。

.PARAMETER ShowWindow
   在新窗口中显示帮助文件。

.INPUTS
   String

.OUTPUTS
   PSObject

.NOTES
   这是 Get-Help cmdlet 的部分帮助内容。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EditPrompt`

> 仅编辑AI提示词

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

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Assert-GenXdevTest.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/EnsureDefaultGenXdevRefactors.md)
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-CmdletMetaData.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Show-GenXdevCmdLetInIde.md)
