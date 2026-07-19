# Copy-FilesToDateFolder

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> 将符合搜索条件的文件复制到基于日期的子文件夹中。

## Description

使用与`Find-Item`相同的参数集搜索文件，并根据文件的创建日期或媒体日期将每个匹配的文件复制到`TargetFolder`的子文件夹中。该cmdlet支持内容匹配、全驱动器搜索和多种筛选器。

尝试多种策略来确定指定文件的准确创建或捕获日期。策略包括读取图像EXIF元数据、从文件名中解析日期/时间信息，以及在无法获取其他可靠信息时回退到文件的上次写入时间。

## Syntax

```powershell
Copy-FilesToDateFolder -TargetFolder <String> [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DeleteEmptyDirs] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TargetFolderNameDateSyntax <String>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Copy-FilesToDateFolder [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-TargetFolder` | String | ✅ | — | 0 | — | 匹配的文件将被复制到基于日期子文件夹的目标根文件夹 |
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
| `-DeleteEmptyDirs` | SwitchParameter | — | — | Named | — | 移动文件后删除空的源目录 |
| `-TargetFolderNameDateSyntax` | String | — | — | Named | `'Year + Month'` | 目标文件夹名称日期语法 |

## Examples

### Copy all pictures and videos to the corresponsing Android Onedrive App Image backup folders     Copy-FilesToDateFolder -TargetFolder "~\onedrive\Pictures\Camera Roll" `                            -SourceFolder ~\Pictures\*, ~\desktop\* `                            -Category 'Pictures', 'Videos'

```powershell
Copy all pictures and videos to the corresponsing Android Onedrive App Image backup folders
    Copy-FilesToDateFolder -TargetFolder "~\onedrive\Pictures\Camera Roll" `
                           -SourceFolder ~\Pictures\*, ~\desktop\* `
                           -Category 'Pictures', 'Videos'
```

### Copy all jpg files from the current directory into date folders under `D:\Archive` (dry run):

```powershell
Copy all jpg files from the current directory into date folders under
`D:\Archive` (dry run):
```

Copy-FilesToDateFolder -TargetFolder 'D:\Archive' -Name '*.jpg' -WhatIf

### Copy all files across drives matching `*.mp4` into monthly folders

```powershell
Copy all files across drives matching `*.mp4` into monthly folders
```

Copy-FilesToDateFolder -TargetFolder 'E:\Media\Videos' -Name '.*\\.mp4'

## Related Links

- [Copy-FilesToDateFolder on GitHub](https://github.com/genXdev/genXdev)
