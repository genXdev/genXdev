# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Gets the configured database path for preference data files used in
GenXdev.Data operations.

## Description

* Retrieves the global database path used by the GenXdev.Data module for
  various preference storage and data operations.
* Checks Global variables first (unless SkipSession is specified), then
  falls back to persistent preferences, and finally uses system defaults.

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Optional database path override |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Clear the session setting (Global variable) before retrieving |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Dont use alternative settings stored in session for Data preferences like Language, Database paths, etc |

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

Retrieves the database path from Global variables or preferences.

### Example 2

```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

Skips the session variable and uses persistent preferences.

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

Clears the session setting before retrieving the path.

## Related Links

- [Get-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
