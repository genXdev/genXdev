# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-GenXdevPreference [-Name] <string> [-RemoveDefault] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The name of the preference to remove |
| `-RemoveDefault` | SwitchParameter | — | — | 1 | `False` | Switch to also remove the preference from defaults |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Clear the session setting (Global variable) before retrieving |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Dont use alternative settings stored in session for Data preferences like Language, Database paths, etc |

## Related Links

- [Remove-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
