# Select-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `st

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

## Outputs

- `PSObject`

## Related Links

- [Select-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)
