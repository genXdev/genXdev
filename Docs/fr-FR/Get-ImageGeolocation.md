# Get-ImageGeolocation

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Extrait les données de géolocalisation d'un fichier image.

## Description

* Lit les métadonnées EXIF d'un fichier image pour extraire ses coordonnées de latitude et
  de longitude.
* Prend en charge les images contenant des métadonnées GPS dans leurs données EXIF.
* Utilise la classe System.Drawing.Image pour charger l'image et analyser les coordonnées
  GPS à partir des éléments de propriété.

## Syntax

```powershell
Get-ImageGeolocation [-ImagePath] <string> [<CommonParameters>]
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

## Related Links

- [Get-ImageGeolocation on GitHub](https://github.com/genXdev/genXdev)
