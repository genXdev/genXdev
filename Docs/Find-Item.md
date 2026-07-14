---
external help file: GenXdev.dll-Help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Find-Item

## SYNOPSIS
Search for files and directories with advanced filtering options.

## SYNTAX

### Default (Default)
```
Find-Item [[-Name] <String[]>] [-Input <Object>] [[-RelativeBasePath] <String>] [-Category <String[]>]
 [-MaxDegreeOfParallelism <Int32>] [-TimeoutSeconds <Int32>] [-AllDrives] [-Directory] [-FilesAndDirectories]
 [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions]
 [-IncludeOpticalDiskDrives] [-SearchDrives <String[]>] [-DriveLetter <Char[]>] [-Root <String[]>]
 [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent]
 [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MaxFileSize <Int64>] [-MinFileSize <Int64>]
 [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-AttributesToSkip <FileAttributes>]
 [-Exclude <String[]>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### WithPattern
```
Find-Item [[-Name] <String[]>] [-Input <Object>] [[-Content] <String[]>] [[-RelativeBasePath] <String>]
 [-Category <String[]>] [-MaxDegreeOfParallelism <Int32>] [-TimeoutSeconds <Int32>] [-AllDrives] [-Directory]
 [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions]
 [-IncludeOpticalDiskDrives] [-SearchDrives <String[]>] [-DriveLetter <Char[]>] [-Root <String[]>]
 [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent]
 [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MaxFileSize <Int64>] [-MinFileSize <Int64>]
 [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-AttributesToSkip <FileAttributes>]
 [-Exclude <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>]
 [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION

* Find files with Find-Item -> l
        * Fast multi-threaded search: utilizes parallel and asynchronous
              IO processing with configurable maximum degree of parallelism
              (default based on CPU cores) for efficient file and directory scanning.
        * Advanced Pattern Matching: Supports wildcards (*, ?), recursive patterns
              like **, and complex path structures for precise file and directory queries.
              **/filename will only recurse until filename is matched. multiple of these
              patterns are allowed, as long as the are preceeded with a filename or
              directoryname to match.
              This pattern parser has the power of Resolve-Path but has recursion
              features, and does only support * and ? as wildcards,
              preventing bugs with paths with [ ] brackets in them, eliminating
              the need for -LiteralPath parameter, while maintaining integrity
              for paths sections without wildcards, unlike a wildcard match on the
              whole full path.
        * Enhanced Content Searching: Comprehensive Select-String integration
              with regular expression patterns within file contents using the
              -Content parameter.
            * Large File Optimization: Handles extremely large files with smart
                  overlapping buffers and minimal heap allocation
            * Multiple Match Options: Find all matches per line (-AllMatches) or
                  just the first match per file(-List)
            * Case Sensitivity Control: Case-sensitive matching(-CaseSensitive)
                  with culture-specific options(-Culture)
            * Context Capture: Show lines before and after matches(-Context) for
                  better understanding
            *Inverse Matching: Find files that don't contain the pattern (-NotMatch)
            * Output Formats: Raw string output(-Raw), quiet boolean response(-Quiet),
                  or full MatchInfo objects
            * Pattern Types: Regular expressions(default) or simple literal string
                  matching(-SimpleMatch)
            * Encoding Support: Specify file encoding(-Encoding) for accurate text
                  processing
        * Path Type Flexibility: Handles relative, absolute, UNC, rooted paths, and
              NTFS alternate data streams(ADS) with optional content search in streams.
        * Multi-Drive Support: Searches across all drives with - AllDrives or specific
              drives via -SearchDrives, including optical disks if specified.
        * Directory and File Filtering: Options to search directories only(-Directory),
              both files and directories(-FilesAndDirectories), or files with content matching.
        * Exclusion and Limits: Exclude patterns with -Exclude, set max recursion depth
              -MaxRecursionDepth), file size limits(-MaxFileSize, -MinFileSize), and modified
              date filters(-ModifiedAfter, -ModifiedBefore).
        * Output Customization: Supports PassThru for FileInfo/DirectoryInfo objects,
              relative paths, hyperlinks in attended mode, or plain paths in unattended mode
              (use -NoLinks in case of mishaps to enforce unattended mode).
        * Performance Optimizations: Skips non-text files by default for content search
              (override with -IncludeNonTextFileMatching), handles long paths(>260 chars),
              and follows symlinks/junctions.
        * Safety Features: Timeout support(-TimeoutSeconds), ignores inaccessible items,
              skips system attributes by default, and prevents infinite loops with visited node tracking.


