# Search-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `searchcmdlet

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Search-GenXdevCmdlet [[-CmdletName] <String>] [[-ModuleName] <String[]>] [-Code] [-EditCmdlet] [-FromScripts] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | 用于筛选cmdlet的搜索模式 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | GenXdev 模块名称搜索 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | 跳过在本地模块路径中搜索 |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | 将搜索限制为仅限已发布的模块路径 |
| `-FromScripts` | SwitchParameter | — | — | Named | — | 在脚本文件中搜索而非模块文件 |
| `-Code` | SwitchParameter | — | — | Named | — | 在 Visual Studio Code 中打开找到的 cmdlet |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | 在 Visual Studio 中打开找到的 cmdlet |
| `-EditCmdlet` | SwitchParameter | — | — | Named | — | 在找到文件后，也会在编辑器中打开它 |

## Related Links

- [Search-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
