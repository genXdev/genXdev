# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd

## Synopsis

> Finds the first matching file or folder and sets the location to it.

## Description

This cmdlet will help you change directories quickly by using search phrases
that will find the first matching folder or file (optional) and changes
directory to it. Supports advanced filtering by content, file attributes,
size, modification dates, and many other criteria.

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | File name or pattern to search for. 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | File name or pattern to search for from pipeline input. Default is '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | Regular expression pattern to search within file contents *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | Only output files belonging to selected categories |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maximum degree of parallelism for directory tasks |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Optional: cancellation timeout in seconds |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Search across all available drives |
| `-File` | SwitchParameter | — | — | Named | — | Search for filenames only and change to folder of first found file |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | Include filename matching and change to folder of first found file |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Include alternate data streams in search results |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Do not recurse into subdirectories |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Follow symlinks and junctions during directory traversal |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | Include optical disk drives |
| `-SearchDrives` | String[] | — | — | Named | `@()` | Optional: search specific drives |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | Optional: search specific drives |
| `-Root` | String[] | — | — | Named | `@()` | Optional: search specific base folders combined with provided Names |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | Include non-text files (binaries, images, etc.) when searching file contents |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | Gets or sets the case-sensitivity for files and directories |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | When set, performs content search within alternate data streams (ADS). When not set, outputs ADS file info without searching their content. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximum recursion depth for directory traversal. 0 means unlimited. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximum file size in bytes to include in results. 0 means unlimited. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Minimum file size in bytes to include in results. 0 means no minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Only include files modified after this date/time (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Only include files modified before this date/time (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | File attributes to skip (e.g., System, Hidden or None). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | Exclude files or directories matching these wildcard patterns (e.g., *.tmp, *\\bin\\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Indicates that the cmdlet matches are case-sensitive. By default, matches aren't case-sensitive. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | Specifies a culture name to match the specified pattern. The Culture parameter must be used with the SimpleMatch parameter. The default behavior uses the culture of the current PowerShell runspace (session). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | Specifies the type of encoding for the target file. The default value is utf8NoBOM. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | The NotMatch parameter finds text that doesn't match the specified pattern. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Indicates that the cmdlet uses a simple match rather than a regular expression match. In a simple match, Select-String searches the input for the text in the Pattern parameter. It doesn't interpret the value of the Pattern parameter as a regular expression statement. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | Use Push-Location instead of Set-Location and push the location onto the location stack |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | When set, only exact name matches are considered. By default, wildcard matching is used unless the Name contains wildcard characters. |

## Examples

### Set-FoundLocation *.Console

```powershell
Set-FoundLocation *.Console
```

Changes to the first directory matching the pattern '*.Console'.

### lcd *.Console

```powershell
lcd *.Console
```

Changes to the first directory matching the pattern '*.Console' using the alias.

### Set-FoundLocation -Name "*.ps1" -Content "function"

```powershell
Set-FoundLocation -Name "*.ps1" -Content "function"
```

Changes to the directory containing the first PowerShell file that contains
the word 'function'.

### Set-FoundLocation *test* -File

```powershell
Set-FoundLocation *test* -File
```

Changes to the directory containing the first file with 'test' in its name.

### Set-FoundLocation * '1\.\d+\.2025'

```powershell
Set-FoundLocation * '1\.\d+\.2025'
```

Changes to the directory containing the first file which content  matches the pattern '1.\d+\.2025'.

## Related Links

- [Set-FoundLocation on GitHub](https://github.com/genXdev/genXdev)
