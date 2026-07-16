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
| `-CmdletName` | String | ✅ | — | 0 | — | Search pattern to filter cmdlets 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | GenXdev module names to search 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | The `-NoLocal` parameter. |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | The `-OnlyPublished` parameter. |
| `-FromScripts` | SwitchParameter | — | — | Named | — | The `-FromScripts` parameter. |
| `-Code` | SwitchParameter | — | — | Named | — | The ide to open the file in |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Open in Visual Studio |
| `-UnitTests` | SwitchParameter | — | — | Named | — | Show the function's unit-tests instead of the function |
| `-KeysToSend` | String[] | — | — | Named | `@()` | The keys to send |
| `-CoPilot` | SwitchParameter | — | — | Named | — | Add to Co-Pilot edit session |
| `-Search` | SwitchParameter | — | — | Named | — | Also global search for the cmdlet |
| `-ChangedirectoryOnly` | SwitchParameter | — | — | Named | — | When specified, only changes the current PowerShell location\r\nthe respective Cmdlet directory |
| `-New` | SwitchParameter | — | — | Named | — | Create a new cmdlet *(Parameter set: )* |
| `-Synopsis` | String | — | — | 3 | `"todo: A brief description of the cmdlet's purpose"` | A brief description of the cmdlet's purpose *(Parameter set: )* |
| `-Description` | String | — | — | 4 | `'todo: [A detailed description of what the cmdlet does]'` | A detailed description of what the cmdlet does *(Parameter set: )* |
| `-BaseModuleName` | String | — | — | 2 | — | Integrate the new cmdlet into an existing GenXdev module *(Parameter set: )* |
| `-CmdletAliases` | String[] | — | — | 5 | — | One or more aliases for the cmdlet. Accepts an array of strings. *(Parameter set: )* |
| `-PromptKey` | String | — | — | Named | — | The AI prompt key to use for template selection *(Parameter set: )* |
| `-Prompt` | String | — | — | Named | `"Create a boilerplate GenXdev cmdlet that does what it's name suggests"` | Custom AI prompt text to use for cmdlet generation |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Only edit the AI prompt without creating the cmdlet |

## Related Links

- [Show-GenXdevCmdLetInIde on GitHub](https://github.com/genXdev/genXdev)
