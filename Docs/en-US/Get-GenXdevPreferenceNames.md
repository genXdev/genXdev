# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-GenXdevPreferenceNames on GitHub](https://github.com/genXdev/genXdev)
