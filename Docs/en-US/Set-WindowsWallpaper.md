# Set-WindowsWallpaper

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Sets a random wallpaper from a specified directory.

## Description

* Selects a random image file from the specified directory and sets it as
  the Windows desktop wallpaper.
* Supports JPG/JPEG image formats and configures the wallpaper to "fit"
  the screen by default.

## Syntax

```powershell
Set-WindowsWallpaper [[-InputObject] <Object>] [-AllDrives] [-NoRecurse] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | Path to the directory containing the wallpaper images |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Search across all available drives |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Do not recurse into subdirectories |

## Examples

### Example 1

```powershell
Set-WindowsWallpaper -InputObject "C:\Wallpapers\*.jpg"
```

Sets a random wallpaper from the C:\Wallpapers directory.

### Example 2

```powershell
nextbg
```

Sets a random wallpaper from the default directory using the alias.

## Related Links

- [Set-WindowsWallpaper on GitHub](https://github.com/genXdev/genXdev)
