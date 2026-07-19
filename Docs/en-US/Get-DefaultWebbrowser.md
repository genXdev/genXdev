# Get-DefaultWebbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Returns the configured default web browser for the current user.

## Description

* Retrieves information about the system's default web browser by querying
  the Windows Registry.
* Returns a hashtable containing the browser's name, description, icon
  path, and executable path.
* The function checks both user preferences and system-wide browser
  registrations to determine the default browser.

## Syntax

```powershell
Get-DefaultWebbrowser [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-DefaultWebbrowser | Format-List
```

Get detailed information about the default browser.

### Example 2

```powershell
$browser = Get-DefaultWebbrowser
& $browser.Path https://www.github.com/
```

Launch the default browser with a specific URL.

## Related Links

- [Get-DefaultWebbrowser on GitHub](https://github.com/genXdev/genXdev)
