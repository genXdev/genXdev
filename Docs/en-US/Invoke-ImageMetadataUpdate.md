# Invoke-ImageMetadataUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagepropdetection

## Synopsis

> Updates EXIF metadata for images in a directory.

## Description

This function extracts and updates EXIF metadata for images in specified directories.
It processes each image to extract detailed EXIF metadata including camera details,
GPS coordinates, exposure settings, and other technical information. The metadata
is stored in alternate NTFS streams as :EXIF.json for later use by indexing and
search functions.

## Syntax

```powershell
Invoke-ImageMetadataUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Force] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Array of directory paths to process for image metadata updates |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Will retry previously failed image metadata updates |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Only process images that don't already have metadata files |
| `-Recurse` | SwitchParameter | — | — | Named | — | If specified, processes images in subdirectories recursively |
| `-Force` | SwitchParameter | — | — | Named | — | Force rebuilding of metadata even if it already exists |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return structured objects instead of outputting to console |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Don't use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |

## Examples

### Invoke-ImageMetadataUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Force

```powershell
Invoke-ImageMetadataUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Force
```

### Invoke-ImageMetadataUpdate @("C:\Photos", "C:\Archive") -Force -PassThru | Export-Csv -Path metadata-log.csv

```powershell
Invoke-ImageMetadataUpdate @("C:\Photos", "C:\Archive") -Force -PassThru | Export-Csv -Path metadata-log.csv
```

## Related Links

- [Invoke-ImageMetadataUpdate on GitHub](https://github.com/genXdev/genXdev)
