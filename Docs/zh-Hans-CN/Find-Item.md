# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l

## Synopsis

> 使用高级筛选选项搜索文件和目录。

## Description

* 使用 Find-Item 查找文件 -> l
        * 快速多线程搜索：利用并行和异步 I/O 处理，可配置最大并行度（默认基于 CPU 核心数），实现高效的文件和目录扫描。
        * 高级模式匹配：支持通配符（*、?）、递归模式（如 **）和复杂路径结构，用于精确的文件和目录查询。
              **/filename 仅在匹配到 filename 时进行递归。允许多个此类模式，但每个模式前必须包含要匹配的文件名或目录名。
              此模式解析器具有 Resolve-Path 的能力，但增加了递归功能，仅支持 * 和 ? 作为通配符，
              避免了路径中包含 [ ] 括号时的错误，无需 -LiteralPath 参数，同时保持不含通配符的路径部分的完整性，
              不同于对整个完整路径进行通配符匹配。
        * 增强的内容搜索：通过 -Content 参数，将 Select-String 全面集成，支持文件内容中的正则表达式模式。
            * 大文件优化：通过智能重叠缓冲区和最小堆分配处理超大文件
            * 多种匹配选项：查找每行的所有匹配项（-AllMatches）或仅查找每个文件的第一个匹配项（-List）
            * 大小写敏感控制：支持区分大小写的匹配（-CaseSensitive），并提供区域特定选项（-Culture）
            * 上下文捕获：显示匹配前后的行（-Context），以便更好地理解
            * 反向匹配：查找不包含模式的文件（-NotMatch）
            * 输出格式：原始字符串输出（-Raw）、静默布尔响应（-Quiet）或完整的 MatchInfo 对象
            * 模式类型：正则表达式（默认）或简单文字字符串匹配（-SimpleMatch）
            * 编码支持：指定文件编码（-Encoding）以实现准确的文本处理
        * 路径类型灵活性：处理相对路径、绝对路径、UNC 路径、根路径和 NTFS 备用数据流（ADS），并可选在流中搜索内容。
        * 多驱动器支持：通过 -AllDrives 搜索所有驱动器，或通过 -SearchDrives 指定特定驱动器，包括光盘（如果指定）。
        * 目录和文件过滤：支持仅搜索目录（-Directory）、同时搜索文件和目录（-FilesAndDirectories）或搜索内容匹配的文件。
        * 排除和限制：使用 -Exclude 排除模式，设置最大递归深度（-MaxRecursionDepth）、文件大小限制（-MaxFileSize、-MinFileSize）和修改日期过滤器（-ModifiedAfter、-ModifiedBefore）。
        * 输出定制：支持 PassThru 以返回 FileInfo/DirectoryInfo 对象、相对路径、交互模式下的超链接，或非交互模式下的纯路径（如果出现问题，使用 -NoLinks 强制非交互模式）。
        * 性能优化：默认跳过非文本文件以进行内容搜索（使用 -IncludeNonTextFileMatching 覆盖），处理长路径（>260 字符），并跟随符号链接/交接点。
        * 安全特性：超时支持（-TimeoutSeconds），忽略不可访问项，默认跳过系统属性，并通过访问节点跟踪防止无限循环。

## Syntax

