---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Set-FoundLocation

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### InputObject
```
Set-FoundLocation [-Name] <String> -InputObject <Object> [-Category <String[]>]
 [-MaxDegreeOfParallelism <Int32>] [-TimeoutSeconds <Int32>] [-AllDrives] [-File] [-DirectoriesAndFiles]
 [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives]
 [-SearchDrives <String[]>] [-DriveLetter <Char[]>] [-Root <String[]>] [-IncludeNonTextFileMatching]
 [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <Int32>] [-MaxFileSize <Int64>]
 [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>]
 [-AttributesToSkip <FileAttributes>] [-Exclude <String[]>] [-Push] [-ExactMatch]
 [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### WithPattern
```
Set-FoundLocation [-Name] <String> [[-Content] <String[]>] [-Category <String[]>]
 [-MaxDegreeOfParallelism <Int32>] [-TimeoutSeconds <Int32>] [-AllDrives] [-File] [-DirectoriesAndFiles]
 [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives]
 [-SearchDrives <String[]>] [-DriveLetter <Char[]>] [-Root <String[]>] [-IncludeNonTextFileMatching]
 [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <Int32>] [-MaxFileSize <Int64>]
 [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>]
 [-AttributesToSkip <FileAttributes>] [-Exclude <String[]>] [-CaseSensitive] [-Culture <String>]
 [-Encoding <String>] [-NotMatch] [-SimpleMatch] [-Push] [-ExactMatch] [-ProgressAction <ActionPreference>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AllDrives
Search across all available drives

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AttributesToSkip
File attributes to skip (e.g., System, Hidden or None).

```yaml
Type: FileAttributes
Parameter Sets: (All)
Aliases: skipattr
Accepted values: None, ReadOnly, Hidden, System, Directory, Archive, Device, Normal, Temporary, SparseFile, ReparsePoint, Compressed, Offline, NotContentIndexed, Encrypted, IntegrityStream, NoScrubData

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CaseNameMatching
Gets or sets the case-sensitivity for files and directories

```yaml
Type: MatchCasing
Parameter Sets: (All)
Aliases: casing, CaseSearchMaskMatching
Accepted values: PlatformDefault, CaseSensitive, CaseInsensitive

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CaseSensitive
Indicates that the cmdlet matches are case-sensitive.
By default, matches aren't case-sensitive.

```yaml
Type: SwitchParameter
Parameter Sets: WithPattern
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Category
Only output files belonging to selected categories

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: filetype
Accepted values: Pictures, Videos, Music, Documents, Spreadsheets, Presentations, Archives, Installers, Executables, Databases, DesignFiles, Ebooks, Subtitles, Fonts, EmailFiles, 3DModels, GameAssets, MedicalFiles, FinancialFiles, LegalFiles, SourceCode, Scripts, MarkupAndData, Configuration, Logs, TextFiles, WebFiles, MusicLyricsAndChords, CreativeWriting, Recipes, ResearchFiles

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

### -Content
Regular expression pattern to search within file contents

```yaml
Type: String[]
Parameter Sets: WithPattern
Aliases: mc, matchcontent, regex, Pattern

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: True
```

### -Culture
Specifies a culture name to match the specified pattern.
The Culture parameter must be used with the SimpleMatch parameter.
The default behavior uses the culture of the current PowerShell runspace (session).

```yaml
Type: String
Parameter Sets: WithPattern
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DirectoriesAndFiles
Include filename matching and change to folder of first found file

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: both, FilesAndDirectories

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DriveLetter
Optional: search specific drives

```yaml
Type: Char[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Encoding
Specifies the type of encoding for the target file.
The default value is utf8NoBOM.

```yaml
Type: String
Parameter Sets: WithPattern
Aliases:
Accepted values: ASCII, ANSI, BigEndianUnicode, BigEndianUTF32, OEM, Unicode, UTF7, UTF8, UTF8BOM, UTF8NoBOM, UTF32, Default

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExactMatch
When set, only exact name matches are considered.
By default, wildcard matching is used unless the Name contains wildcard characters.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Exclude
Exclude files or directories matching these wildcard patterns (e.g., *.tmp, *\\\\bin\\\\*).

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: skiplike

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -File
Search for filenames only and change to folder of first found file

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: filename

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FollowSymlinkAndJunctions
Follow symlinks and junctions during directory traversal

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: symlinks, sl

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeAlternateFileStreams
Include alternate data streams in search results

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: ads

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeNonTextFileMatching
Include non-text files (binaries, images, etc.) when searching file contents

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: binary

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeOpticalDiskDrives
Include optical disk drives

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
File name or pattern to search for from pipeline input.
Default is '*'

```yaml
Type: Object
Parameter Sets: InputObject
Aliases: FullName

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: True
```

### -MaxDegreeOfParallelism
Maximum degree of parallelism for directory tasks

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: threads

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxFileSize
Maximum file size in bytes to include in results.
0 means unlimited.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases: maxlength, maxsize

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxRecursionDepth
Maximum recursion depth for directory traversal.
0 means unlimited.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: md, depth, maxdepth

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinFileSize
Minimum file size in bytes to include in results.
0 means no minimum.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases: minsize, minlength

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ModifiedAfter
Only include files modified after this date/time (UTC).

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases: ma, after

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ModifiedBefore
Only include files modified before this date/time (UTC).

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases: before, mb

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
File name or pattern to search for.

```yaml
Type: String
Parameter Sets: (All)
Aliases: like, Path, LiteralPath, Query, SearchMask, Include

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: True
```

### -NoRecurse
Do not recurse into subdirectories

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: nr

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NotMatch
The NotMatch parameter finds text that doesn't match the specified pattern.

```yaml
Type: SwitchParameter
Parameter Sets: WithPattern
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Push
Use Push-Location instead of Set-Location and push the location onto the location stack

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Root
Optional: search specific base folders combined with provided Names

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SearchADSContent
When set, performs content search within alternate data streams (ADS).
When not set, outputs ADS file info without searching their content.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: sads

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SearchDrives
Optional: search specific drives

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: drives

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SimpleMatch
Indicates that the cmdlet uses a simple match rather than a regular expression match.
In a simple match, Select-String searches the input for the text in the Pattern parameter.
It doesn't interpret the value of the Pattern parameter as a regular expression statement.

```yaml
Type: SwitchParameter
Parameter Sets: WithPattern
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeoutSeconds
Optional: cancellation timeout in seconds

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: maxseconds

Required: False
Position: Named
Default value: None
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

### System.Object

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
