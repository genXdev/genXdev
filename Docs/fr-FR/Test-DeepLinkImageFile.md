# Test-DeepLinkImageFile

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Teste si le chemin de fichier spécifié est un fichier image valide avec un format pris en charge.

## Description

Cette fonction valide qu'un fichier existe au chemin spécifié et possède une extension de fichier image prise en charge. Elle vérifie les formats d'image courants, y compris PNG, JPG, JPEG, GIF, BMP, WebP, TIFF et TIF. La fonction lève des exceptions pour les chemins invalides ou les formats de fichier non pris en charge.

## Syntax

```powershell
Test-DeepLinkImageFile -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | — | 0 | — | Le chemin d'accès au fichier image à tester |

## Examples

### Test-DeepLinkImageFile -Path "C:\Images\photo.jpg"

```powershell
Test-DeepLinkImageFile -Path "C:\Images\photo.jpg"
```

### Test-DeepLinkImageFile "C:\Images\logo.png"

```powershell
Test-DeepLinkImageFile "C:\Images\logo.png"
```

## Related Links

- [Test-DeepLinkImageFile on GitHub](https://github.com/genXdev/genXdev)
