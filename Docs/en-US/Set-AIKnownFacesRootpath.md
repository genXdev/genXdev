# Set-AIKnownFacesRootpath

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Sets the directory for face image files used in GenXdev.AI operations.

## Description

This function configures the global face directory used by the GenXdev.AI
module for various face recognition and AI operations. Settings can be stored
persistently in preferences (default), only in the current session (using
-SessionOnly), or cleared from the session (using -ClearSession).

## Syntax

```powershell
Set-AIKnownFacesRootpath [[-FacesDirectory] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | Directory path for face image files |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Dont use alternative settings stored in session for AI preferences like Language, Image collections, etc |

## Examples

### Set-AIKnownFacesRootpath -FacesDirectory "C:\Faces"

```powershell
Set-AIKnownFacesRootpath -FacesDirectory "C:\Faces"
```

Sets the faces directory persistently in preferences.

### Set-AIKnownFacesRootpath "C:\FacePictures"

```powershell
Set-AIKnownFacesRootpath "C:\FacePictures"
```

Sets the faces directory persistently in preferences.

### Set-AIKnownFacesRootpath -FacesDirectory "C:\TempFaces" -SessionOnly

```powershell
Set-AIKnownFacesRootpath -FacesDirectory "C:\TempFaces" -SessionOnly
```

Sets the faces directory only for the current session (Global variable).

### Set-AIKnownFacesRootpath -ClearSession

```powershell
Set-AIKnownFacesRootpath -ClearSession
```

Clears the session faces directory setting (Global variable) without affecting
persistent preferences.

## Related Links

- [Set-AIKnownFacesRootpath on GitHub](https://github.com/genXdev/genXdev)
