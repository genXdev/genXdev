# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference

## Synopsis

> Removes a preference value from the GenXdev preferences store.

## Description

* Removes a preference value from the local store and optionally from the
  default store.
* Provides two parameter sets - one for local removal only and another for
  removing from both local and default stores.
* Ensures proper synchronization when modifying the default store.

## Syntax

```powershell
Remove-GenXdevPreference [-Name] <string> [-RemoveDefault] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The name of the preference to remove |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | Switch to also remove the preference from defaults |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Clear the session setting (Global variable) before retrieving |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Dont use alternative settings stored in session for Data preferences like Language, Database paths, etc |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

Removes the "Theme" preference from the local store only.

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

Removes the "Theme" preference from both local and default stores.

## Related Links

- [Remove-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
