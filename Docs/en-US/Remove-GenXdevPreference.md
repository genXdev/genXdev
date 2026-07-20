# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference`

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
Remove-GenXdevPreference -Name <String> [-ClearSession] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
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

## Parameter Details

### `-Name <String>`

> The name of the preference to remove

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveDefault`

> Switch to also remove the preference from defaults

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-GenXdevPreferencesDatabasePath.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-GenXdevPreferencesDatabasePath.md)
