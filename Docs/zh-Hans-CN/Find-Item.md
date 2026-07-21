# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l`

## Synopsis

> 使用高级筛选选项搜索文件和目录。

## Syntax

```powershell
Find-Item [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [<CommonParameters>]

Find-Item [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | 要搜索的文件名或模式。默认为 '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | 要搜索的文件名或模式。默认为 '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | 用于在内容中搜索的正则表达式模式 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | 用于解析输出中相对路径的基础路径 |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | 目录任务的最大并行度 |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 可选：取消超时时间（秒） |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | 在所有可用驱动器中搜索 |
| `-Directory` | SwitchParameter | — | — | Named | `False` | 仅搜索目录 |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | 包含文件和目录 |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | .SYNOPSIS
    将指定的目录从HDFS复制到本地文件系统
.DESCRIPTION
    Copy-FromHDFS cmdlet 将指定的目录从HDFS复制到本地文件系统。
    它相当于 'hdfs dfs -copyToLocal' 命令。
    目标路径将成为源路径内容的根目录，除非指定了 -Overwrite 参数。
    当使用 -Overwrite 参数时，目标路径及其内容将被源目录替换。
    目标路径不能是包含多个文件的现有目录。
.PARAMETER Path
    要复制的HDFS目录路径。
.PARAMETER Destination
    本地文件系统上的目标路径。
.PARAMETER Overwrite
    覆盖目标路径上的任何现有内容。
.INPUTS
    字符串
    您可以通过管道将HDFS路径传递给 Copy-FromHDFS。
.OUTPUTS
    字符串
    Copy-FromHDFS 返回一个表示复制操作的字符串。
.EXAMPLE
    C:\PS> Copy-FromHDFS -Path /user/data -Destination D:\data
    此命令将HDFS中的 /user/data 目录复制到本地文件系统的 D:\data。
.EXAMPLE
    Copy-FromHDFS /user/data D:\data -Overwrite
    将 /user/data 目录从HDFS复制到 D:\data，如果存在则覆盖。 |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | 在搜索结果中包含备用数据流 |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | 不递归到子目录 |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | 在目录遍历过程中跟随符号链接和交接点 |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | 包含光盘驱动器 |
| `-SearchDrives` | String[] | — | — | Named | — | 可选：搜索特定驱动器 |
| `-DriveLetter` | Char[] | — | — | Named | — | 可选：搜索特定驱动器 |
| `-Root` | String[] | — | — | Named | — | 可选：搜索特定目录 |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | 通过从名称输入中剥离目录组件，强制仅在根目录中进行搜索 |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | 在搜索文件内容时包含非文本文件 |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | 强制使用无人值守模式，不会生成链接 |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | 获取或设置文件和目录的大小写敏感性 |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | 设置后，在备用数据流（ADS）中执行内容搜索。未设置时，输出ADS文件信息但不搜索其内容。 |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | 目录遍历的最大递归深度。0 表示无限制。 |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | 在树形结构中向上继续搜索相对项目的最大递归深度，未找到项目时有效。0表示禁用。 |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 要包含在结果中的最大文件大小（以字节为单位）。0表示无限制。 |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 结果中包含的文件最小字节数。0表示无最小值。 |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 仅包含在此日期/时间（UTC）之后修改的文件。 |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 仅包含在此日期/时间（UTC）之前修改的文件。 |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | 要跳过的文件属性（例如，系统、隐藏或无）。 |
| `-Exclude` | String[] | — | — | Named | — | 排除匹配这些通配符模式的文件或目录（例如，*.tmp、*\bin\*）。 |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | 指示 cmdlet 在每行文本中搜索多个匹配项。若不使用此参数，Select-String 只会查找每行文本中的第一个匹配项。 *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | 表示 cmdlet 匹配区分大小写。默认情况下，匹配不区分大小写。 *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | 捕获与模式匹配的行前后指定数量的行。 *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | 指定要匹配指定模式的文化名称。Culture 参数必须与 SimpleMatch 参数一起使用。默认行为使用当前 PowerShell 运行空间（会话）的文化。 *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | 指定目标文件的编码类型。支持 Select-String 兼容的值和扩展的 .NET 编码。 *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | 每个输入文件中只返回第一个匹配的文本。这是获取内容与正则表达式匹配的文件列表的最有效方式。 *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | 禁用输出中匹配字符串的高亮显示。 *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | NotMatch 参数用于查找与指定模式不匹配的文本。 *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | 表示此 cmdlet 返回简单响应而不是 MatchInfo 对象。如果找到模式，则返回值为 $true；如果未找到模式，则返回值为 $null。 *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | 使 cmdlet 只输出匹配的字符串，而不是 MatchInfo 对象。这种行为与 Unix grep 或 Windows findstr.exe 命令的结果最为相似。 *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | 指示该 cmdlet 使用简单匹配而不是正则表达式匹配。在简单匹配中，Select-String 搜索输入中与 Pattern 参数匹配的文本。它不会将 Pattern 参数的值解释为正则表达式语句。 *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

查找包含特定词的文件
在当前目录和子目录中搜索所有包含“translation”一词的文件。

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

查找包含版本字符串的 JavaScript 文件
搜索包含格式为 "Version == `x.y.z`" 的版本字符串的 JavaScript 文件。

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

查找 XML 文件并传递对象
搜索所有 .xml 文件，并将结果作为对象通过管道传递。

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

包括备用数据流
搜索所有文件，并在结果中包括它们的备用数据流。

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

搜索所有驱动器
在所有可用驱动器中搜索所有PDF文件。

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

自定义超时和并行度
搜索日志文件，设置5分钟超时并限制并行度。

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

管道输入
将从Get-ChildItem获取的文件路径传递给搜索包含"error"的文件。

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

限制递归深度
搜索文本文件但将递归限制在2个目录级别。

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
查找 2025 年 1 月 1 日之后修改的文件。

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

排除特定模式
搜索所有文件，但排除临时文件和 bin 目录。

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

搜索特定驱动器
仅在 C: 和 D: 驱动器上搜索 .docx 文件。

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

区分大小写的内容搜索
搜索内容中包含"Error"（区分大小写）的文件。

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

搜索备用数据流内容
查找包含"secret"的备用数据流的文件。

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

查找每行中的所有匹配项
搜索每行中所有出现的"function"，不仅仅是第一个匹配项。

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

显示匹配项周围上下文
在每个匹配项前后分别显示2行和3行，以便更好地理解。

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

仅获取匹配的字符串
返回匹配的文本字符串，而非完整的匹配对象。

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

简单布尔检查
返回真/假而非匹配详情，以检查模式是否存在。

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

仅查找每个文件中的第一个匹配项
在每个文件中于第一个匹配项处停止，以实现高效的文件列出。

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

字面字符串匹配
使用 SimpleMatch 进行精确文本搜索，无需正则表达式解释。

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
搜索特定编码的文件以进行准确的文本处理。

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

文化文本比较
对国际文本使用文化特定匹配与SimpleMatch。

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

使用文件筛选器进行复杂内容搜索
结合文件大小、日期和内容筛选器进行精确搜索。

## Parameter Details

### `-Name <String[]>`

> 要搜索的文件名或模式。默认为 '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> 要搜索的文件名或模式。默认为 '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Content <String[]>`

