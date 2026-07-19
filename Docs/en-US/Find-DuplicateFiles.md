# Find-DuplicateFiles

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fdf

## Synopsis

> Find duplicate files across multiple directories based on configurable criteria.

## Description

Recursively searches specified directories for duplicate files. Files are
considered duplicates if the content is either exactly the same or starts with
the same content (for partial comparison using the -ComparePartial switch).
The cmdlet uses a quick hash of the initial bytes of the file for efficient grouping before performing full content comparisons.
The size of this quick hash can be configured with the -CompareByteLength parameter,
allowing for a balance between performance and accuracy in duplicate detection,
only files that have a minimum length of this CompareByteLength value will be considered for duplicate detection,
smaller files will be grouped based on filename only.

## Syntax

```powershell
Find-DuplicateFiles [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-CompareByteLength <Int32>] [-ComparePartial] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Find-DuplicateFiles [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 1 | `@('*')` | File name or pattern to search for. Default is '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | File name or pattern to search for from pipeline input. Default is '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | Regular expression pattern to search within content *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | Base path for resolving relative paths in output |
| `-Category` | String[] | — | — | Named | — | Only output files belonging to selected categories |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maximum degree of parallelism for directory tasks |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Optional: cancellation timeout in seconds |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Search across all available drives |
| `-Directory` | SwitchParameter | — | — | Named | — | Search for directories only |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Include both files and directories |
| `-PassThru` | SwitchParameter | — | — | Named | — | Output matched items as objects |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Include alternate data streams in search results |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Do not recurse into subdirectories |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Follow symlinks and junctions during directory traversal |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Include optical disk drives |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Optional: search specific drives |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Optional: search specific drives |
| `-Root` | String[] | — | — | Named | `@()` | Optional: search specific directories |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | Enforces searching only within Root directories by stripping directory components from Name inputs |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Include non-text files when searching file contents |
| `-NoLinks` | SwitchParameter | — | — | Named | — | Forces unattended mode and will not generate links |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Gets or sets the case-sensitivity for files and directories |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | When set, performs content search within alternate data streams (ADS) |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximum recursion depth for directory traversal. 0 means unlimited. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Maximum recursion depth for continuation searching upwards the tree. 0 means disabled. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximum file size in bytes to include in results. 0 means unlimited. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Minimum file size in bytes to include in results. 0 means no minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Only include files modified after this date/time (UTC) |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Only include files modified before this date/time (UTC) |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | File attributes to skip (e.g., System, Hidden or None) |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | Exclude files or directories matching these wildcard patterns |
| `-AllMatches` | SwitchParameter | — | — | Named | — | Search for more than one match in each line of text *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Matches are case-sensitive *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | Captures context lines around matches *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Culture name used for pattern matching *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | Specifies encoding for target files *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | Only the first match per file is returned *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | Disables highlighting of matching strings in output *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | The NotMatch parameter finds text that does not match the pattern *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | Output only matching strings instead of MatchInfo objects *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Use simple string matching instead of regex *(Parameter set: )* |
| `-ComparePartial` | SwitchParameter | — | — | Named | — | Will return of files with different sizes as long as they start with the same filename and content, this detect broken downloads/copy operations |
| `-CompareByteLength` | Int32 | — | — | Named | `65536` | Quick compare byte length of files, used for fast indexing and searching of duplicates, this will not compare content of files |

## Examples

### Find duplicate text files in the Documents folder based on exact content: Find-DuplicateFiles ~\Documents\*.doc* -ComparePartial

```powershell
Find duplicate text files in the Documents folder based on exact content:
Find-DuplicateFiles ~\Documents\*.doc* -ComparePartial
```

### Removes all duplicate media files in the Pictures and Videos folders, keeping only one copy of each duplicate set: (Find-DuplicateFiles ~\Pictures\*, ~\Videos\* -Category Pictures, Videos -ComparePartial).Duplicates.FullName | Remove-Item -Force -Verbose

```powershell
Removes all duplicate media files in the Pictures and Videos folders, keeping only one copy of each duplicate set:
(Find-DuplicateFiles ~\Pictures\*, ~\Videos\* -Category Pictures, Videos -ComparePartial).Duplicates.FullName | Remove-Item -Force -Verbose
```

## Related Links

- [Find-DuplicateFiles on GitHub](https://github.com/genXdev/genXdev)
