# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)
