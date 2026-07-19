# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Gets the Playwright browser profile directory for persistent sessions.

## Description

* Creates and manages browser profile directories for Playwright automated
  testing.
* Profiles are stored in LocalAppData under
  GenXdev.Powershell\Playwright.profiles.
* These profiles enable persistent sessions across browser automation runs.

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | The browser type (Chromium, Firefox, or Webkit) |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType Chromium
```

Creates or returns path for the Chromium browser profile.

### Example 2

```powershell
Get-PlaywrightProfileDirectory Firefox
```

Creates or returns Firefox profile directory using positional parameter.

## Related Links

- [Get-PlaywrightProfileDirectory on GitHub](https://github.com/genXdev/genXdev)
