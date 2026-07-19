# Get-MediaFileCreationDate

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Extrait la meilleure date de création possible pour les fichiers médias et autres.

## Description

Tente plusieurs stratégies pour déterminer une date de création ou de capture précise pour le fichier spécifié. Les stratégies incluent la lecture des métadonnées EXIF de l'image, l'analyse des informations de date/heure à partir des noms de fichiers, et le recours à la date de dernière écriture du fichier lorsque aucune autre information fiable n'est disponible. La fonction retourne toujours un [DateTime] ; lorsqu'aucune date ne peut être déterminée, elle retourne [DateTime]::MinValue.

## Syntax

```powershell
Get-MediaFileCreationDate -FilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The `-FilePath` parameter. |

## Examples

### Get-MediaFileCreationDate -FilePath '.\IMG_20250601_123000.jpg'

```powershell
Get-MediaFileCreationDate -FilePath '.\IMG_20250601_123000.jpg'
```

## Related Links

- [Get-MediaFileCreationDate on GitHub](https://github.com/genXdev/genXdev)
