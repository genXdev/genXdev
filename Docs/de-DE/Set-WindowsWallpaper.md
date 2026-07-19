# Set-WindowsWallpaper

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Legt ein zufälliges Hintergrundbild aus einem bestimmten Verzeichnis fest.

## Description

* Wählt eine zufällige Bilddatei aus dem angegebenen Verzeichnis aus und legt sie als
  Desktop-Hintergrund unter Windows fest.
* Unterstützt die Bildformate JPG/JPEG und konfiguriert den Hintergrund standardmäßig als "Anpassen".

## Syntax

```powershell
Set-WindowsWallpaper [[-InputObject] <Object>] [-AllDrives] [-NoRecurse] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | Pfad zum Verzeichnis, das die Hintergrundbilder enthält |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Durchsuchen aller verfügbaren Laufwerke |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Nicht in Unterverzeichnisse absteigen |

## Examples

### Example 1

```powershell
Set-WindowsWallpaper -InputObject "C:\Wallpapers\*.jpg"
```

Legt ein zufälliges Hintergrundbild aus dem Verzeichnis C:\Wallpapers fest.

### Example 2

```powershell
nextbg
```

Setzt mithilfe des Alias ein zufälliges Hintergrundbild aus dem Standardverzeichnis.

## Related Links

- [Set-WindowsWallpaper on GitHub](https://github.com/genXdev/genXdev)
