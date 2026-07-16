# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | 要搜索的文件名或模式。 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | 从管道输入中搜索的文件名或模式。默认为'*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | 用于在文件内容中搜索的正则表达式模式 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | 仅输出属于选定类别的文件 |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | 目录任务的最大并行度 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | 可选：超时取消时间（秒） |
| `-AllDrives` | SwitchParameter | — | — | Named | — | 搜索所有可用驱动器 |
| `-File` | SwitchParameter | — | — | Named | — | Search for filenames only and change to folder of first found file |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | Include filename matching and change to folder of first found file |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | 在搜索结果中包含备用数据流 |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | 不递归到子目录 |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | 在目录遍历期间跟随符号链接和交汇点 |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | 包含光盘驱动器 |
| `-SearchDrives` | String[] | — | — | Named | `@()` | 可选：搜索特定驱动器 |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | 可选：搜索特定驱动器 |
| `-Root` | String[] | — | — | Named | `@()` | 可选：结合提供的名称搜索特定的基础文件夹 |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | 搜索文件内容时包含非文本文件（二进制文件、图片等） |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | 获取或设置文件和目录的大小写敏感性 |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | 启用时，在备用数据流（ADS）中执行内容搜索。未启用时，仅输出ADS文件信息，而不搜索其内容。 |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | 目录遍历的最大递归深度。0 表示无限制。 |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 纳入结果中的最大文件大小（以字节为单位）。0 表示无限制。 |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 结果中包含的文件最小字节数。0 表示无最小值。 |
| `-ModifiedAfter` | DateTime | — | — | Named | — | 仅包含在此日期/时间（UTC）之后修改的文件。 |
| `-ModifiedBefore` | DateTime | — | — | Named | — | 仅包含在此日期/时间（UTC）之前修改的文件。 |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | 要跳过的文件属性（例如：系统、隐藏或无）。 |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | 排除与这些通配符模式匹配的文件或目录（例如，*.tmp、*\bin\*）。 |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | 指示 cmdlet 匹配区分大小写。默认情况下，匹配不区分大小写。 *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | 指定要与指定模式匹配的区域性名称。Culture 参数必须与 SimpleMatch 参数一起使用。默认行为使用当前 PowerShell 运行空间（会话）的区域性。 *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | 指定目标文件的编码类型。默认值为utf8NoBOM。 *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | NotMatch 参数用于查找与指定模式不匹配的文本。 *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | 指示该 cmdlet 使用简单匹配而非正则表达式匹配。在简单匹配中，Select-String 在输入中搜索 Pattern 参数中的文本，而不会将 Pattern 参数的值解释为正则表达式语句。 *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | 使用 Push-Location 代替 Set-Location，将位置推送到位置堆栈上 |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | 设置后，仅考虑精确的名称匹配。默认情况下，除非名称中包含通配符，否则使用通配符匹配。 |

## Related Links

- [Set-FoundLocation on GitHub](https://github.com/genXdev/genXdev)
