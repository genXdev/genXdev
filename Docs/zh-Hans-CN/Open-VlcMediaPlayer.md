# Open-VlcMediaPlayer

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlc

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-VlcMediaPlayer [[-Path] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-FocusWindow] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-KeysToSend <String[]>] [-Left] [-Loop] [-Maximize] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-PassThru] [-PlayAndExit] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | — | — | 0 | — | 要在 VLC 中打开的媒体文件或 URL |
| `-Width` | Int32 | — | — | 1 | `-1` | 窗口的初始宽度 |
| `-Height` | Int32 | — | — | 2 | `-1` | 窗口的初始高度 |
| `-X` | Int32 | — | — | 3 | `-999999` | 窗口的初始X位置 |
| `-Y` | Int32 | — | — | 4 | `-999999` | 窗口的初始Y位置 |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | `@()` | 要发送到 VLC 播放器窗口的击键，请参阅 cmdlet GenXdev\Send-Key 的文档 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Send keys to VLC after escaping control characters and modifiers |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys to VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `50` | 向VLC发送按键时不同输入字符串之间的延迟（毫秒） |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 在发送按键后保持键盘焦点在VLC窗口上 |
| `-Monitor` | Int32 | — | — | Named | `-1` | 使用的显示器，0 = 默认，-1 = 丢弃 |
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
| `-NoBorders` | SwitchParameter | — | — | Named | — | 移除窗口的边框 |
| `-Left` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕左侧 |
| `-Right` | SwitchParameter | — | — | Named | — | 将窗口放在屏幕右侧 |
| `-Top` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕顶部 |
| `-Bottom` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕底部 |
| `-Centered` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕中央 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 向窗口发送F11键 |
| `-PassThru` | SwitchParameter | — | — | Named | — | 返回每个进程的窗口助手 |
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
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 在打开VLC后恢复PowerShell窗口焦点 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |

## Related Links

- [Open-VlcMediaPlayer on GitHub](https://github.com/genXdev/genXdev)
