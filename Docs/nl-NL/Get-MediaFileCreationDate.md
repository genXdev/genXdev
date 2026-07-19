# Get-MediaFileCreationDate

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Extracts the best-effort creation date for media and other files.

## Description

Probeert verschillende strategieën om een nauwkeurige aanmaak- of vastlegdatum voor het opgegeven bestand te bepalen. Strategieën omvatten het lezen van EXIF-metadata van afbeeldingen, het parseren van datum/tijd-informatie uit bestandsnamen, en terugvallen op de laatste schrijftijd van het bestand wanneer er geen andere betrouwbare informatie beschikbaar is. De functie retourneert altijd een [DateTime]; wanneer er geen datum kan worden bepaald, retourneert deze [DateTime]::MinValue.

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
