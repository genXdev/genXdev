# Import-GenXdevBookmarkletMenu

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Imports GenXdev JavaScript bookmarklets into browser bookmark collections.

## Description

This function scans a directory for GenXdev bookmarklet files with the

## Syntax

```powershell
Import-GenXdevBookmarkletMenu [[-SnippetsPath] <String>] [[-TargetFolder] <String>] [-Chrome] [-Edge] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SnippetsPath` | String | — | — | 0 | `"$($MyInvocation.MyCommand.Module.ModuleBase)\Bookmarklets"` | Path to directory containing bookmarklet snippet files |
| `-TargetFolder` | String | — | — | 1 | `""` | Target bookmark folder in browser bookmark structure |
| `-Edge` | SwitchParameter | — | — | Named | — | Import bookmarklets into Microsoft Edge browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Import bookmarklets into Google Chrome browser |
| `-Firefox` | SwitchParameter | — | — | Named | — | Import bookmarklets into Mozilla Firefox browser |

## Examples

### Import-GenXdevBookmarkletMenu -Edge

```powershell
Import-GenXdevBookmarkletMenu -Edge
```

Imports all bookmarklet files from the default snippets directory into
Microsoft Edge's bookmark bar folder.

### Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf

```powershell
Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf
```

Shows what bookmarklets would be imported from the specified path into
Google Chrome without actually performing the import operation.

## Related Links

- [Import-GenXdevBookmarkletMenu on GitHub](https://github.com/genXdev/genXdev)
