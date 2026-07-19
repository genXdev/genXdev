# Get-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Cmdlet | **Aliases:** `getimgmetalang

## Synopsis

> Gets the configured default language for image metadata operations.

## Description

* This cmdlet retrieves the default language used by the GenXdev.AI module
  for image metadata operations.
* It checks Global variables first (unless SkipSession is specified), then
  falls back to persistent preferences, and finally uses system defaults.

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

## Examples

### Example 1

```powershell
Get-AIMetaLanguage
```

Get the currently configured language from Global variables or preferences.

### Example 2

```powershell
Get-AIMetaLanguage -SkipSession
```

Get the configured language from persistent preferences, ignoring session.

### Example 3

```powershell
Get-AIMetaLanguage -ClearSession
```

Clear the session setting and get language from persistent preferences.

## Related Links

- [Get-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
