# Get-AIKnownFacesRootpath

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Gets the configured directory for face image files used in GenXdev.AI
operations.

## Description

This function retrieves the global face directory used by the GenXdev.AI
module for various face recognition and AI operations. It checks Global
variables first (unless SkipSession is specified), then falls back to
persistent preferences, and finally uses system defaults.

## Syntax

```powershell
Get-AIKnownFacesRootpath [[-FacesDirectory] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | Directory path for face image files |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear the session setting (Global variable) before retrieving |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Dont use alternative settings stored in session for AI preferences like Language, Image collections, etc |

## Examples

### Get-AIKnownFacesRootpath

```powershell
Get-AIKnownFacesRootpath
```

Gets the currently configured faces directory from Global variables or
preferences.

### Get-AIKnownFacesRootpath -SkipSession

```powershell
Get-AIKnownFacesRootpath -SkipSession
```

Gets the configured faces directory only from persistent preferences, ignoring
any session setting.

### Get-AIKnownFacesRootpath -ClearSession

```powershell
Get-AIKnownFacesRootpath -ClearSession
```

Clears the session faces directory setting and then gets the directory from
persistent preferences.

### Get-AIKnownFacesRootpath "C:\MyFaces"

```powershell
Get-AIKnownFacesRootpath "C:\MyFaces"
```

Returns the specified directory after expanding the path.

## Related Links

- [Get-AIKnownFacesRootpath on GitHub](https://github.com/genXdev/genXdev)
