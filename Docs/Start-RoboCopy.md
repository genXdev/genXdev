---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Start-RoboCopy

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### Default (Default)
```
Start-RoboCopy [-Source] <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [-Mirror] [-Move]
 [-IncludeSecurity] [-SkipDirectories] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-SkipAllSymbolicLinks]
 [-SkipSymbolicFileLinks] [-CopySymbolicLinksAsLinks] [-Force] [-SkipFilesWithoutArchiveAttribute]
 [-ResetArchiveAttributeAfterSelection] [-FileExcludeFilter <String[]>] [-AttributeIncludeFilter <String>]
 [-AttributeExcludeFilter <String>] [-SetAttributesAfterCopy <String>] [-RemoveAttributesAfterCopy <String>]
 [-MinFileSize <Int32>] [-MaxFileSize <Int32>] [-MinFileAge <Int32>] [-MaxFileAge <Int32>]
 [-MinLastAccessAge <Int32>] [-MaxLastAccessAge <Int32>] [-RecoveryMode] [-MonitorMode]
 [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>]
 [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-LogFilePath <String>]
 [-LogfileOverwrite] [-LogDirectoryNames] [-LogAllFileNames] [-Unicode] [-LargeFiles] [-MultiThreaded]
 [-CompressibleContent] [-ExactTimestamps] [[-Override] <String>] [-ProgressAction <ActionPreference>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### SkipDirectories
```
Start-RoboCopy [-Source] <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [-Mirror] [-Move]
 [-IncludeSecurity] [-SkipEmptyDirectories] [-CopyOnlyDirectoryTreeStructure]
 [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-SkipAllSymbolicLinks] [-SkipSymbolicFileLinks]
 [-CopySymbolicLinksAsLinks] [-SkipJunctions] [-CopyJunctionsAsJunctons] [-Force]
 [-SkipFilesWithoutArchiveAttribute] [-ResetArchiveAttributeAfterSelection] [-FileExcludeFilter <String[]>]
 [-DirectoryExcludeFilter <String[]>] [-AttributeIncludeFilter <String>] [-AttributeExcludeFilter <String>]
 [-SetAttributesAfterCopy <String>] [-RemoveAttributesAfterCopy <String>] [-MaxSubDirTreeLevelDepth <Int32>]
 [-MinFileSize <Int32>] [-MaxFileSize <Int32>] [-MinFileAge <Int32>] [-MaxFileAge <Int32>]
 [-MinLastAccessAge <Int32>] [-MaxLastAccessAge <Int32>] [-RecoveryMode] [-MonitorMode]
 [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>]
 [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-LogFilePath <String>]
 [-LogfileOverwrite] [-LogDirectoryNames] [-LogAllFileNames] [-Unicode] [-LargeFiles] [-MultiThreaded]
 [-CompressibleContent] [-ExactTimestamps] [[-Override] <String>] [-ProgressAction <ActionPreference>]
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

### -AttributeExcludeFilter
Exclude files that have any of these attributes set \[RASHCNETO\]

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

### -AttributeIncludeFilter
Copy only files that have all these attributes set \[RASHCNETO\]

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

### -CompressibleContent
If applicable use compression when copying files between servers to safe bandwidth and time

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

### -CopyJunctionsAsJunctons
Instead of copying the content where junctions point to, copy the junctions themselves

```yaml
Type: SwitchParameter
Parameter Sets: SkipDirectories
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CopyOnlyDirectoryTreeStructure
Create directory tree only

```yaml
Type: SwitchParameter
Parameter Sets: SkipDirectories
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CopyOnlyDirectoryTreeStructureAndEmptyFiles
Create directory tree and zero-length files only

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

### -CopySymbolicLinksAsLinks
Instead of copying the content where symbolic links point to, copy the links themselves

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

### -DestinationDirectory
The destination directory to place the copied files and directories into.

If this directory does not exist yet, all missing directories will be created.

Default value = ".\"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DirectoryExcludeFilter
Exclude any directories that matches any of these names/paths/wildcards

