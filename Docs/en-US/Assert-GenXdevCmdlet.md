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
| `-CmdletName` | String | — | — | 0 | — | Search pattern to filter cmdlets 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | Named | — | GenXdev module names to search 🌐 *Supports wildcards* |
| `-PromptKey` | String | — | — | 1 | `'CheckAllRequirements'` | The AI prompt key to use for template selection |
| `-Prompt` | String | — | — | 2 | `''` | Custom AI prompt text to use |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Skip local module versions |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Only include published versions |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Search in script files |
| `-Code` | SwitchParameter | — | — | Named | — | Open in Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Open in Visual Studio |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Only edit the AI prompt *(Parameter set: )* |
| `-Integrate` | SwitchParameter | — | — | Named | — | Integrate cmdlet into module |

## Related Links

- [Assert-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
