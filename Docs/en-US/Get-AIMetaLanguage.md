# Get-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Cmdlet | **Aliases:** `getimgmetalang

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-AIMetaLanguage [[-Language] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | The default language for image metadata operations |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Clear the session setting (Global variable) before retrieving |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Dont use alternative settings stored in session for AI preferences like Language, Image collections, etc |

## Related Links

- [Get-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
