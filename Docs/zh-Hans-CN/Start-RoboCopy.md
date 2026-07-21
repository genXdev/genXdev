# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> 为 Microsoft 的稳健复制（RoboCopy）实用程序提供 PowerShell 封装。

## Description

RoboCopy命令行工具的全面封装，提供强大的文件和目录复制功能。此函数通过PowerShell友好的参数暴露RoboCopy的广泛功能集，同时保留其大部分强大功能。

主要功能：
- 带镜像选项的目录同步
- 支持超长路径名（超过256个字符）
- 保留安全设置
- 高级文件属性处理
- 符号链接和交接点管理
- 用于持续同步的监视模式
- 针对大文件的性能优化
- 网络压缩支持
- 针对故障设备的恢复模式

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
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | 复制文件和目录的目标目录。
如果此目录不存在，将创建所有缺失的目录。
默认值 = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | 用于选择需要复制的文件的可选搜索掩码。
默认值 = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | 同步指定目录的内容，还将删除目标中源不存在的任何文件和目录 |
| `-Move` | SwitchParameter | — | — | Named | — | 将移动而非复制所有文件从源位置到目标位置 |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | 同时还会复制文件和目录的所有权、安全描述符以及审核信息 |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | 仅从源复制文件，跳过子目录（不递归） *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | 如果目录为空则不复制 *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | 仅创建目录树 *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | 创建目录树并仅创建零长度文件 |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | 不复制符号链接、交接点或它们指向的内容 |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | 不复制文件符号链接，但会跟随目录交接点 |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | 复制符号链接本身，而非链接指向的内容 |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | 不复制目录交接点（文件夹的符号链接）或其指向的内容 *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | 不复制交接点指向的内容，而是复制交接点本身 *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | 将复制所有文件，即使它们比目标位置中的文件更旧 |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | 仅复制设置了存档属性的文件 |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | 除了仅复制具有存档属性设置的文件外，还会重置源文件的此属性 |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | 排除任何匹配这些名称/路径/通配符的文件 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | 排除任何与此名称/路径/通配符匹配的目录 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | 仅复制具有所有这些属性设置的文件 [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | 排除设置了以下任一属性的文件：[RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | 将把给定的属性设置到已复制的文件上 [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | 将从复制的文件中移除给定属性 [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | 仅复制源目录树的前 n 层 *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | 跳过大小至少为 n 字节的文件 |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | 跳过大小超过 n 字节的文件 |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | 跳过不符合以下条件的文件：至少 n 天前创建，或在 n 日期之前创建（如果 n < 1900，则 n 表示天数，否则 n 表示 YYYYMMDD 格式的日期） |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | 跳过早于 n 天的文件，或者创建时间晚于 n 日期的文件（若 n < 1900，则 n 表示天数，否则 n 表示 YYYYMMDD 格式的日期） |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | 跳过最近 n 天内或 n 日期之前（如果 n < 1900，则 n 表示天数，否则 n 为 YYYYMMDD 格式的日期）访问的文件 |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | 跳过在以下时间内未被访问的文件：n 天内 或 n 日期之后（如果 n < 1900，则 n = n 天，否则 n = YYYYMMDD 日期） |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | 复制过程中遇到I/O错误时将短暂暂停并重试 |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | 在复制后会保持活动状态，并在默认的10分钟阈值后复制额外的更改 |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | 如果发生变化，在 n 分钟后重新运行 |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | 当检测到的更改次数超过 n 时再次运行 |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | 运行时间 - 新副本可以启动的时间，起始时间，范围 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | 运行时间 - 可启动新副本的时间段，结束时间，范围0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | 如果指定，日志也将写入指定文件 |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | 不追加到指定日志文件，而是覆盖写入。 |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | 在输出中包含所有扫描的目录名称 |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | 在输出中包含所有扫描的文件名，即使是跳过的文件 |
| `-Unicode` | SwitchParameter | — | — | Named | — | 输出状态为 UNICODE |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | 启用大型文件复制优化功能 |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | 通过多线程复制优化性能 |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | 如果适用，在服务器之间复制文件时使用压缩以节省带宽和时间 |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | 启用后，将使用毫秒级时间戳匹配代替默认的2秒容差 |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | 覆盖、移除或添加指定的 robocopy 参数。

用法：

添加或替换参数：

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

移除参数：

    -Override -/Switch

多重覆盖：

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Examples

### ########################################################################Mirror a directory with security settings Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `     -Mirror -IncludeSecurity

```powershell
########################################################################Mirror a directory with security settings
Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `
    -Mirror -IncludeSecurity
```

### ########################################################################Monitor and sync changes every 10 minutes Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `     -MonitorMode -MonitorModeThresholdMinutes 10

```powershell
########################################################################Monitor and sync changes every 10 minutes
Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `
    -MonitorMode -MonitorModeThresholdMinutes 10
```

## Parameter Details

### `-Source <String>`

> 目录、文件路径或目录+搜索掩码

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DestinationDirectory <String>`

> 复制文件和目录的目标目录。
如果此目录不存在，将创建所有缺失的目录。
默认值 = ".\"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `".$([System.IO.Path]::DirectorySeparatorChar)"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Files <String[]>`

> 用于选择需要复制的文件的可选搜索掩码。
默认值 = '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Mirror`

> 同步指定目录的内容，还将删除目标中源不存在的任何文件和目录

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Move`

> 将移动而非复制所有文件从源位置到目标位置

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeSecurity`

> 同时还会复制文件和目录的所有权、安全描述符以及审核信息

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipDirectories`

> 仅从源复制文件，跳过子目录（不递归）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-SkipEmptyDirectories`

> 如果目录为空则不复制

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructure`

> 仅创建目录树

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructureAndEmptyFiles`

> 创建目录树并仅创建零长度文件

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipAllSymbolicLinks`

> 不复制符号链接、交接点或它们指向的内容

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSymbolicFileLinks`

> 不复制文件符号链接，但会跟随目录交接点

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CopySymbolicLinksAsLinks`

> 复制符号链接本身，而非链接指向的内容

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipJunctions`

> 不复制目录交接点（文件夹的符号链接）或其指向的内容

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyJunctionsAsJunctons`

> 不复制交接点指向的内容，而是复制交接点本身

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-Force`

> 将复制所有文件，即使它们比目标位置中的文件更旧

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipFilesWithoutArchiveAttribute`

> 仅复制设置了存档属性的文件

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetArchiveAttributeAfterSelection`

> 除了仅复制具有存档属性设置的文件外，还会重置源文件的此属性

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FileExcludeFilter <String[]>`

> 排除任何匹配这些名称/路径/通配符的文件

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DirectoryExcludeFilter <String[]>`

> 排除任何与此名称/路径/通配符匹配的目录

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | SkipDirectories |

<hr/>
### `-AttributeIncludeFilter <String>`

> 仅复制具有所有这些属性设置的文件 [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributeExcludeFilter <String>`

> 排除设置了以下任一属性的文件：[RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetAttributesAfterCopy <String>`

> 将把给定的属性设置到已复制的文件上 [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveAttributesAfterCopy <String>`

> 将从复制的文件中移除给定属性 [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSubDirTreeLevelDepth <Int32>`

> 仅复制源目录树的前 n 层

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-MinFileSize <Int32>`

> 跳过大小至少为 n 字节的文件

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int32>`

> 跳过大小超过 n 字节的文件

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileAge <Int32>`

> 跳过不符合以下条件的文件：至少 n 天前创建，或在 n 日期之前创建（如果 n < 1900，则 n 表示天数，否则 n 表示 YYYYMMDD 格式的日期）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileAge <Int32>`

> 跳过早于 n 天的文件，或者创建时间晚于 n 日期的文件（若 n < 1900，则 n 表示天数，否则 n 表示 YYYYMMDD 格式的日期）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinLastAccessAge <Int32>`

> 跳过最近 n 天内或 n 日期之前（如果 n < 1900，则 n 表示天数，否则 n 为 YYYYMMDD 格式的日期）访问的文件

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastAccessAge <Int32>`

> 跳过在以下时间内未被访问的文件：n 天内 或 n 日期之后（如果 n < 1900，则 n = n 天，否则 n = YYYYMMDD 日期）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RecoveryMode`

> 复制过程中遇到I/O错误时将短暂暂停并重试

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorMode`

> 在复制后会保持活动状态，并在默认的10分钟阈值后复制额外的更改

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdMinutes <Int32>`

> 如果发生变化，在 n 分钟后重新运行

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdNrOfChanges <Int32>`

> 当检测到的更改次数超过 n 时再次运行

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursFrom <Int32>`

> 运行时间 - 新副本可以启动的时间，起始时间，范围 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursUntil <Int32>`

> 运行时间 - 可启动新副本的时间段，结束时间，范围0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogFilePath <String>`

> 如果指定，日志也将写入指定文件

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogfileOverwrite`

> 不追加到指定日志文件，而是覆盖写入。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogDirectoryNames`

> 在输出中包含所有扫描的目录名称

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogAllFileNames`

> 在输出中包含所有扫描的文件名，即使是跳过的文件

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Unicode`

> 输出状态为 UNICODE

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LargeFiles`

> 启用大型文件复制优化功能

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MultiThreaded`

> 通过多线程复制优化性能

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompressibleContent`

> 如果适用，在服务器之间复制文件时使用压缩以节省带宽和时间

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactTimestamps`

> 启用后，将使用毫秒级时间戳匹配代替默认的2秒容差

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Override <String>`

> 覆盖、移除或添加指定的 robocopy 参数。

用法：

添加或替换参数：

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

移除参数：

    -Override -/Switch

多重覆盖：

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

> This parameter accepts all remaining arguments.

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Find-Item.md)
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
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Write-TextFileAtomic.md)