```yaml
Type: String[]
Parameter Sets: SkipDirectories
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: True
```

### -ExactTimestamps
When set, will use millisecond timestamp matching instead of the default 2-second tolerance

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

### -FileExcludeFilter
Exclude any files that matches any of these names/paths/wildcards

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: True
```

### -Files
Optional searchmask for selecting the files that need to be copied.

Default value = '*'

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: True
```

### -Force
Will copy all files even if they are older then the ones in the destination

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

### -IncludeSecurity
Will also copy ownership, security descriptors and auditing information of files and directories

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

### -LargeFiles
Enables optimization for copying large files

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

### -LogAllFileNames
Include all scanned file names in output, even skipped onces

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

### -LogDirectoryNames
Include all scanned directory names in output

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

### -LogFilePath
If specified, logging will also be done to specified file

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

### -LogfileOverwrite
Don't append to the specified logfile, but overwrite instead

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

### -MaxFileAge
Skip files that are older then: n days OR created after n date (if n \< 1900 then n = n days, else n = YYYYMMDD date)

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxFileSize
Skip files that are larger then n bytes

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxLastAccessAge
Skip files that have not been accessed in: n days OR after n date (if n \< 1900 then n = n days, else n = YYYYMMDD date)

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxSubDirTreeLevelDepth
Only copy the top n levels of the source directory tree

```yaml
Type: Int32
Parameter Sets: SkipDirectories
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinFileAge
Skip files that are not at least: n days old OR created before n date (if n \< 1900 then n = n days, else n = YYYYMMDD date)

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinFileSize
Skip files that are not at least n bytes in size

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinLastAccessAge
Skip files that are accessed within the last: n days OR before n date (if n \< 1900 then n = n days, else n = YYYYMMDD date)

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Mirror
Synchronizes the content of specified directories, will also delete any files and directories in the destination that do not exist in the source

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

### -MonitorMode
Will stay active after copying, and copy additional changes after a a default threshold of 10 minutes

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

### -MonitorModeRunHoursFrom
Run hours - times when new copies may be started, start-time, range 0000:2359

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MonitorModeRunHoursUntil
Run hours - times when new copies may be started, end-time, range 0000:2359

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MonitorModeThresholdMinutes
Run again in n minutes Time, if changed

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MonitorModeThresholdNrOfChanges
Run again when more then n changes seen

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Move
Will move instead of copy all files from source to destination

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

### -MultiThreaded
Optimize performance by doing multithreaded copying

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

### -Override
Overrides, Removes, or Adds any specified robocopy parameter.

Usage:

Add or replace parameter:

-Override /SwitchWithValue:'SomeValue'

-Override /Switch

Remove parameter:

-Override -/Switch

Multiple overrides:

-Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RecoveryMode
Will shortly pause and retry when I/O errors occur during copying

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

### -RemoveAttributesAfterCopy
Will remove the given attributes from copied files \[RASHCNETO\]

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

### -ResetArchiveAttributeAfterSelection
In addition of copying only files that have the archive attribute set, will then reset this attribute on the source

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

### -SetAttributesAfterCopy
Will set the given attributes to copied files \[RASHCNETO\]

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

### -SkipAllSymbolicLinks
Don't copy symbolic links, junctions or the content they point to

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

### -SkipDirectories
Copies only files from source and skips sub-directories (no recurse)

```yaml
Type: SwitchParameter
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipEmptyDirectories
Does not copy directories if they would be empty

```yaml
Type: SwitchParameter
Parameter Sets: SkipDirectories
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipFilesWithoutArchiveAttribute
Copies only files that have the archive attribute set

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

### -SkipJunctions
Don't copy directory junctions (symbolic link for a folder) or the content they point to

```yaml
Type: SwitchParameter
Parameter Sets: SkipDirectories
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipSymbolicFileLinks
Don't copy file symbolic links but do follow directory junctions

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

### -Source
The directory, filepath, or directory+searchmask

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

### -Unicode
Output status as UNICODE

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

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
