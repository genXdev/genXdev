# Show-GenXdevCmdLetInIde

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `editcmdlet, `cmdlet

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Show-GenXdevCmdLetInIde -CmdletName <String> [[-ModuleName] <String[]>] [-ChangedirectoryOnly] [-Code] [-CoPilot] [-EditPrompt] [-FromScripts] [-KeysToSend <String[]>] [-NoLocal] [-OnlyPublished] [-Prompt <String>] [-Search] [-UnitTests] [-VisualStudio] [<CommonParameters>]

Show-GenXdevCmdLetInIde [[-BaseModuleName] <String>] [[-Synopsis] <String>] [[-Description] <String>] [[-CmdletAliases] <String[]>] [-New] [-PromptKey <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | ✅ | — | 0 | — | 用于筛选cmdlet的搜索模式 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | GenXdev 模块名称搜索 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | The `-NoLocal` parameter. |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | The `-OnlyPublished` parameter. |
| `-FromScripts` | SwitchParameter | — | — | Named | — | The `-FromScripts` parameter. |
| `-Code` | SwitchParameter | — | — | Named | — | 用于打开文件的IDE |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | 在 Visual Studio 中打开 |
| `-UnitTests` | SwitchParameter | — | — | Named | — | Show the function's unit-tests instead of the function |
| `-KeysToSend` | String[] | — | — | Named | `@()` | 要发送的密钥 |
| `-CoPilot` | SwitchParameter | — | — | Named | — | 添加到 Co-Pilot 编辑会话 |
| `-Search` | SwitchParameter | — | — | Named | — | 同时全局搜索该 cmdlet |
| `-ChangedirectoryOnly` | SwitchParameter | — | — | Named | — | 在指定时，仅更改当前 PowerShell 位置
相应的 Cmdlet 目录 |
| `-New` | SwitchParameter | — | — | Named | — | 创建一个新的cmdlet *(Parameter set: )* |
| `-Synopsis` | String | — | — | 3 | `"todo: A brief description of the cmdlet's purpose"` | 该cmdlet的简要用途说明 *(Parameter set: )* |
| `-Description` | String | — | — | 4 | `'todo: [A detailed description of what the cmdlet does]'` | 关于该 cmdlet 功能的详细描述 *(Parameter set: )* |
| `-BaseModuleName` | String | — | — | 2 | — | 将新 cmdlet 集成到现有的 GenXdev 模块中 *(Parameter set: )* |
| `-CmdletAliases` | String[] | — | — | 5 | — | 该cmdlet的一个或多个别名。接受一个字符串数组。 *(Parameter set: )* |
| `-PromptKey` | String | — | — | Named | — | 用于模板选择的 AI 提示词 *(Parameter set: )* |
| `-Prompt` | String | — | — | Named | `"Create a boilerplate GenXdev cmdlet that does what it's name suggests"` | 用于cmdlet生成的定制AI提示文本 |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Only edit the AI prompt without creating the cmdlet |

## Related Links

- [Show-GenXdevCmdLetInIde on GitHub](https://github.com/genXdev/genXdev)
