# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault

## Synopsis

> Sets a default preference value in the GenXdev preferences store.

## Description

* Manages default preferences in the GenXdev preference system.
* Handles storing values, removing preferences when values are empty, and
  ensures changes are synchronized across the system.
* Supports null values by removing the preference entirely in such cases.

## Syntax

```powershell
Set-GenXdevDefaultPreference [-Name] <string> [[-Value] <string>] [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | The name of the preference to set in defaults |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | The value to store for the preference |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Database path for preference data files |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Clear the session setting (Global variable) before retrieving |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Dont use alternative settings stored in session for Data preferences like Language, Database paths, etc |

## Examples

### Example 1

```powershell
Set-GenXdevDefaultPreference -Name "Theme" -Value "Dark"
```

Sets the default theme preference to "Dark".

### Example 2

```powershell
setPreferenceDefault "EmailNotifications" "Disabled"
```

Uses the alias to disable email notifications in defaults.

## Related Links

- [Set-GenXdevDefaultPreference on GitHub](https://github.com/genXdev/genXdev)
