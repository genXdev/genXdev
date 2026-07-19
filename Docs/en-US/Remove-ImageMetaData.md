# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata

## Synopsis

> Removes image metadata files from image directories.

## Description

The Remove-ImageMetaData function removes companion JSON metadata files that
are associated with images. It can selectively remove only keywords
(description.json), people data (people.json), objects data (objects.json),
or scenes data (scenes.json), or remove all metadata files if no specific
switch is provided. Language-specific metadata files can be removed by
specifying the Language parameter, and all language variants can be removed
using the AllLanguages switch.

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

## Examples

### Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse

```powershell
Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse
```

Removes all metadata files for images in multiple directories and all
subdirectories.

### Remove-ImageMetaData -Recurse -OnlyKeywords

```powershell
Remove-ImageMetaData -Recurse -OnlyKeywords
```

Removes only description.json files from default system directories and
subdirectories.

### Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")

```powershell
Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")
```

Removes only people.json files from the MyPhotos directory.

### Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse

```powershell
Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse
```

Removes both English and Spanish description files recursively from default
directories.

### removeimagedata -AllLanguages -OnlyKeywords

```powershell
removeimagedata -AllLanguages -OnlyKeywords
```

Uses alias to remove keyword files for all supported languages.

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)
