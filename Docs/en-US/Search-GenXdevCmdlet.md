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
| `-CmdletName` | String | — | — | 0 | — | Search pattern to filter cmdlets 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | GenXdev module names to search 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Skip searching in local module paths |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Limit search to published module paths only |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Search in script files instead of module files |
| `-Code` | SwitchParameter | — | — | Named | — | Open the found cmdlet in Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Open the found cmdlet in Visual Studio |
| `-EditCmdlet` | SwitchParameter | — | — | Named | — | Also opens the file in the editor after finding |

## Related Links

- [Search-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
