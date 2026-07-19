# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference

## Synopsis

> Sets a preference value in the GenXdev preferences store.

## Description

* Manages preferences in the GenXdev local store.
* Can set new preferences, update existing ones, or remove them when a
  null/empty value is provided.
* Preferences are stored with synchronization set to "Local".

## Syntax

```powershell
Set-GenXdevPreference [-Name] <string> [[-Value] <string>] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The name of the preference to set |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | The value to store for the preference |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Clear the session setting (Global variable) before retrieving |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Dont use alternative settings stored in session for Data preferences like Language, Database paths, etc |

## Examples

### Example 1

```powershell
Set-GenXdevPreference -Name "Theme" -Value "Dark"
```

Sets the "Theme" preference to "Dark" in the local store.

### Example 2

```powershell
setPreference Theme Light
```

Uses the alias and positional parameters to set the Theme preference.

## Related Links

- [Set-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
