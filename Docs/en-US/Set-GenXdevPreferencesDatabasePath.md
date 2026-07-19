# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Sets the database path for preferences used in GenXdev.Data operations.

## Description

* Configures the global database path used by the GenXdev.Data module for
  various preference storage and data operations.
* Settings are stored in the current session (using Global variables) and
  can be cleared from the session (using -ClearSession).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SkipSession] [-SessionOnly] [-ClearSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | A database path where preference data files are located |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Dont use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | When specified, stores the setting only in the current session (Global variable) without persisting to preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | When specified, clears only the session setting (Global variable) without affecting persistent preferences |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

Sets the database path in the current session (Global variable).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

Sets the database path using positional parameter.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

Sets the path only for the current session without persisting.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Clears the Global variable for the database path.

## Related Links

- [Set-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