> 用于在内容中搜索的正则表达式模式

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-RelativeBasePath <String>`

> 用于解析输出中相对路径的基础路径

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Category <String[]>`

> The `-Category` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filetype` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDegreeOfParallelism <Int32>`

> 目录任务的最大并行度

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `threads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> 可选：取消超时时间（秒）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `maxseconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllDrives`

> 在所有可用驱动器中搜索

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Directory`

> 仅搜索目录

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `dir` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesAndDirectories`

> 包含文件和目录

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `DirectoriesAndFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> .SYNOPSIS
    将指定的目录从HDFS复制到本地文件系统
.DESCRIPTION
    Copy-FromHDFS cmdlet 将指定的目录从HDFS复制到本地文件系统。
    它相当于 'hdfs dfs -copyToLocal' 命令。
    目标路径将成为源路径内容的根目录，除非指定了 -Overwrite 参数。
    当使用 -Overwrite 参数时，目标路径及其内容将被源目录替换。
    目标路径不能是包含多个文件的现有目录。
.PARAMETER Path
    要复制的HDFS目录路径。
.PARAMETER Destination
    本地文件系统上的目标路径。
.PARAMETER Overwrite
    覆盖目标路径上的任何现有内容。
.INPUTS
    字符串
    您可以通过管道将HDFS路径传递给 Copy-FromHDFS。
