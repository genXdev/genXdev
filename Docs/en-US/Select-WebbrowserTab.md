# Select-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `st`

## Synopsis

> Selects a browser tab from running Playwright-managed browsers.

## Description

Lists and selects browser tabs from all running Playwright-managed
browser instances. When called without selection criteria, displays
a table of all available tabs across all browser types. Supports
selection by numeric index, URL pattern, or direct page reference.

When a tab is selected, sets $Global:chromeController and
$Global:chromeSession for backward compatibility with other
Webbrowser cmdlets.

## Syntax

```powershell
Select-WebbrowserTab [[-Id] <Int32>] [<CommonParameters>]

Select-WebbrowserTab -Name <String> [<CommonParameters>]

Select-WebbrowserTab -ByReference <Object> [<CommonParameters>]

Select-WebbrowserTab [-All] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Force] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Id` | Int32 | — | — | 0 | `-1` | Tab index from the shown list *(Parameter set: )* |
| `-Name` | String | ✅ | — | 0 | — | Selects first tab containing this text in its URL *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ByReference` | Object | ✅ | — | Named | — | Direct page reference from a Playwright browser state *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Filter tabs to Microsoft Edge browser instances |
| `-Chrome` | SwitchParameter | — | — | Named | — | Filter tabs to Google Chrome browser instances |
| `-Chromium` | SwitchParameter | — | — | Named | — | Filter tabs to Chromium-based browser instances (Edge or Chrome) |
| `-Firefox` | SwitchParameter | — | — | Named | — | Filter tabs to Firefox browser instances |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Filter tabs to all Playwright-managed browser types |
| `-Webkit` | SwitchParameter | — | — | Named | — | Filter tabs to WebKit browser instances |
| `-All` | SwitchParameter | — | — | Named | — | Show tabs from all browser types (no filtering) |
| `-Force` | SwitchParameter | — | — | Named | — | Skip confirmation and select first matching tab |

## Examples

### Select-WebbrowserTab Lists all open tabs across all Playwright browser types.

```powershell
Select-WebbrowserTab
Lists all open tabs across all Playwright browser types.
```

### Select-WebbrowserTab -Id 2 Selects the tab at index 2 from the list.

```powershell
Select-WebbrowserTab -Id 2
Selects the tab at index 2 from the list.
```

### st -Name "github.com" Selects the first tab whose URL contains "github.com".

```powershell
st -Name "github.com"
Selects the first tab whose URL contains "github.com".
```

### st -Firefox -Id 0 Selects the first tab from the Firefox browser.

```powershell
st -Firefox -Id 0
Selects the first tab from the Firefox browser.
```

## Parameter Details

### `-Id <Int32>`

> Tab index from the shown list

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ById |

<hr/>
### `-Name <String>`

> Selects first tab containing this text in its URL

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | ByName |

<hr/>
### `-ByReference <Object>`

> Direct page reference from a Playwright browser state

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ByReference |

<hr/>
### `-Edge`

> Filter tabs to Microsoft Edge browser instances

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

> Filter tabs to Google Chrome browser instances

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> Filter tabs to Chromium-based browser instances (Edge or Chrome)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> Filter tabs to Firefox browser instances

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> Filter tabs to all Playwright-managed browser types

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Filter tabs to WebKit browser instances

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> Show tabs from all browser types (no filtering)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Skip confirmation and select first matching tab

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `PSObject`

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
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Import-GenXdevBookmarkletMenu.md)
- [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-WebbrowserEvaluation.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-WebbrowserSideBySide.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-WebsiteInAllBrowsers.md)