```powershell
Find-Item [[-Name] <string[]>] [[-RelativeBasePath] <string>] [-Input <Object>] [-Category <string[]>] [-MaxDegreeOfParallelism <int>] [-TimeoutSeconds <int>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives] [-SearchDrives <string[]>] [-DriveLetter <char[]>] [-Root <string[]>] [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <int>] [-MaxSearchUpDepth <int>] [-MaxFileSize <long>] [-MinFileSize <long>] [-ModifiedAfter <datetime>] [-ModifiedBefore <datetime>] [-AttributesToSkip <FileAttributes>] [-Exclude <string[]>] [<CommonParameters>]

Find-Item [[-Name] <string[]>] [[-Content] <string[]>] [[-RelativeBasePath] <string>] [-Input <Object>] [-Category <string[]>] [-MaxDegreeOfParallelism <int>] [-TimeoutSeconds <int>] [-AllDrives] [-Directory] [-FilesAndDirectories] [-PassThru] [-IncludeAlternateFileStreams] [-NoRecurse] [-FollowSymlinkAndJunctions] [-IncludeOpticalDiskDrives] [-SearchDrives <string[]>] [-DriveLetter <char[]>] [-Root <string[]>] [-LimitToRoot] [-IncludeNonTextFileMatching] [-NoLinks] [-CaseNameMatching <MatchCasing>] [-SearchADSContent] [-MaxRecursionDepth <int>] [-MaxSearchUpDepth <int>] [-MaxFileSize <long>] [-MinFileSize <long>] [-ModifiedAfter <datetime>] [-ModifiedBefore <datetime>] [-AttributesToSkip <FileAttributes>] [-Exclude <string[]>] [-AllMatches] [-CaseSensitive] [-Context <int[]>] [-Culture <string>] [-Encoding <string>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | 要搜索的文件名或模式。默认为'*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | 要搜索的文件名或模式。默认为'*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | 用于在内容中搜索的正则表达式模式 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | 用于解析输出中相对路径的基本路径 |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | 目录任务的最大并行度 |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 可选：超时取消时间（秒） |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | 搜索所有可用驱动器 |
| `-Directory` | SwitchParameter | — | — | Named | `False` | 仅搜索目录 |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | 包含文件和目录 |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Output matched items as objects |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | 在搜索结果中包含备用数据流 |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | 不递归到子目录 |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | 在目录遍历期间跟随符号链接和交汇点 |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | 包含光盘驱动器 |
| `-SearchDrives` | String[] | — | — | Named | — | 可选：搜索特定驱动器 |
| `-DriveLetter` | Char[] | — | — | Named | — | 可选：搜索特定驱动器 |
| `-Root` | String[] | — | — | Named | — | 可选：搜索特定目录 |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | 通过从名称输入中去除目录组件，强制仅在根目录中搜索 |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | 搜索文件内容时包含非文本文件 |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | 强制无人值守模式，不会生成链接 |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | 获取或设置文件和目录的大小写敏感性 |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | 启用时，在备用数据流（ADS）中执行内容搜索。未启用时，仅输出ADS文件信息，而不搜索其内容。 |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | 目录遍历的最大递归深度。0 表示无限制。 |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | 在树中向上搜索相对项且未找到任何项时的最大递归深度。0 表示禁用。 |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 纳入结果中的最大文件大小（以字节为单位）。0 表示无限制。 |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 结果中包含的文件最小字节数。0 表示无最小值。 |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 仅包含在此日期/时间（UTC）之后修改的文件。 |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 仅包含在此日期/时间（UTC）之前修改的文件。 |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | 要跳过的文件属性（例如：系统、隐藏或无）。 |
| `-Exclude` | String[] | — | — | Named | — | 排除匹配这些通配符模式的文件或目录（例如，*.tmp、*\bin\*）。 |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | 指示该 cmdlet 在每行文本中搜索多个匹配项。如果没有此参数，Select-String 仅查找每行文本中的第一个匹配项。 *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | 指示 cmdlet 匹配区分大小写。默认情况下，匹配不区分大小写。 *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | 捕获匹配行前后的指定行数。 *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | 指定要与指定模式匹配的区域性名称。Culture 参数必须与 SimpleMatch 参数一起使用。默认行为使用当前 PowerShell 运行空间（会话）的区域性。 *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | 指定目标文件的编码类型。支持与 Select-String 兼容的值以及扩展的 .NET 编码。 *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | 每个输入文件仅返回第一个匹配的文本。这是获取与正则表达式匹配内容的文件列表最有效的方式。 *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | 禁止在输出中高亮显示匹配的字符串。 *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | NotMatch 参数用于查找与指定模式不匹配的文本。 *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | 指示 cmdlet 返回简单响应而非 MatchInfo 对象。如果找到模式，返回值为 $true；如果未找到模式，返回值为 $null。 *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | 使 cmdlet 仅输出匹配的字符串，而不是 MatchInfo 对象。此行为最类似于 Unix grep 或 Windows findstr.exe 命令。 *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | 指示该 cmdlet 使用简单匹配而非正则表达式匹配。在简单匹配中，Select-String 在输入中搜索 Pattern 参数中的文本，而不会将 Pattern 参数的值解释为正则表达式语句。 *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

查找包含特定单词的文件
在当前目录及其子目录中搜索所有包含单词“translation”的文件。

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

查找包含版本字符串的JavaScript文件
搜索包含格式为 "Version == `x.y.z`" 的版本字符串的JavaScript文件。

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

列出所有目录
查找当前目录及其子目录中的所有目录。

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

查找所有 .xml 文件并将结果以对象形式通过管道传递。

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

搜索所有驱动器
在所有可用的驱动器中搜索所有PDF文件。

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

自定义超时与并行度
搜索日志文件，设置5分钟超时并限制并行度。

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

管道输入
将 Get-ChildItem 中的文件路径传递给搜索包含 "error" 的文件。

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

限制递归深度
搜索文本文件但限制递归到2个目录级别。

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

按文件大小筛选
查找大于1MB但小于10MB的文件。

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

按修改日期筛选
查找在2025年1月1日之后修改的文件。

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

区分大小写的内容搜索
搜索包含字符串 "Error"（区分大小写）的文件。

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

搜索备用数据流内容
搜索包含“secret”的备用数据流的文件。

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

Search for all occurrences of "function" in each line, not just the first match.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

在匹配项周围显示上下文
每个匹配项前后分别显示2行和3行，以便更好地理解。

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

简单的布尔检查
返回true/false而不是匹配细节以检查模式是否存在。

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

每个文件仅查找第一个匹配项
在每个文件中停在第一个匹配项处，以实现高效的文件列举。

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

查找不包含模式的文件
使用 NotMatch 来查找不包含指定模式的文件。

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

指定文件编码
为精确文本处理，搜索具有特定编码的文件。

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

复杂内容搜索与文件筛选
结合文件大小、日期和内容筛选进行精确搜索。

## Related Links

- [Find-Item on GitHub](https://github.com/genXdev/genXdev)
