# Get-GenXDevCmdlet

> **Module:** GenXdev | **Type:** Function | **Aliases:** `gcmds`

## Synopsis

> 检索并列出所有 GenXdev cmdlet 及其详细信息。

## Description

搜索已安装的GenXdev模块和脚本文件，查找cmdlet、它们的别名和描述。可按名称模式和模块名称筛选。支持按cmdlet定义进行筛选，并在本地和已发布的模块路径中提供灵活的搜索选项。

## Syntax

```powershell
Get-GenXDevCmdlet [[-CmdletName] <String[]>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [<CommonParameters>]

Get-GenXDevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String[] | — | ✅ (ByPropertyName) | 0 | — | 用于筛选 cmdlet 的搜索模式 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | 用于匹配 cmdlet 定义的正则表达式 |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | 要搜索的 GenXdev 模块名称 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | 跳过在本地模块路径中的搜索 |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | 仅在已发布的模块路径中搜索 |
| `-FromScripts` | SwitchParameter | — | — | Named | — | 在脚本文件中搜索，而非模块 |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | 除了常规模块外，还包括脚本目录 *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | 仅返回唯一的模块名称 |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | 执行精确匹配而非通配符匹配 |

## Examples

### Get-GenXDevCmdlet -CmdletName "Get-*" -ModuleName "Console" -NoLocal

```powershell
Get-GenXDevCmdlet -CmdletName "Get-*" -ModuleName "Console" -NoLocal
```

### gcmds Get-*

```powershell
gcmds Get-*
```

### Get-GenXDevCmdlet -OnlyReturnModuleNames

```powershell
Get-GenXDevCmdlet -OnlyReturnModuleNames
```

## Parameter Details

### `-CmdletName <String[]>`

> 用于筛选 cmdlet 的搜索模式

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `Filter`, `CmdLet`, `Cmd`, `FunctionName`, `Name` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DefinitionMatches <String>`

> 用于匹配 cmdlet 定义的正则表达式

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModuleName <String[]>`

> 要搜索的 GenXdev 模块名称

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Module`, `BaseModuleName`, `SubModuleName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-NoLocal`

> 跳过在本地模块路径中的搜索

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

> 仅在已发布的模块路径中搜索

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

> 在脚本文件中搜索，而非模块

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

> 除了常规模块外，还包括脚本目录

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

> 仅返回唯一的模块名称

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

> 执行精确匹配而非通配符匹配

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

- `GenXdev.Helpers.GenXdevCmdletInfo`
- `String`

## Related Links

- [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Show-GenXdevCmdlet.md)
