# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata

## Synopsis

> Entfernt Bildmetadatendateien aus Bildverzeichnissen.

## Description

Die Remove-ImageMetaData-Funktion entfernt zugehörige JSON-Metadatendateien von Bildern. Sie kann selektiv nur Schlüsselwörter (description.json), Personendaten (people.json), Objektdaten (objects.json) oder Szenendaten (scenes.json) entfernen oder alle Metadatendateien entfernen, wenn kein spezifischer Schalter angegeben wird. Sprachspezifische Metadatendateien können durch Angabe des Language-Parameters entfernt werden, und alle Sprachvarianten können mit dem AllLanguages-Schalter entfernt werden.

## Syntax

```powershell
Remove-ImageMetaData [[-ImageDirectories] <String[]>] [[-Language] <String>] [[-PreferencesDatabasePath] <String>] [-AllLanguages] [-ClearSession] [-OnlyKeywords] [-OnlyObjects] [-OnlyPeople] [-OnlyScenes] [-Recurse] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | — | Array von Verzeichnispfaden zur Verarbeitung für die Entfernung von Bildmetadaten. Wenn nicht angegeben, werden die standardmäßigen Systemverzeichnisse verwendet. |
| `-Language` | String | — | — | 1 | — | Die Sprache zum Entfernen sprachspezifischer Metadaten-Dateien. |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Datenbankpfad für Präferenzdatendateien |
| `-Recurse` | SwitchParameter | — | — | Named | — | Verzeichnisse rekursiv durchlaufen. |
| `-OnlyKeywords` | SwitchParameter | — | — | Named | — | Only remove description.json files (keywords/descriptions). |
| `-OnlyPeople` | SwitchParameter | — | — | Named | — | Only remove people.json files (face recognition data). |
| `-OnlyObjects` | SwitchParameter | — | — | Named | — | Nur objects.json-Dateien (Objekterkennungsdaten) entfernen. |
| `-OnlyScenes` | SwitchParameter | — | — | Named | — | Nur scenes.json-Dateien entfernen (Szenenklassifikationsdaten). |
| `-AllLanguages` | SwitchParameter | — | — | Named | — | Remove metadata files for all supported languages. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Deutliche Alternativ-Einstellungen, die in der Sitzung gespeichert sind, für KI-Präferenzen wie Sprache, Bildersammlungen usw. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Verwenden Sie keine alternativen in der Sitzung gespeicherten Einstellungen für KI-Präferenzen wie Sprache, Bildsammlungen usw. |

## Examples

### Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse

```powershell
Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse
```

Entfernt alle Metadaten-Dateien für Bilder in mehreren Verzeichnissen und allen Unterverzeichnissen.

### Remove-ImageMetaData -Recurse -OnlyKeywords

```powershell
Remove-ImageMetaData -Recurse -OnlyKeywords
```

Entfernt ausschließlich description.json-Dateien aus den standardmäßigen Systemverzeichnissen und Unterverzeichnissen.

### Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")

```powershell
Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")
```

Entfernt nur people.json-Dateien aus dem Verzeichnis MyPhotos.

### Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse

```powershell
Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse
```

Entfernt rekursiv sowohl englische als auch spanische Beschreibungsdateien aus Standardverzeichnissen.

### removeimagedata -AllLanguages -OnlyKeywords

```powershell
removeimagedata -AllLanguages -OnlyKeywords
```

Verwendet Alias, um Schlüsselwortdateien für alle unterstützten Sprachen zu entfernen.

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)
