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

## Parameter Details

### `-SnippetsPath <String>`

> Path to directory containing bookmarklet snippet files

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `"$($MyInvocation.MyCommand.Module.ModuleBase)\Bookmarklets"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TargetFolder <String>`

> Target bookmark folder in browser bookmark structure

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `""` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> Import bookmarklets into Microsoft Edge browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Import bookmarklets into Google Chrome browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> Import bookmarklets into Mozilla Firefox browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Clear-WebbrowserTabSiteApplicationData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Clear-WebbrowserTabSiteApplicationData.md)
- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Import-BrowserBookmarks.md)
- [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-WebbrowserEvaluation.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-WebsiteInAllBrowsers.md)
