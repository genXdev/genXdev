# Get-ImageGeolocation

> **Module:** GenXdev.Media | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Extrait les données de géolocalisation d'un fichier image.

## Description

* Lit les métadonnées EXIF d'un fichier image pour extraire sa latitude et sa longitude.
* Prend en charge les images contenant des métadonnées GPS dans leurs données EXIF.
* Utilise la classe System.Drawing.Image pour charger l'image et analyser les coordonnées GPS à partir des éléments de propriété.

## Syntax

```powershell
Get-ImageGeolocation -ImagePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Chemin vers le fichier image à analyser |

## Examples

### Example 1

```powershell
Get-ImageGeolocation -ImagePath "C:\Pictures\vacation.jpg"
```

Extrait les coordonnées GPS d'une photo de vacances.

### Example 2

```powershell
"C:\Pictures\vacation.jpg" | Get-ImageGeolocation
```

Utilise le pipeline pour passer le chemin de l'image.

## Parameter Details

### `-ImagePath <String>`

> Chemin vers le fichier image à analyser

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-MediaFile.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStart-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStart-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSwitch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSwitch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSwitch-VlcMediaPlayerRepeat.md)
