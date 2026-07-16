# Remove-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-Refactor -Name <String[]> [-RemoveDefault] [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The name of the refactor, accepts wildcards 🌐 *Supports wildcards* |
| `-RemoveDefault` | SwitchParameter | — | — | 1 | — | Switch to also remove the standard refactor set |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | Named | — | The default value if preference is not found |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear the session setting (Global variable) before retrieving |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Dont use alternative settings stored in session for Data preferences like Language, Database paths, etc |

## Related Links

- [Remove-Refactor on GitHub](https://github.com/genXdev/genXdev)
