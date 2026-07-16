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
| `-Source` | String | ✅ | — | 0 | — | 目录、文件路径或目录+搜索掩码 |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | 用于放置复制文件和目录的目标目录。
如果此目录尚不存在，则会创建所有缺失的目录。
默认值 = "." |
| `-Files` | String[] | — | — | 2 | `@()` | 用于选择需要复制的文件的可选搜索掩码。
默认值 = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | 同步指定目录的内容，还会删除目标目录中源目录不存在的所有文件和目录 |
| `-Move` | SwitchParameter | — | — | Named | — | 移动（而非复制）所有文件，从源位置到目标位置 |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | 还将复制文件和目录的所有权、安全描述符和审核信息 |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | 仅从源复制文件，跳过子目录（不递归） *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | 如果目录为空，则不复制它们。 *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Directory tree only *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | mkdir -p dir1/subdir1 dir1/subdir2 dir2
touch dir1/subdir1/file1.txt dir1/subdir1/file2.txt dir1/subdir2/file3.txt dir2/file4.txt |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | 不复制符号链接、连接点或其指向的内容 |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | 不复制文件符号链接，但跟随目录交接点 |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | 复制符号链接本身，而不是复制它们指向的内容 |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | 不要复制目录交接点（文件夹的符号链接）或其指向的内容 *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | Instead of copying the content where junctions point to, copy the junctions themselves *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | 即使文件比目标位置的文件旧，也会复制所有文件 |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | 仅复制设置了存档属性的文件 |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | 除了复制具有存档属性集的文件外，还会重置源文件上的该属性 |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | 排除与以下任何名称/路径/通配符匹配的文件 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | 排除与这些名称/路径/通配符匹配的任何目录 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | 仅复制拥有所有这些属性 [RASHCNETO] 的文件 |
| `-AttributeExcludeFilter` | String | — | — | Named | — | 排除具有以下任一属性集的文件 [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | 将给定的属性设置到复制的文件 [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | 从复制的文件中移除指定属性 [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | 仅复制源目录树的前 n 层 *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | 跳过大小不足n字节的文件 |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | 跳过大于 n 字节的文件 |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | 跳过不符合以下条件的文件：文件不是至少 n 天前创建，或者创建日期早于 n 日期（如果 n < 1900，则 n 表示天数，否则 n 表示 YYYYMMDD 格式的日期） |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | 跳过满足以下条件的文件：早于 n 天（即创建时间超过 n 天前）或创建时间晚于 n 日期（如果 n < 1900，则 n 表示天数；否则 n 表示 YYYYMMDD 格式的日期） |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | 跳过在过去 n 天内访问过的文件，或者在 n 日期之前访问过的文件（如果 n < 1900，则 n 代表天数；否则 n 代表 YYYYMMDD 格式的日期） |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | 跳过自以下时间后未被访问的文件：n 天或 n 日期之后（如果 n < 1900，则 n = n 天，否则 n = YYYYMMDD 日期） |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | 在复制过程中遇到I/O错误时会短暂暂停并重试 |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | 复制后保持活跃状态，并在默认的10分钟阈值后复制其他更改 |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | 如果发生更改，在 N 分钟后再次运行 |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | 当检测到的更改数量超过n时，再次运行。 |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | 运行小时数 - 可以开始新副本的时间，开始时间，范围 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | 运行时间 - 可能启动新副本的时间段，结束时间，范围 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | 如果指定，日志也会写入到指定的文件 |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | 不要追加到指定的日志文件，而是覆盖写入 |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | Include all scanned directory names in output |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Include all scanned file names in output, even skipped onces |
| `-Unicode` | SwitchParameter | — | — | Named | — | ✱ |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | 启用大文件复制优化 |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | 通过多线程复制优化性能 |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | 如果适用，在服务器之间复制文件时使用压缩以节省带宽和时间 |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | 设置后，将使用毫秒时间戳匹配替代默认的2秒容差。 |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | 覆盖、移除或添加指定的 robocopy 参数。

用法：

添加或替换参数：

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

移除参数：

    -Override -/Switch

多个覆盖：

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Related Links

- [Start-RoboCopy on GitHub](https://github.com/genXdev/genXdev)
