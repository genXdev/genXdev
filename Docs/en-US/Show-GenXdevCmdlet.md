# Show-GenXdevCmdlet

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `cmds

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Show-GenXdevCmdlet [[-CmdletName] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-Online] [-OnlyAliases] [-OnlyPublished] [-OnlyReturnModuleNames] [-PassThru] [-ShowTable] [<CommonParameters>]

Show-GenXdevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | Search pattern to filter cmdlets 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | Regular expression to match cmdlet definitions |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | GenXdev module names to search 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Skip searching in local module paths |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Only search in published module paths |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Search in script files instead of modules |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Includes the scripts directory in addition to regular modules *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | Only return unique module names |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Perform exact matching instead of wildcard matching |
| `-Online` | SwitchParameter | — | — | Named | — | Open GitHub documentation instead of console output |
| `-OnlyAliases` | SwitchParameter | — | — | Named | — | When specified displays only aliases of cmdlets |
| `-ShowTable` | SwitchParameter | — | — | Named | — | Display results in table format |
| `-PassThru` | SwitchParameter | — | — | Named | — | The `-PassThru` parameter. |

## Outputs

- `Collections.ArrayList`
- `Void`

## Related Links

- [Show-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
