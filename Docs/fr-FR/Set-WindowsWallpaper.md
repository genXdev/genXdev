# Set-WindowsWallpaper

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Définit un fond d'écran aléatoire à partir d'un répertoire spécifié.

## Description

* Sélectionne un fichier image aléatoire dans le répertoire spécifié et le définit comme fond d'écran du bureau Windows.
* Prend en charge les formats d'image JPG/JPEG et configure le fond d'écran en mode "ajuster" par défaut.

## Syntax

```powershell
Set-WindowsWallpaper [[-InputObject] <Object>] [-AllDrives] [-NoRecurse] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | Chemin vers le répertoire contenant les images de fond d'écran |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Rechercher sur tous les lecteurs disponibles |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | N'entrez pas dans les sous-répertoires |

## Examples

### Example 1

```powershell
Set-WindowsWallpaper -InputObject "C:\Wallpapers\*.jpg"
```

Définit un fond d'écran aléatoire à partir du répertoire C:\Wallpapers.

### Example 2

```powershell
nextbg
```

Définit un fond d'écran aléatoire à partir du répertoire par défaut en utilisant l'alias.

## Related Links

- [Set-WindowsWallpaper on GitHub](https://github.com/genXdev/genXdev)
