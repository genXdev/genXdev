---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Remove-ImageMetaData

## SYNOPSIS
Removes image metadata files from image directories.

## SYNTAX

```
Remove-ImageMetaData [[-ImageDirectories] <String[]>] [[-Language] <String>]
 [[-PreferencesDatabasePath] <String>] [-Recurse] [-OnlyKeywords] [-OnlyPeople] [-OnlyObjects] [-OnlyScenes]
 [-AllLanguages] [-SessionOnly] [-ClearSession] [-SkipSession] [-ProgressAction <ActionPreference>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The Remove-ImageMetaData function removes companion JSON metadata files that
are associated with images.
It can selectively remove only keywords
(description.json), people data (people.json), objects data (objects.json),
or scenes data (scenes.json), or remove all metadata files if no specific
switch is provided.
Language-specific metadata files can be removed by
specifying the Language parameter, and all language variants can be removed
using the AllLanguages switch.

## EXAMPLES

### EXAMPLE 1
```
Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse
```

Removes all metadata files for images in multiple directories and all
subdirectories.

### EXAMPLE 2
```
Remove-ImageMetaData -Recurse -OnlyKeywords
```

Removes only description.json files from default system directories and
subdirectories.

### EXAMPLE 3
```
Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")
```

Removes only people.json files from the MyPhotos directory.

### EXAMPLE 4
```
Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse
```

Removes both English and Spanish description files recursively from default
directories.

### EXAMPLE 5
```
removeimagedata -AllLanguages -OnlyKeywords
```

Uses alias to remove keyword files for all supported languages.

## PARAMETERS

### -ImageDirectories
Array of directory paths to process for image metadata removal.
If not
specified, uses default system directories including Downloads, OneDrive,
and Pictures folders.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: imagespath, directories, imgdirs, imagedirectory

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Language
Specifies the language for removing language-specific metadata files.
When
specified, removes both the default English description.json and the
language-specific file.
Defaults to English.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PreferencesDatabasePath
Database path for preference data files.

```yaml
Type: String
Parameter Sets: (All)
Aliases: DatabasePath

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Recurse
When specified, searches for images in the specified directory and all
subdirectories.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -OnlyKeywords
When specified, only removes the description.json files
(keywords/descriptions).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -OnlyPeople
When specified, only removes the people.json files (face recognition data).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -OnlyObjects
When specified, only removes the objects.json files (object detection data).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -OnlyScenes
When specified, only removes the scenes.json files (scene classification
data).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllLanguages
When specified, removes metadata files for all supported languages by
iterating through all languages from Get-WebLanguageDictionary.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SessionOnly
Use alternative settings stored in session for AI preferences like Language,
Image collections, etc.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClearSession
Clear alternative settings stored in session for AI preferences like Language,
Image collections, etc.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipSession
Dont use alternative settings stored in session for AI preferences like
Language, Image collections, etc.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: FromPreferences

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
If none of the -OnlyKeywords, -OnlyPeople, -OnlyObjects, or -OnlyScenes
switches are specified, all four types of metadata files will be removed.
When Language is specified, both the default English and language-specific
files are removed.
When AllLanguages is specified, metadata files for all supported languages
are removed.

## RELATED LINKS
