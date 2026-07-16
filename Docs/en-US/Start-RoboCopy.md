# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc, `rc

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | The directory, filepath, or directory+searchmask |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | The destination directory to place the copied files and directories into.
            If this directory does not exist yet, all missing directories will be created.
            Default value = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | Optional searchmask for selecting the files that need to be copied.
            Default value = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Synchronizes the content of specified directories, will also delete any files and directories in the destination that do not exist in the source |
| `-Move` | SwitchParameter | — | — | Named | — | Will move instead of copy all files from source to destination |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | Will also copy ownership, security descriptors and auditing information of files and directories |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Copies only files from source and skips sub-directories (no recurse) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | Does not copy directories if they would be empty *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Create directory tree only *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | Create directory tree and zero-length files only |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | Don't copy symbolic links, junctions or the content they point to |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | Don't copy file symbolic links but do follow directory junctions |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | Instead of copying the content where symbolic links point to, copy the links themselves |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | Don't copy directory junctions (symbolic link for a folder) or the content they point to *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | Instead of copying the content where junctions point to, copy the junctions themselves *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Will copy all files even if they are older then the ones in the destination |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Copies only files that have the archive attribute set |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | In addition of copying only files that have the archive attribute set, will then reset this attribute on the source |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Exclude any files that matches any of these names/paths/wildcards 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Exclude any directories that matches any of these names/paths/wildcards *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Copy only files that have all these attributes set [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Exclude files that have any of these attributes set [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Will set the given attributes to copied files [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Will remove the given attributes from copied files [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Only copy the top n levels of the source directory tree *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Skip files that are not at least n bytes in size |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Skip files that are larger then n bytes |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Skip files that are not at least: n days old OR created before n date (if n < 1900 then n = n days, else n = YYYYMMDD date) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Skip files that are older then: n days OR created after n date (if n < 1900 then n = n days, else n = YYYYMMDD date) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Skip files that are accessed within the last: n days OR before n date (if n < 1900 then n = n days, else n = YYYYMMDD date) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Skip files that have not been accessed in: n days OR after n date (if n < 1900 then n = n days, else n = YYYYMMDD date) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Will shortly pause and retry when I/O errors occur during copying |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Will stay active after copying, and copy additional changes after a a default threshold of 10 minutes |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Run again in n minutes Time, if changed |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Run again when more then n changes seen |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Run hours - times when new copies may be started, start-time, range 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Run hours - times when new copies may be started, end-time, range 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | If specified, logging will also be done to specified file |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Don't append to the specified logfile, but overwrite instead |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | Include all scanned directory names in output |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Include all scanned file names in output, even skipped onces |
| `-Unicode` | SwitchParameter | — | — | Named | — | Output status as UNICODE |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Enables optimization for copying large files |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Optimize performance by doing multithreaded copying |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | If applicable use compression when copying files between servers to safe bandwidth and time |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | When set, will use millisecond timestamp matching instead of the default 2-second tolerance |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Overrides, Removes, or Adds any specified robocopy parameter.

Usage:

Add or replace parameter:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Remove parameter:

    -Override -/Switch

Multiple overrides:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch"
 |

## Related Links

- [Start-RoboCopy on GitHub](https://github.com/genXdev/genXdev)
