# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference

## Synopsis

> Retrieves a preference value from the GenXdev preferences store.

## Description

* Implements a two-tier preference retrieval system.
* First checks the local store for a preference value.
* If not found, falls back to the default store.
* If still not found, returns the provided default value.

## Syntax

```powershell
Get-GenXdevPreference [-Name] <string> [[-DefaultValue] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The name of the preference to retrieve |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | 1 | — | The default value if preference is not found |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Clear the session setting (Global variable) before retrieving |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Dont use alternative settings stored in session for Data preferences like Language, Database paths, etc |

## Examples

### Example 1

```powershell
Get-GenXdevPreference -Name "Theme" -DefaultValue "Dark"
```

Retrieves the "Theme" preference with fallback to default "Dark".

### Example 2

```powershell
getPreference "Theme" "Dark"
```

Uses the alias and positional parameters.

## Related Links

- [Get-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
