# Search-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `searchcmdlet

## Synopsis

> Searches for a GenXdev cmdlet and optionally opens it in an IDE for editing.

## Description

This function searches for GenXdev cmdlets using a pattern and optionally opens
the found cmdlet's source file in Visual Studio Code or Visual Studio for
editing. It retrieves cmdlet information and provides keyboard shortcuts to
quickly navigate to the function definition.

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

## Examples

### Search-GenXdevCmdlet -CmdletName "Get-*" -Code Opens first matching cmdlet starting with "Get-" in Visual Studio Code.

```powershell
Search-GenXdevCmdlet -CmdletName "Get-*" -Code
Opens first matching cmdlet starting with "Get-" in Visual Studio Code.
```

### searchcmdlet "Set-GitConfig" -EditCmdlet Searches for Set-GitConfig cmdlet and opens it for editing.

```powershell
searchcmdlet "Set-GitConfig" -EditCmdlet
Searches for Set-GitConfig cmdlet and opens it for editing.
```

## Related Links

- [Search-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
