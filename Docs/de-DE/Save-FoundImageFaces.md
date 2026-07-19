# Save-FoundImageFaces

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `saveimagefaces

## Synopsis

> Speichert zugeschnittene Gesichtsbilder aus indizierten Bildsuchergebnissen.

## Description

Diese Funktion nimmt Bildsuchergebnisse entgegen und extrahiert/speichert einzelne Gesichtsbereiche als separate Bilddateien. Sie kann mithilfe verschiedener Kriterien nach Gesichtern suchen und diese in einem angegebenen Ausgabeverzeichnis speichern. Die Funktion unterstützt die Suche nach Beschreibung, Schlüsselwörtern, Personen, Objekten, Szenen, Bildtyp, Stil und Gesamtstimmung. Sie kann auch nach Nacktheit und explizitem Inhalt filtern.

## Syntax

```powershell
Save-FoundImageFaces [[-Any] <String[]>] [-ClearSession] [-DatabaseFilePath <String>] [-DescriptionSearch <String[]>] [-ForceIndexRebuild] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-InputObject <Object[]>] [-Keywords <String[]>] [-Language <String>] [-NoExplicitContent] [-NoNudity] [-Objects <String[]>] [-OutputDirectory <String>] [-OverallMood <String[]>] [-PathLike <String[]>] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-SaveUnknownPersons] [-Scenes <String[]>] [-SessionOnly] [-SkipSession] [-StyleType <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Stimmt mit allen möglichen Metadatentypen überein. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | Der zu suchende Beschreibungstext, Platzhalter erlaubt. |
| `-Keywords` | String[] | — | — | Named | `@()` | Die zu suchenden Schlüsselwörter, Platzhalter erlaubt. |
| `-People` | String[] | — | — | Named | `@()` | People to look for, wildcards allowed. |
| `-Objects` | String[] | — | — | Named | `@()` | Objects to look for, wildcards allowed. |
| `-Scenes` | String[] | — | — | Named | `@()` | Zu suchende Szenen, Platzhalter erlaubt. |
| `-PictureType` | String[] | — | — | Named | `@()` | Bildtypen zum Filtern, Platzhalter sind erlaubt. |
| `-StyleType` | String[] | — | — | Named | `@()` | Stiltypen zum Filtern, Platzhalter erlaubt. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Allgemeine Stimmungen zum Filtern, Platzhalter erlaubt. |
| `-DatabaseFilePath` | String | — | — | Named | — | Pfad zur SQLite-Datenbankdatei. |
| `-Language` | String | — | — | Named | — | Sprache für Beschreibungen und Schlüsselwörter. |
| `-PathLike` | String[] | — | — | Named | `@()` | Array von Verzeichnispfad-ähnlichen Suchstrings zum Filtern von Bildern nach Pfad (SQL LIKE-Muster, z.B. '%\\2024\\%') |
| `-InputObject` | Object[] | — | ✅ (ByValue) | Named | — | Akzeptiert Suchergebnisse aus einem vorherigen -PassThru-Aufruf, um die Ansicht neu zu generieren. |
| `-OutputDirectory` | String | — | — | Named | `'.\'` | Verzeichnis zum Speichern von zugeschnittenen Gesichtsbildern. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filter images that contain nudity. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain nudity. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | Filter images that contain explicit content. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Nur Bilder ohne expliziten Inhalt behalten. |
| `-ForceIndexRebuild` | SwitchParameter | — | — | Named | — | Datenbank des Bildindexes wird neu aufgebaut. |
| `-GeoLocation` | Double[] | — | — | Named | — | Geografische Koordinaten [Breitengrad, Längengrad] für die Suche in der Nähe. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | Maximale Entfernung in Metern vom Geo-Standort, um nach Bildern zu suchen. |
| `-SaveUnknownPersons` | SwitchParameter | — | — | Named | — | Also save unknown persons detected as objects. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Deutliche Alternativ-Einstellungen, die in der Sitzung gespeichert sind, für KI-Präferenzen wie Sprache, Bildersammlungen usw. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Verwenden Sie keine alternativen in der Sitzung gespeicherten Einstellungen für KI-Präferenzen wie Sprache, Bildsammlungen usw. |

## Examples

### Save-FoundImageFaces -People "John*" -OutputDirectory "C:\Faces"

```powershell
Save-FoundImageFaces -People "John*" -OutputDirectory "C:\Faces"
```

### saveimagefaces -Any "vacation" -SaveUnknownPersons

```powershell
saveimagefaces -Any "vacation" -SaveUnknownPersons
```

## Outputs

- `Object[]`
- `List`1[[System.Object, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]`
- `String`

## Related Links

- [Save-FoundImageFaces on GitHub](https://github.com/genXdev/genXdev)
