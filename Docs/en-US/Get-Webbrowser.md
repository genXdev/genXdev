# Get-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Returns a collection of installed modern web browsers.

## Description

* Discovers and returns details about modern web browsers installed on the
  system.
* Retrieves information including name, description, icon path, executable
  path and default browser status by querying the Windows registry.
* Only returns browsers that have the required capabilities registered in
  Windows.

## Syntax

```powershell
Get-Webbrowser [<CommonParameters>]

Get-Webbrowser [-Edge] [-Chrome] [-Chromium] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | `False` | Selects Microsoft Edge browser instances *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | `False` | Selects Google Chrome browser instances *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | `False` | Selects default chromium-based browser *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | `False` | Selects Firefox browser instances *(Parameter set: )* |

## Examples

### Example 1

```powershell
Get-Webbrowser | Select-Object Name, Description | Format-Table
```

Returns a collection of all installed modern web browsers.

### Example 2

```powershell
Get-Webbrowser | Where-Object { $_.IsDefaultBrowser }
```

Filters to show only the system default browser.

## Related Links

- [Get-Webbrowser on GitHub](https://github.com/genXdev/genXdev)
