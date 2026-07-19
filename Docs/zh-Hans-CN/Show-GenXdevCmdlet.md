# Show-GenXdevCmdlet

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `cmds

## Synopsis

> 显示GenXdev PowerShell模块及其Cmdlet和别名。

## Description

列出所有已安装的 GenXdev PowerShell 模块及其关联的 cmdlet 和别名。使用 Get-GenXDevCmdlet 检索 cmdlet 信息，并可选择显示其脚本位置。提供筛选和多种显示选项。

## Syntax

```powershell
Show-GenXdevCmdlet [[-CmdletName] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-Online] [-OnlyAliases] [-OnlyPublished] [-OnlyReturnModuleNames] [-PassThru] [-ShowTable] [<CommonParameters>]

Show-GenXdevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | 用于筛选cmdlet的搜索模式 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | 用于匹配 cmdlet 定义的正则表达式 |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | GenXdev 模块名称搜索 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | 跳过在本地模块路径中搜索 |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | 仅在已发布的模块路径中搜索 |
| `-FromScripts` | SwitchParameter | — | — | Named | — | 在脚本文件中搜索，而非模块中 |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | 除了常规模块外，还包括脚本目录 *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | fatal: module requests not found |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Perform exact matching instead of wildcard matching |
| `-Online` | SwitchParameter | — | — | Named | — | 打开GitHub文档，而不是控制台输出 |
| `-OnlyAliases` | SwitchParameter | — | — | Named | — | 指定时，仅显示 cmdlet 的别名 |
| `-ShowTable` | SwitchParameter | — | — | Named | — | | Header 1 | Header 2 | Header 3 |
|----------|----------|----------|
| Row 1 Col 1 | Row 1 Col 2 | Row 1 Col 3 |
| Row 2 Col 1 | Row 2 Col 2 | Row 2 Col 3 | |
| `-PassThru` | SwitchParameter | — | — | Named | — | The `-PassThru` parameter. |

## Examples

### Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable Lists all cmdlets starting with "Get" in the Console module as a table

```powershell
Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable
Lists all cmdlets starting with "Get" in the Console module as a table
```

### cmds get -m console Lists all cmdlets starting with "Get" in the Console module

```powershell
cmds get -m console
Lists all cmdlets starting with "Get" in the Console module
```

### Show-GenXdevCmdlet -OnlyReturnModuleNames Returns only unique module names

```powershell
Show-GenXdevCmdlet -OnlyReturnModuleNames
Returns only unique module names
```

## Outputs

- `Collections.ArrayList`
- `Void`

## Related Links

- [Show-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
