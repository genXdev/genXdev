# Get-GenXDevCmdlet

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `gcmds

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-GenXDevCmdlet [[-CmdletName] <String[]>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [<CommonParameters>]

Get-GenXDevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String[] | — | ✅ (ByPropertyName) | 0 | — | 用于筛选cmdlet的搜索模式 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | 用于匹配 cmdlet 定义的正则表达式 |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | GenXdev 模块名称搜索 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | 跳过在本地模块路径中搜索 |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | 仅在已发布的模块路径中搜索 |
| `-FromScripts` | SwitchParameter | — | — | Named | — | 在脚本文件中搜索，而非模块中 |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | 除了常规模块外，还包括脚本目录 *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | fatal: module requests not found |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Perform exact matching instead of wildcard matching |

## Outputs

- `GenXdev.Helpers.GenXdevCmdletInfo`
- `String`

## Related Links

- [Get-GenXDevCmdlet on GitHub](https://github.com/genXdev/genXdev)
