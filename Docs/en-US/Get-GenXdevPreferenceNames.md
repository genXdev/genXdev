# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames

## Synopsis

> Gets all preference names from session storage and database stores.

## Description

* Retrieves a unique list of preference names by combining keys from
  session storage (global variables) and both the local and default
  preference stores.
* Respects session management parameters to control which sources are
  queried.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Clear the session setting (Global variable) before retrieving |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Dont use alternative settings stored in session for Data preferences like Language, Database paths, etc |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

Returns a sorted array of unique preference names from session storage and
both stores using the specified database path.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

Returns only preference names from session storage.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

Returns only preference names from database stores.

## Related Links

- [Get-GenXdevPreferenceNames on GitHub](https://github.com/genXdev/genXdev)
