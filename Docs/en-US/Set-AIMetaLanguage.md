# Set-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Sets the default language and optionally the image directories for GenXdev.AI
image metadata operations.

## Description

This function configures the global default language for image metadata
operations in the GenXdev.AI module. Optionally, it can also set the global
image directories. Both settings are persisted in the module's preference
storage for use across sessions.

## Syntax

```powershell
Set-AIMetaLanguage [[-Language] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | The default language for image metadata operations |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Dont use alternative settings stored in session for AI preferences like Language, Image collections, etc |

## Examples

### Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")

```powershell
Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")
```

Sets the language and image directories persistently in preferences.

### Set-AIMetaLanguage "French"

```powershell
Set-AIMetaLanguage "French"
```

Sets the language persistently in preferences.

### Set-AIMetaLanguage -Language "German" -SessionOnly

```powershell
Set-AIMetaLanguage -Language "German" -SessionOnly
```

Sets the language only for the current session (Global variable).

### Set-AIMetaLanguage -ClearSession

```powershell
Set-AIMetaLanguage -ClearSession
```

Clears the session language setting (Global variable) without affecting
persistent preferences.

## Related Links

- [Set-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
