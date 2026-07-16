# Assert-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlet

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Assert-GenXdevCmdlet [[-CmdletName] <String>] [[-PromptKey] <String>] [[-Prompt] <String>] [-Code] [-FromScripts] [-Integrate] [-ModuleName <String[]>] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]

Assert-GenXdevCmdlet [-EditPrompt] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | 用于筛选cmdlet的搜索模式 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | Named | — | GenXdev 模块名称搜索 🌐 *Supports wildcards* |
| `-PromptKey` | String | — | — | 1 | `'CheckAllRequirements'` | 用于模板选择的 AI 提示词 |
| `-Prompt` | String | — | — | 2 | `''` | 自定义AI提示文本 |
| `-NoLocal` | SwitchParameter | — | — | Named | — | 跳过本地模块版本 |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | 仅包括已发布的版本 |
| `-FromScripts` | SwitchParameter | — | — | Named | — | 在脚本文件中搜索 |
| `-Code` | SwitchParameter | — | — | Named | — | 在 Visual Studio Code 中打开 |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | 在 Visual Studio 中打开 |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | You are a helpful assistant designed to output JSON. *(Parameter set: )* |
| `-Integrate` | SwitchParameter | — | — | Named | — | 将cmdlet集成到模块中 |

## Related Links

- [Assert-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