## EXAMPLES

## EXAMPLES
### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

Find files containing a specific word
Search for all files in the current directory and subdirectories that contain the word "translation".

### Example 2


```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

Find JavaScript files with a version string
Search for JavaScript files containing a version string in the format "Version == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

List all directories
Find all directories in the current directory and its subdirectories.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

Find XML files and pass objects
Search for all .xml files and pass the results as objects through the pipeline.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

Include alternate data streams
Search for all files and include their alternate data streams in the results.

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

Search across all drives
Search for all PDF files across all available drives.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

Custom timeout and parallelism
Search for log files with a 5-minute timeout and limited parallelism.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

Pipeline input
Pass file paths from Get-ChildItem to search for files containing "error".

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```
Limit recursion depth
Search for text files but limit recursion to 2 directory levels.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

Filter by file size
Find files larger than 1MB but smaller than 10MB.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

Filter by modification date
Find files modified after January 1, 2025.

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

Exclude specific patterns
Search for all files but exclude temporary files and bin directories.

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

Search specific drives
Search for .docx files on C: and D: drives only.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

Case-sensitive content search
Search for files containing "Error" (case-sensitive) in their content.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

Search alternate data stream content
Search for files with alternate data streams containing "secret".

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Find all matches per line
Search for all occurrences of "function" in each line, not just the first match.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

Show context around matches
Display 2 lines before and 3 lines after each match for better understanding.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

Get only matching strings
Return just the matching text strings instead of full match objects.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

Simple boolean check
Return true/false instead of match details to check if pattern exists.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

Find first match only per file
Stop at the first match in each file for efficient file listing.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

Literal string matching
Search for exact text without regex interpretation using SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

Find files NOT containing pattern
Use NotMatch to find files that don't contain the specified pattern.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

Specify file encoding
Search files with specific encoding for accurate text processing.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

Cultural text comparison
Use culture-specific matching with SimpleMatch for international text.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

Complex content search with file filters
Combine file size, date, and content filters for precise searches.


## PARAMETERS
### -Name
File name or pattern to search for. Default is '*'

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: like, Path, LiteralPath, Query, SearchMask, Include

Required: False
Position: 0
Default value: 
Accept pipeline input: False
Accept wildcard characters: True
`
### -Input
File name or pattern to search for. Default is '*'

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: FullName

Required: False
Position: Named
Default value: 
Accept pipeline input: True
Accept wildcard characters: True
`
### -Content
Regular expression pattern to search within content

`yaml
Type: SwitchParameter
Parameter Sets: (WithPattern)
Aliases: mc, matchcontent, regex, Pattern

Required: False
Position: 1
Default value: 
Accept pipeline input: False
Accept wildcard characters: True
`
### -RelativeBasePath
Base path for resolving relative paths in output

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: base

Required: False
Position: 2
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -Category


