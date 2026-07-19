# Get-MediaFileCreationDate

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Extrahiert das bestmögliche Erstellungsdatum für Medien- und andere Dateien.

## Description

Versucht mehrere Strategien, um ein genaues Erstellungs- oder Aufnahmedatum für die angegebene Datei zu ermitteln. Zu den Strategien gehören das Lesen von EXIF-Metadaten aus Bildern, das Extrahieren von Datums-/Zeitinformationen aus Dateinamen sowie die Rückgriff auf die letzte Änderungszeit der Datei, wenn keine anderen zuverlässigen Informationen verfügbar sind. Die Funktion gibt immer einen [DateTime] zurück; wenn kein Datum ermittelt werden kann, gibt sie [DateTime]::MinValue zurück.

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
