# Open-MediaFile

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `vlcmedia, `media, `findmedia

## Synopsis

> 使用VLC媒体播放器打开和播放媒体文件，具有高级过滤和配置选项。

## Description

该函数根据搜索模式扫描媒体文件，创建播放列表，并以全面配置选项启动VLC媒体播放器。它支持视频、音频文件和图片，必要时可自动安装VLC。该功能提供对播放行为、窗口位置、音视频设置及字幕处理的广泛控制。

## Syntax

```powershell
Open-MediaFile [[-Name] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AllDrives] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AttributesToSkip <IO.FileAttributes>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-CaseNameMatching <IO.MatchCasing>] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-Exclude <String[]>] [-FocusWindow] [-FollowSymlinkAndJunctions] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-IncludeAlternateFileStreams] [-IncludeAudio] [-IncludePictures] [-IncludeVideos] [-InputObject <Object>] [-KeysToSend <String[]>] [-Left] [-Loop] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoRecurse] [-OnlyAudio] [-OnlyPictures] [-OnlyVideos] [-PassThru] [-PassThruNoOpen] [-PassThruWindow] [-PlayAndExit] [-PlaylistPath <String>] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-TimeoutSeconds <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | `'*'` | 要搜索的文件名或模式。默认为'*' 🌐 *Supports wildcards* |
| `-AllDrives` | SwitchParameter | — | — | Named | — | 搜索所有可用驱动器 |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | 不递归到子目录 |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | 在目录遍历期间跟随符号链接和连接点。 |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | 在树中向上搜索相对项且未找到任何项时的最大递归深度。0 表示禁用。 |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 纳入结果中的最大文件大小（以字节为单位）。0 表示无限制。 |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 结果中包含的文件最小字节数。0 表示无最小值。 |
| `-ModifiedAfter` | DateTime | — | — | Named | — | 仅包含在此日期/时间（UTC）之后修改的文件。 |
| `-ModifiedBefore` | DateTime | — | — | Named | — | 仅包含在此日期/时间（UTC）之前修改的文件。 |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | 要跳过的文件属性（例如：系统、隐藏或无）。 |
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | 从管道输入中搜索的文件名或模式。默认值为 "*" 🌐 *Supports wildcards* |
| `-PlaylistPath` | String | — | — | Named | `[System.IO.Path]::GetTempFileName() + '.m3u'` | 保存媒体文件的播放列表路径。如果未指定，播放列表将保存在临时目录中。 |
| `-Width` | Int32 | — | — | 1 | `-1` | 窗口的初始宽度 |
| `-Height` | Int32 | — | — | 2 | `-1` | 窗口的初始高度 |
| `-X` | Int32 | — | — | 3 | `-999999` | 窗口的初始X位置 |
| `-Y` | Int32 | — | — | 4 | `-999999` | 窗口的初始Y位置 |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | — | 要发送到 VLC 播放器窗口的击键，请参阅 cmdlet GenXdev\Send-Key 的文档 |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | 目录任务的最大并行度 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | 可选：超时取消时间（秒） |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Send keys to VLC after escaping control characters and modifiers |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys to VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 向VLC发送按键时不同输入字符串之间的延迟（毫秒） |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 在发送按键后保持键盘焦点在VLC窗口上 |
| `-Monitor` | Int32 | — | — | Named | `-2` | 使用的显示器，0 = 默认，-1 = 丢弃 |
| `-AspectRatio` | String | — | — | Named | — | 源宽高比 |
| `-Crop` | String | — | — | Named | — | 视频裁剪 |
| `-SubtitleFile` | String | — | — | Named | — | 请使用字幕文件 |
| `-SubtitleScale` | Int32 | — | — | Named | — | 字幕文本缩放因子 |
| `-SubtitleLanguage` | String | — | — | Named | — | 字幕语言 |
| `-AudioLanguage` | String | — | — | Named | — | 音频语言 |
| `-PreferredAudioLanguage` | String | — | — | Named | — | 首选音频语言 |
| `-HttpProxy` | String | — | — | Named | — | HTTP代理 |
| `-HttpProxyPassword` | String | — | — | Named | — | HTTP代理密码 |
| `-VerbosityLevel` | Int32 | — | — | Named | — | 冗长级别 |
| `-SubdirectoryBehavior` | String | — | — | Named | — | 子目录行为 |
| `-IgnoredExtensions` | String | — | — | Named | — | 被忽略的扩展名 |
| `-VLCPath` | String | — | — | Named | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` | VLC可执行文件路径 |
| `-ReplayGainMode` | String | — | — | Named | — | 回放增益模式 |
| `-ReplayGainPreamp` | Single | — | — | Named | — | 回放增益前置放大器 |
| `-ForceDolbySurround` | String | — | — | Named | — | 强制检测杜比环绕 |
| `-AudioFilters` | String[] | — | — | Named | — | 音频过滤器 |
| `-Visualization` | String | — | — | Named | — | 音频可视化 |
| `-Deinterlace` | String | — | — | Named | — | 反交错 |
| `-DeinterlaceMode` | String | — | — | Named | — | 去隔行模式 |
| `-VideoFilters` | String[] | — | — | Named | — | 视频滤镜模块 |
| `-VideoFilterModules` | String[] | — | — | Named | — | 视频滤镜模块 |
| `-Modules` | String[] | — | — | Named | — | 模块 |
| `-AudioFilterModules` | String[] | — | — | Named | — | 音频过滤模块 |
| `-AudioVisualization` | String | — | — | Named | — | 音频可视化模式 |
| `-PreferredSubtitleLanguage` | String | — | — | Named | — | 首选字幕语言 |
| `-IgnoredFileExtensions` | String | — | — | Named | — | 忽略的文件扩展名 |
| `-Arguments` | String | — | — | Named | — | 附加参数 |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | 在搜索结果中包含备用数据流 |
| `-OnlyVideos` | SwitchParameter | — | — | Named | — | 播放列表中仅包含视频文件 |
| `-OnlyAudio` | SwitchParameter | — | — | Named | — | 仅在播放列表中包含音频文件 |
| `-OnlyPictures` | SwitchParameter | — | — | Named | — | Only include pictures in the playlist |
| `-IncludeVideos` | SwitchParameter | — | — | Named | — | Additionally include videos in the playlist |
| `-IncludeAudio` | SwitchParameter | — | — | Named | — | Additionally include audio files in the playlist |
| `-IncludePictures` | SwitchParameter | — | — | Named | — | Additionally include pictures in the playlist |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 移除窗口的边框 |
| `-Left` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕左侧 |
| `-Right` | SwitchParameter | — | — | Named | — | 将窗口放在屏幕右侧 |
| `-Top` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕顶部 |
| `-Bottom` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕底部 |
| `-Centered` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕中央 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 向窗口发送F11键 |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | 始终置顶 |
| `-Random` | SwitchParameter | — | — | Named | — | 随机无休止播放文件 |
| `-Loop` | SwitchParameter | — | — | Named | — | Repeat all |
| `-Repeat` | SwitchParameter | — | — | Named | — | Repeat current item |
| `-StartPaused` | SwitchParameter | — | — | Named | — | 开始暂停 |
| `-PlayAndExit` | SwitchParameter | — | — | Named | — | Play and exit |
| `-DisableAudio` | SwitchParameter | — | — | Named | — | Disable audio |
| `-DisableSubtitles` | SwitchParameter | — | — | Named | — | 关闭字幕 |
| `-AutoScale` | SwitchParameter | — | — | Named | — | 视频自动缩放 |
| `-HighPriority` | SwitchParameter | — | — | Named | — | Increase the priority of the process |
| `-EnableTimeStretch` | SwitchParameter | — | — | Named | — | Enable time stretching audio |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 打开新的VLC媒体播放器实例 |
| `-EnableWallpaperMode` | SwitchParameter | — | — | Named | — | 启用视频壁纸模式 |
| `-EnableAudioTimeStretch` | SwitchParameter | — | — | Named | — | 启用音频时间拉伸 |
| `-Close` | SwitchParameter | — | — | Named | — | 关闭VLC媒体播放器窗口 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 将在与 PowerShell 不同的显示器上全屏显示窗口，或与 PowerShell 在同一显示器上并排显示 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 打开VLC窗口后聚焦 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 打开后，将 VLC 窗口置于前台 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 最大化窗口 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 在打开VLC后恢复PowerShell窗口焦点。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | 获取或设置文件和目录的大小写敏感性 |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | 目录遍历的最大递归深度。0 表示无限制。 |
| `-Exclude` | String[] | — | — | Named | `@('*\\.git\\*')` | 排除与这些通配符模式匹配的文件或目录（例如，*.tmp、*\bin\*）。 |
| `-PassThru` | SwitchParameter | — | — | Named | — | 返回搜索结果中查到的文件 |
| `-PassThruNoOpen` | SwitchParameter | — | — | Named | — | 返回搜索结果中的文件，而不打开 VLC |
| `-PassThruWindow` | SwitchParameter | — | — | Named | — | 返回每个进程的窗口助手 |

## Examples

### Open-MediaFile

```powershell
Open-MediaFile
```

使用默认 VLC 设置打开当前目录中的所有媒体文件。

### vlcmedia ~\Pictures -OnlyPictures -Fullscreen

```powershell
vlcmedia ~\Pictures -OnlyPictures -Fullscreen
```

使用别名 'vlcmedia'，以全屏模式仅打开“图片”文件夹中的图片文件。

### media ~\Videos -OnlyVideos -Loop

```powershell
media ~\Videos -OnlyVideos -Loop
```

使用别名 'media' 以循环模式打开视频文件。

## Related Links

- [Open-MediaFile on GitHub](https://github.com/genXdev/genXdev)
