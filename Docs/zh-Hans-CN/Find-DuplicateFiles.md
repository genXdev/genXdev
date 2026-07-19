# Find-DuplicateFiles

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fdf

## Synopsis

> Find duplicate files across multiple directories based on configurable criteria.

## Description

递归搜索指定目录中的重复文件。如果文件内容完全相同或开头部分相同（使用 -ComparePartial 开关进行部分比较），则视为重复文件。此 cmdlet 首先对文件初始字节进行快速哈希以实现高效分组，然后再进行完整内容比较。可通过 -CompareByteLength 参数配置快速哈希的大小，从而在重复检测中平衡性能与准确性。仅当文件长度达到该 CompareByteLength 最小值时，才会被纳入重复检测；较小的文件将仅依据文件名进行分组。

## Syntax

```powershell
Find-DuplicateFiles [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-CompareByteLength <Int32>] [-ComparePartial] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Find-DuplicateFiles [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 1 | `@('*')` | 要搜索的文件名或模式。默认为'*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | 从管道输入中搜索的文件名或模式。默认为'*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | 用于在内容中搜索的正则表达式模式 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | 用于解析输出中相对路径的基本路径 |
| `-Category` | String[] | — | — | Named | — | 仅输出属于选定类别的文件 |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | 目录任务的最大并行度 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | 可选：超时取消时间（秒） |
| `-AllDrives` | SwitchParameter | — | — | Named | — | 搜索所有可用驱动器 |
| `-Directory` | SwitchParameter | — | — | Named | — | 仅搜索目录 |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | 包含文件和目录 |
| `-PassThru` | SwitchParameter | — | — | Named | — | Output matched items as objects |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | 在搜索结果中包含备用数据流 |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | 不递归到子目录 |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | 在目录遍历期间跟随符号链接和交汇点 |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | 包含光盘驱动器 |
| `-SearchDrives` | String[] | — | — | Named | `@()` | 可选：搜索特定驱动器 |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | 可选：搜索特定驱动器 |
| `-Root` | String[] | — | — | Named | `@()` | 可选：搜索特定目录 |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | 通过从名称输入中去除目录组件，强制仅在根目录中搜索 |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | 搜索文件内容时包含非文本文件 |
| `-NoLinks` | SwitchParameter | — | — | Named | — | 强制无人值守模式，不会生成链接 |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | 获取或设置文件和目录的大小写敏感性 |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | 启用后，在备用数据流内执行内容搜索 |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | 目录遍历的最大递归深度。0 表示无限制。 |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | 向上搜索树以查找延续的最大递归深度。0 表示禁用。 |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 纳入结果中的最大文件大小（以字节为单位）。0 表示无限制。 |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 结果中包含的文件最小字节数。0 表示无最小值。 |
| `-ModifiedAfter` | DateTime | — | — | Named | — | 仅包含在此日期/时间（UTC）之后修改的文件 |
| `-ModifiedBefore` | DateTime | — | — | Named | — | 仅包含在此日期/时间（UTC）之前修改的文件 |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | 要跳过的文件属性（例如，系统、隐藏或无） |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | 排除匹配这些通配符模式的文件或目录 |
| `-AllMatches` | SwitchParameter | — | — | Named | — | 在每一行文本中搜索多个匹配项 *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | 匹配区分大小写 *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | 捕获匹配项周围的上下文行 *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | 用于模式匹配的文化名称 *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | 指定目标文件的编码 *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | 仅返回每个文件的第一个匹配项 *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | 禁用输出中匹配字符串的高亮显示 *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | NotMatch 参数用于查找不匹配模式的文本 *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | Output only matching strings instead of MatchInfo objects *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | Use simple string matching instead of regex *(Parameter set: )* |
| `-ComparePartial` | SwitchParameter | — | — | Named | — | 只要文件名和内容开头相同，即使文件大小不同也会返回，这可以检测损坏的下载/复制操作 |
| `-CompareByteLength` | Int32 | — | — | Named | `65536` | 快速比对文件的字节长度，用于快速索引和搜索重复文件，此操作不会比较文件内容。 |

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
