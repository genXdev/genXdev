# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference`

## Synopsis

> Sets a preference value in the GenXdev preferences store.

## Description

* Manages preferences in the GenXdev local store.
* Can set new preferences, update existing ones, or remove them when a
  null/empty value is provided.
* Preferences are stored with synchronization set to "Local".

## Syntax

```powershell
Set-GenXdevPreference -Name <String> [[-Value] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
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

## Parameter Details

### `-Name <String>`

> The name of the preference to set

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> The value to store for the preference

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceValue` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Use alternative settings stored in session for Data preferences like Language, Database paths, etc

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Clear the session setting (Global variable) before retrieving

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Database path for preference data files

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Dont use alternative settings stored in session for Data preferences like Language, Database paths, etc

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-GenXdevPreferencesDatabasePath.md)
