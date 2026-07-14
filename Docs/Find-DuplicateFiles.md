---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Find-DuplicateFiles

## SYNOPSIS
Find duplicate files across multiple directories based on configurable criteria.

## SYNTAX

```
Find-DuplicateFiles [[-Name] <String[]>] [-Input <Object>] [[-Content] <String[]>]
 [[-RelativeBasePath] <String>] [-Category <String[]>] [-MaxDegreeOfParallelism <Int32>]
 [-TimeoutSeconds <Int32>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru]
 [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives]
 [-SearchDrives <String[]>] [-DriveLetter <Char[]>] [-Root <String[]>] [-LimitToRoot]
 [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent]
 [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MaxFileSize <Int64>] [-MinFileSize <Int64>]
 [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-AttributesToSkip <FileAttributes>]
 [-Exclude <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>]
 [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [-ComparePartial]
 [-CompareByteLength <Int32>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Recursively searches specified directories for duplicate files.
Files are
considered duplicates if the content is either exactly the same or starts with
the same content (for partial comparison using the -ComparePartial switch).
The cmdlet uses a quick hash of the initial bytes of the file for efficient grouping before performing full content comparisons.
The size of this quick hash can be configured with the -CompareByteLength parameter,
allowing for a balance between performance and accuracy in duplicate detection,
only files that have a minimum length of this CompareByteLength value will be considered for duplicate detection,
smaller files will be grouped based on filename only.

## EXAMPLES

### EXAMPLE 1
```
Find duplicate text files in the Documents folder based on exact content:
Find-DuplicateFiles ~\Documents\*.doc* -ComparePartial
```

### EXAMPLE 2
```
Removes all duplicate media files in the Pictures and Videos folders, keeping only one copy of each duplicate set:
(Find-DuplicateFiles ~\Pictures\*, ~\Videos\* -Category Pictures, Videos -ComparePartial).Duplicates.FullName | Remove-Item -Force -Verbose
```

## PARAMETERS

### -Name
File name or wildcard pattern to match.
Defaults to \`*\`.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: SourceFolder

Required: False
Position: 2
Default value: @('*')
Accept pipeline input: False
Accept wildcard characters: True
```

### -Input
Pipeline input for file paths or objects with a \`FullName\`/\`Name\` property.

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

### -Content
Regular expression patterns to match inside file contents (when applicable).

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: mc, matchcontent, regex, Pattern

Required: False
Position: 3
Default value: @('.*')
Accept pipeline input: False
Accept wildcard characters: True
```

### -RelativeBasePath
Base path used to resolve relative paths in output; defaults to the current
directory.

```yaml
Type: String
Parameter Sets: (All)
Aliases: base

Required: False
Position: 4
Default value: .\
Accept pipeline input: False
Accept wildcard characters: False
```

### -Category
Optional filter to include only files that belong to selected categories.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: filetype

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxDegreeOfParallelism
Maximum parallel directory operations.
\`0\` means automatic.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: threads

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeoutSeconds
Optional timeout in seconds for the search operation.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: maxseconds

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllDrives
Switch to search across all mounted drives.

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

### -Directory
Only search for directories instead of files.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: dir

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -FilesAndDirectories
Include both files and directories in search results.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: both, DirectoriesAndFiles

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Output matched items as objects instead of formatted text.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: pt

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeAlternateFileStreams
Include alternate data streams (ADS) in the search results.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: ads

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoRecurse
Do not recurse into subdirectories when searching.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: nr

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -FollowSymlinkAndJunctions
Follow symbolic links and junctions during traversal.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: symlinks, sl

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeOpticalDiskDrives
Include optical disks when enumerating drives.

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

### -SearchDrives
Explicit list of drive root paths to search.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: drives

Required: False
Position: Named
Default value: @()
Accept pipeline input: False
Accept wildcard characters: False
```

### -DriveLetter
List of drive letters to search.

```yaml
Type: Char[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: @()
Accept pipeline input: False
Accept wildcard characters: False
```

### -Root
Base directories to combine with \`Name\` patterns when searching.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: @()
Accept pipeline input: False
Accept wildcard characters: False
```

### -LimitToRoot
When used, restricts matches to provided \`Root\` directories and prevents
escaping above them.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: limit

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeNonTextFileMatching
Allow content matching against non-text files (binary/media) when doing
content search.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: binary

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoLinks
Operate in unattended mode; do not generate links or interactive prompts.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: nl, ForceUnattenedMode

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -CaseNameMatching
Controls case-sensitivity for file name matching.

```yaml
Type: MatchCasing
Parameter Sets: (All)
Aliases: casing, CaseSearchMaskMatching
Accepted values: PlatformDefault, CaseSensitive, CaseInsensitive

Required: False
Position: Named
Default value: PlatformDefault
Accept pipeline input: False
Accept wildcard characters: False
```

### -SearchADSContent
When set, also search within alternate data streams (ADS) contents.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: sads

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxRecursionDepth
Maximum directory recursion depth; \`0\` means unlimited.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: md, depth, maxdepth

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxSearchUpDepth
Maximum upward search depth when performing relative searches.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: maxupward

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxFileSize
Maximum file size in bytes to include; \`0\` means unlimited.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases: maxlength, maxsize

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinFileSize
Minimum file size in bytes to include; \`0\` means no minimum.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases: minsize, minlength

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -ModifiedAfter
Only include items modified after this UTC date/time.

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
Only include items modified before this UTC date/time.

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

### -AttributesToSkip
File attributes to exclude from results (for example \`System\`).

```yaml
Type: FileAttributes
Parameter Sets: (All)
Aliases: skipattr
Accepted values: None, ReadOnly, Hidden, System, Directory, Archive, Device, Normal, Temporary, SparseFile, ReparsePoint, Compressed, Offline, NotContentIndexed, Encrypted, IntegrityStream, NoScrubData

Required: False
Position: Named
Default value: System
Accept pipeline input: False
Accept wildcard characters: False
```

### -Exclude
Wildcard patterns to exclude files or directories from the search.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: skiplike

Required: False
Position: Named
Default value: @('*\.git\*')
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllMatches
Return all matches per line when using content pattern matching.

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

### -CaseSensitive
Make content pattern matches case-sensitive.

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

### -Context
Capture context lines around found content matches.

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
Culture name used for pattern matching when using \`SimpleMatch\`.

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

### -Encoding
File encoding to use for content operations.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: UTF8NoBOM
Accept pipeline input: False
Accept wildcard characters: False
```

### -List
Only the first match per file is returned (efficient list mode).

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

### -NoEmphasis
Disable highlighting in output.

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

### -NotMatch
Return files that do not match the provided content pattern.

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

### -Raw
Output only matching strings instead of \`MatchInfo\` objects.

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

### -SimpleMatch
Use simple string matching (not regular expressions) for content matching.

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

### -ComparePartial
Will return of files with different sizes as long as they start with the same filename and content, this detect broken downloads/copy operations

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

### -CompareByteLength
Quick compare byte length of files, used for fast indexing and searching of duplicates, this will not compare content of files

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 65536
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

## RELATED LINKS
