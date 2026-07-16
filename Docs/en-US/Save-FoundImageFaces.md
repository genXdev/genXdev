# Save-FoundImageFaces

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `saveimagefaces

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Save-FoundImageFaces [[-Any] <String[]>] [-ClearSession] [-DatabaseFilePath <String>] [-DescriptionSearch <String[]>] [-ForceIndexRebuild] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-InputObject <Object[]>] [-Keywords <String[]>] [-Language <String>] [-NoExplicitContent] [-NoNudity] [-Objects <String[]>] [-OutputDirectory <String>] [-OverallMood <String[]>] [-PathLike <String[]>] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-SaveUnknownPersons] [-Scenes <String[]>] [-SessionOnly] [-SkipSession] [-StyleType <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Will match any of all the possible meta data types. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | The description text to look for, wildcards allowed. |
| `-Keywords` | String[] | — | — | Named | `@()` | The keywords to look for, wildcards allowed. |
| `-People` | String[] | — | — | Named | `@()` | People to look for, wildcards allowed. |
| `-Objects` | String[] | — | — | Named | `@()` | Objects to look for, wildcards allowed. |
| `-Scenes` | String[] | — | — | Named | `@()` | Scenes to look for, wildcards allowed. |
| `-PictureType` | String[] | — | — | Named | `@()` | Picture types to filter by, wildcards allowed. |
| `-StyleType` | String[] | — | — | Named | `@()` | Style types to filter by, wildcards allowed. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Overall moods to filter by, wildcards allowed. |
| `-DatabaseFilePath` | String | — | — | Named | — | Path to the SQLite database file. |
| `-Language` | String | — | — | Named | — | Language for descriptions and keywords. |
| `-PathLike` | String[] | — | — | Named | `@()` | Array of directory path-like search strings to filter images by path (SQL LIKE patterns, e.g. '%\\2024\\%') |
| `-InputObject` | Object[] | — | ✅ (ByValue) | Named | — | Accepts search results from a previous -PassThru call to regenerate the view. |
| `-OutputDirectory` | String | — | — | Named | `'.\'` | Directory to save cropped face images. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filter images that contain nudity. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain nudity. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | Filter images that contain explicit content. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain explicit content. |
| `-ForceIndexRebuild` | SwitchParameter | — | — | Named | — | Force rebuild of the image index database. |
| `-GeoLocation` | Double[] | — | — | Named | — | Geographic coordinates [latitude, longitude] to search near. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | Maximum distance in meters from GeoLocation to search for images. |
| `-SaveUnknownPersons` | SwitchParameter | — | — | Named | — | Also save unknown persons detected as objects. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Dont use alternative settings stored in session for AI preferences like Language, Image collections, etc |

## Outputs

- `Object[]`
- `List`1[[System.Object, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]`
- `String`

## Related Links

- [Save-FoundImageFaces on GitHub](https://github.com/genXdev/genXdev)
