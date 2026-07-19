# Set-WindowsWallpaper

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Stelt een willekeurige achtergrond in vanuit een opgegeven map.

## Description

* Selecteert een willekeurig afbeeldingsbestand uit de opgegeven map en stelt dit in als de bureaubladachtergrond van Windows.
* Ondersteunt JPG/JPEG-afbeeldingen en configureert de achtergrond standaard op "passend" op het scherm.

## Syntax

```powershell
Set-WindowsWallpaper [[-InputObject] <Object>] [-AllDrives] [-NoRecurse] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | Pad naar de map met de achtergrondafbeeldingen |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Doorzoek alle beschikbare schijven |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Niet recursief in subdirectories |

## Examples

### Example 1

```powershell
Set-WindowsWallpaper -InputObject "C:\Wallpapers\*.jpg"
```

Stelt een willekeurige achtergrond in vanuit de map C:\Wallpapers.

### Example 2

```powershell
nextbg
```

Stelt een willekeurige achtergrond in vanuit de standaardmap met behulp van het alias.

## Related Links

- [Set-WindowsWallpaper on GitHub](https://github.com/genXdev/genXdev)
