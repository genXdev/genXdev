---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Move-FilesToDateFolder

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

```
Move-FilesToDateFolder [-TargetFolder] <String> [[-Name] <String[]>] [-Input <Object>] [[-Content] <String[]>]
 [[-RelativeBasePath] <String>] [-Category <String[]>] [-MaxDegreeOfParallelism <Int32>]
 [-TimeoutSeconds <Int32>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru]
 [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives]
 [-SearchDrives <String[]>] [-DriveLetter <Char[]>] [-Root <String[]>] [-LimitToRoot]
 [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent]
 [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MaxFileSize <Int64>] [-MinFileSize <Int64>]
 [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-AttributesToSkip <FileAttributes>]
 [-Exclude <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>]
 [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [-DeleteEmptyDirs]
 [-TargetFolderNameDateSyntax <String>] [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
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

### -AllMatches
Search for more than one match in each line of text

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
File attributes to skip (e.g., System, Hidden or None)

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
Matches are case-sensitive

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
Regular expression pattern to search within content

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: mc, matchcontent, regex, Pattern

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: True
```

### -Context
Captures context lines around matches

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Culture
Culture name used for pattern matching

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeleteEmptyDirs
Delete empty source directories after moving files

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

### -Directory
Search for directories only

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: dir

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
Specifies encoding for target files

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: ASCII, ANSI, BigEndianUnicode, BigEndianUTF32, OEM, Unicode, UTF7, UTF8, UTF8BOM, UTF8NoBOM, UTF32, Default

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Exclude
Exclude files or directories matching these wildcard patterns

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

### -FilesAndDirectories
Include both files and directories

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: both, DirectoriesAndFiles

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
Include non-text files when searching file contents

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

### -Input
File name or pattern to search for from pipeline input.
Default is '*'

```yaml
Type: Object
Parameter Sets: (All)
Aliases: FullName

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: True
```

### -LimitToRoot
Enforces searching only within Root directories by stripping directory components from Name inputs

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: limit

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -List
Only the first match per file is returned

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

### -MaxSearchUpDepth
Maximum recursion depth for continuation searching upwards the tree.
0 means disabled.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: maxupward

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
Only include files modified after this date/time (UTC)

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
Only include files modified before this date/time (UTC)

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
Default is '*'

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: SourceFolder

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: True
```

### -NoEmphasis
Disables highlighting of matching strings in output

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

### -NoLinks
Forces unattended mode and will not generate links

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: nl, ForceUnattenedMode

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
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
The NotMatch parameter finds text that does not match the pattern

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

### -PassThru
Output matched items as objects

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: pt

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Raw
Output only matching strings instead of MatchInfo objects

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

### -RelativeBasePath
Base path for resolving relative paths in output

```yaml
Type: String
Parameter Sets: (All)
Aliases: base

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Root
Optional: search specific directories

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
When set, performs content search within alternate data streams (ADS)

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
Use simple string matching instead of regex

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

### -TargetFolder
Target root folder where matched files will be moved into date-based subfolders

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetFolderNameDateSyntax
Target folder name date syntax

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Year + Month + Day, Year + Month, Year

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
