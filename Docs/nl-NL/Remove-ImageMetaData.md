# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata

## Synopsis

> Verwijdert metadata-bestanden van afbeeldingen uit afbeeldingsmappen.

## Description

De functie Remove-ImageMetaData verwijdert bijbehorende JSON-metagegevensbestanden die zijn gekoppeld aan afbeeldingen. Het kan selectief alleen trefwoorden (description.json), persoonsgegevens (people.json), objectgegevens (objects.json) of scènegegevens (scenes.json) verwijderen, of alle metagegevensbestanden verwijderen als er geen specifieke schakelaar wordt opgegeven. Taalspecifieke metagegevensbestanden kunnen worden verwijderd door de parameter Language op te geven, en alle taalvarianten kunnen worden verwijderd met de schakelaar AllLanguages.

## Syntax

```powershell
Remove-ImageMetaData [[-ImageDirectories] <String[]>] [[-Language] <String>] [[-PreferencesDatabasePath] <String>] [-AllLanguages] [-ClearSession] [-OnlyKeywords] [-OnlyObjects] [-OnlyPeople] [-OnlyScenes] [-Recurse] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | — | Array van directorypaden om te verwerken voor het verwijderen van afbeeldingsmetadata. Indien niet opgegeven, worden de standaard systeemdirectories gebruikt. |
| `-Language` | String | — | — | 1 | — | De taal voor het verwijderen van taalspecifieke metadatabestanden. |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Databasepad voor voorkeursgegevensbestanden |
| `-Recurse` | SwitchParameter | — | — | Named | — | Mappen recursief doorlopen. |
| `-OnlyKeywords` | SwitchParameter | — | — | Named | — | Only remove description.json files (keywords/descriptions). |
| `-OnlyPeople` | SwitchParameter | — | — | Named | — | Verwijder alleen people.json-bestanden (gezichtsherkenningsgegevens). |
| `-OnlyObjects` | SwitchParameter | — | — | Named | — | Only remove objects.json files (object detection data). |
| `-OnlyScenes` | SwitchParameter | — | — | Named | — | Verwijder alleen scenes.json-bestanden (sceneclassificatiegegevens). |
| `-AllLanguages` | SwitchParameter | — | — | Named | — | Verwijder metadata-bestanden voor alle ondersteunde talen. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingsverzamelingen, enz. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren zoals taal, afbeeldingscollecties, enz. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Gebruik geen alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingscollecties, enz. |

## Examples

### Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse

```powershell
Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse
```

Verwijdert alle metadatabestanden voor afbeeldingen in meerdere mappen en alle submappen.

### Remove-ImageMetaData -Recurse -OnlyKeywords

```powershell
Remove-ImageMetaData -Recurse -OnlyKeywords
```

Verwijdert alleen description.json-bestanden uit standaard systeemmappen en submappen.

### Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")

```powershell
Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")
```

Verwijdert alleen people.json-bestanden uit de map MyPhotos.

### Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse

```powershell
Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse
```

Verwijdert zowel Engelse als Spaanse beschrijvingsbestanden recursief uit standaardmappen.

### removeimagedata -AllLanguages -OnlyKeywords

```powershell
removeimagedata -AllLanguages -OnlyKeywords
```

Gebruikt alias om trefwoordbestanden voor alle ondersteunde talen te verwijderen.

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)