`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: filetype

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -MaxDegreeOfParallelism
Maximum degree of parallelism for directory tasks

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: threads

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -TimeoutSeconds
Optional: cancellation timeout in seconds

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: maxseconds

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -AllDrives
Search across all available drives

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -Directory
Search for directories only

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: dir

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -FilesAndDirectories
Include both files and directories

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: both, DirectoriesAndFiles

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -PassThru
Output matched items as objects

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: pt

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -IncludeAlternateFileStreams
Include alternate data streams in search results

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: ads

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -NoRecurse
Do not recurse into subdirectories

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: nr

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -FollowSymlinkAndJunctions
Follow symlinks and junctions during directory traversal

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: symlinks, sl

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -IncludeOpticalDiskDrives
Include optical disk drives

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -SearchDrives
Optional: search specific drives

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: drives

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -DriveLetter
Optional: search specific drives

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -Root
Optional: search specific directories

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -LimitToRoot
Enforces searching only within Root directories by stripping directory components from Name inputs

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: limit

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -IncludeNonTextFileMatching
Include non-text files when searching file contents

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: binary

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -NoLinks
Forces unattended mode and will not generate links

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: nl, ForceUnattenedMode

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -CaseNameMatching
Gets or sets the case-sensitivity for files and directories

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: casing, CaseSearchMaskMatching 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -SearchADSContent
When set, performs content search within alternate data streams (ADS). When not set, outputs ADS file info without searching their content.

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: sads

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -MaxRecursionDepth
Maximum recursion depth for directory traversal. 0 means unlimited.

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: md, depth, maxdepth

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -MaxSearchUpDepth
Maximum recursion depth for continuing searching upwards the tree for relative searches, while no items are found. 0 means disabled.

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: maxupward

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -MaxFileSize
Maximum file size in bytes to include in results. 0 means unlimited.

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: maxlength, maxsize

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -MinFileSize
Minimum file size in bytes to include in results. 0 means no minimum.

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: minsize, minlength

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -ModifiedAfter
Only include files modified after this date/time (UTC).

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: ma, after

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -ModifiedBefore
Only include files modified before this date/time (UTC).

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: before, mb

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -AttributesToSkip
File attributes to skip (e.g., System, Hidden or None).

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: skipattr

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -Exclude
Exclude files or directories matching these wildcard patterns (e.g., *.tmp, *\bin\*).

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: skiplike

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -AllMatches
Indicates that the cmdlet searches for more than one match in each line of text. Without this parameter, Select-String finds only the first match in each line of text.

`yaml
Type: SwitchParameter
Parameter Sets: (WithPattern)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -CaseSensitive
Indicates that the cmdlet matches are case-sensitive. By default, matches aren't case-sensitive.

`yaml
Type: SwitchParameter
Parameter Sets: (WithPattern)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -Context
Captures the specified number of lines before and after the line that matches the pattern.

`yaml
Type: SwitchParameter
Parameter Sets: (WithPattern)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -Culture
Specifies a culture name to match the specified pattern. The Culture parameter must be used with the SimpleMatch parameter. The default behavior uses the culture of the current PowerShell runspace (session).

`yaml
Type: SwitchParameter
Parameter Sets: (WithPattern)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -Encoding
Specifies the type of encoding for the target file. Supports Select-String compatible values and extended .NET encodings.

`yaml
Type: SwitchParameter
Parameter Sets: (WithPattern)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -List
Only the first instance of matching text is returned from each input file. This is the most efficient way to retrieve a list of files that have contents matching the regular expression.

`yaml
Type: SwitchParameter
Parameter Sets: (WithPattern)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -NoEmphasis
Disables highlighting of matching strings in output.

`yaml
Type: SwitchParameter
Parameter Sets: (WithPattern)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -NotMatch
The NotMatch parameter finds text that doesn't match the specified pattern.

`yaml
Type: SwitchParameter
Parameter Sets: (WithPattern)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -Quiet
Indicates that the cmdlet returns a simple response instead of a MatchInfo object. The returned value is $true if the pattern is found or $null if the pattern is not found.

`yaml
Type: SwitchParameter
Parameter Sets: (WithPattern)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -Raw
Causes the cmdlet to output only the matching strings, rather than MatchInfo objects. This is the results in behavior that's the most similar to the Unix grep or Windows findstr.exe commands.

`yaml
Type: SwitchParameter
Parameter Sets: (WithPattern)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -SimpleMatch
Indicates that the cmdlet uses a simple match rather than a regular expression match. In a simple match, Select-String searches the input for the text in the Pattern parameter. It doesn't interpret the value of the Pattern parameter as a regular expression statement.

`yaml
Type: SwitchParameter
Parameter Sets: (WithPattern)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`

