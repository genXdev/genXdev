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

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)
