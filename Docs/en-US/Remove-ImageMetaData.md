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
| `-ImageDirectories` | String[] | — | — | 0 | — | Array of directory paths to process for image metadata removal. If not specified, uses default system directories. |
| `-Language` | String | — | — | 1 | — | The language for removing language-specific metadata files. |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Database path for preference data files |
| `-Recurse` | SwitchParameter | — | — | Named | — | Recurse directories. |
| `-OnlyKeywords` | SwitchParameter | — | — | Named | — | Only remove description.json files (keywords/descriptions). |
| `-OnlyPeople` | SwitchParameter | — | — | Named | — | Only remove people.json files (face recognition data). |
| `-OnlyObjects` | SwitchParameter | — | — | Named | — | Only remove objects.json files (object detection data). |
| `-OnlyScenes` | SwitchParameter | — | — | Named | — | Only remove scenes.json files (scene classification data). |
| `-AllLanguages` | SwitchParameter | — | — | Named | — | Remove metadata files for all supported languages. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Dont use alternative settings stored in session for AI preferences like Language, Image collections, etc |

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)