.OUTPUTS
    字符串
    Copy-FromHDFS 返回一个表示复制操作的字符串。
.EXAMPLE
    C:\PS> Copy-FromHDFS -Path /user/data -Destination D:\data
    此命令将HDFS中的 /user/data 目录复制到本地文件系统的 D:\data。
.EXAMPLE
    Copy-FromHDFS /user/data D:\data -Overwrite
    将 /user/data 目录从HDFS复制到 D:\data，如果存在则覆盖。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> 在搜索结果中包含备用数据流

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> 不递归到子目录

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `nr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> 在目录遍历过程中跟随符号链接和交接点

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `symlinks`, `sl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeOpticalDiskDrives`

> 包含光盘驱动器

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchDrives <String[]>`

> 可选：搜索特定驱动器

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `drives` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DriveLetter <Char[]>`

> 可选：搜索特定驱动器

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Root <String[]>`

> 可选：搜索特定目录

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LimitToRoot`

> 通过从名称输入中剥离目录组件，强制仅在根目录中进行搜索

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `limit` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> 在搜索文件内容时包含非文本文件

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLinks`

> 强制使用无人值守模式，不会生成链接

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `nl`, `ForceUnattenedMode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> 获取或设置文件和目录的大小写敏感性

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching ` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> 设置后，在备用数据流（ADS）中执行内容搜索。未设置时，输出ADS文件信息但不搜索其内容。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `sads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRecursionDepth <Int32>`

> 目录遍历的最大递归深度。0 表示无限制。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `md`, `depth`, `maxdepth` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSearchUpDepth <Int32>`

> 在树形结构中向上继续搜索相对项目的最大递归深度，未找到项目时有效。0表示禁用。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxupward` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int64>`

> 要包含在结果中的最大文件大小（以字节为单位）。0表示无限制。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxlength`, `maxsize` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileSize <Int64>`

> 结果中包含的文件最小字节数。0表示无最小值。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `minsize`, `minlength` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> 仅包含在此日期/时间（UTC）之后修改的文件。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ma`, `after` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> 仅包含在此日期/时间（UTC）之前修改的文件。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `before`, `mb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributesToSkip <IO.FileAttributes>`

> 要跳过的文件属性（例如，系统、隐藏或无）。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `None` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> 排除匹配这些通配符模式的文件或目录（例如，*.tmp、*\bin\*）。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> 指示 cmdlet 在每行文本中搜索多个匹配项。若不使用此参数，Select-String 只会查找每行文本中的第一个匹配项。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-CaseSensitive`

> 表示 cmdlet 匹配区分大小写。默认情况下，匹配不区分大小写。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Context <Int32[]>`

> 捕获与模式匹配的行前后指定数量的行。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Culture <String>`

> 指定要匹配指定模式的文化名称。Culture 参数必须与 SimpleMatch 参数一起使用。默认行为使用当前 PowerShell 运行空间（会话）的文化。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Encoding <String>`

> 指定目标文件的编码类型。支持 Select-String 兼容的值和扩展的 .NET 编码。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-List`

> 每个输入文件中只返回第一个匹配的文本。这是获取内容与正则表达式匹配的文件列表的最有效方式。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NoEmphasis`

> 禁用输出中匹配字符串的高亮显示。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NotMatch`

> NotMatch 参数用于查找与指定模式不匹配的文本。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Quiet`

> 表示此 cmdlet 返回简单响应而不是 MatchInfo 对象。如果找到模式，则返回值为 $true；如果未找到模式，则返回值为 $null。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Raw`

> 使 cmdlet 只输出匹配的字符串，而不是 MatchInfo 对象。这种行为与 Unix grep 或 Windows findstr.exe 命令的结果最为相似。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-SimpleMatch`

> 指示该 cmdlet 使用简单匹配而不是正则表达式匹配。在简单匹配中，Select-String 搜索输入中与 Pattern 参数匹配的文本。它不会将 Pattern 参数的值解释为正则表达式语句。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Find-DuplicateFiles.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Write-TextFileAtomic.md)
