# Open-VlcMediaPlayer

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlc

## Synopsis

> Launches and controls VLC Media Player with extensive configuration options.

## Description

This function provides a comprehensive interface to launch and control VLC
Media Player with support for window positioning, monitor selection, playback
settings, audio and video filters, subtitle handling, multiple language
support, network proxy settings, and advanced performance options. The
function can automatically install VLC if not present and provides extensive
customization for media playbook scenarios. It integrates seamlessly with the
GenXdev window management system and supports keyboard input automation through
the Send-Key functionality.

## Syntax

```powershell
Open-VlcMediaPlayer [[-Path] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-FocusWindow] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-KeysToSend <String[]>] [-Left] [-Loop] [-Maximize] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-PassThru] [-PlayAndExit] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | — | — | 0 | — | The media file(s) or URL(s) to open in VLC |
| `-Width` | Int32 | — | — | 1 | `-1` | The initial width of the window |
| `-Height` | Int32 | — | — | 2 | `-1` | The initial height of the window |
| `-X` | Int32 | — | — | 3 | `-999999` | The initial X position of the window |
| `-Y` | Int32 | — | — | 4 | `-999999` | The initial Y position of the window |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | `@()` | Keystrokes to send to the VLC Player Window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys to VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys to VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `50` | Delay between different input strings in milliseconds when sending keys to VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Hold keyboard focus on the VLC window after sending keys |
| `-Monitor` | Int32 | — | — | Named | `-1` | The monitor to use, 0 = default, -1 is discard |
| `-AspectRatio` | String | — | — | Named | — | Source aspect ratio |
| `-Crop` | String | — | — | Named | — | Video cropping |
| `-SubtitleFile` | String | — | — | Named | — | Use subtitle file |
| `-SubtitleScale` | Int32 | — | — | Named | — | Subtitles text scaling factor |
| `-SubtitleLanguage` | String | — | — | Named | — | Subtitle language |
| `-AudioLanguage` | String | — | — | Named | — | Audio language |
| `-PreferredAudioLanguage` | String | — | — | Named | — | Preferred audio language |
| `-HttpProxy` | String | — | — | Named | — | HTTP proxy |
| `-HttpProxyPassword` | String | — | — | Named | — | HTTP proxy password |
| `-VerbosityLevel` | Int32 | — | — | Named | — | Verbosity level |
| `-SubdirectoryBehavior` | String | — | — | Named | — | Subdirectory behavior |
| `-IgnoredExtensions` | String | — | — | Named | — | Ignored extensions |
| `-VLCPath` | String | — | — | Named | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` | Path to VLC executable |
| `-ReplayGainMode` | String | — | — | Named | — | Replay gain mode |
| `-ReplayGainPreamp` | Single | — | — | Named | — | Replay gain preamp |
| `-ForceDolbySurround` | String | — | — | Named | — | Force detection of Dolby Surround |
| `-AudioFilters` | String[] | — | — | Named | — | Audio filters |
| `-Visualization` | String | — | — | Named | — | Audio visualizations |
| `-Deinterlace` | String | — | — | Named | — | Deinterlace |
| `-DeinterlaceMode` | String | — | — | Named | — | Deinterlace mode |
| `-VideoFilters` | String[] | — | — | Named | — | Video filter module |
| `-VideoFilterModules` | String[] | — | — | Named | — | Video filter modules |
| `-Modules` | String[] | — | — | Named | — | Modules |
| `-AudioFilterModules` | String[] | — | — | Named | — | Audio filter modules |
| `-AudioVisualization` | String | — | — | Named | — | Audio visualization mode |
| `-PreferredSubtitleLanguage` | String | — | — | Named | — | Preferred subtitle language |
| `-IgnoredFileExtensions` | String | — | — | Named | — | Ignored file extensions |
| `-Arguments` | String | — | — | Named | — | Additional arguments |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Removes the borders of the window |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Place window on the top side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Place window in the center of the screen |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Sends F11 to the window |
| `-PassThru` | SwitchParameter | — | — | Named | — | Returns the window helper for each process |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | Always on top |
| `-Random` | SwitchParameter | — | — | Named | — | Play files randomly forever |
| `-Loop` | SwitchParameter | — | — | Named | — | Repeat all |
| `-Repeat` | SwitchParameter | — | — | Named | — | Repeat current item |
| `-StartPaused` | SwitchParameter | — | — | Named | — | Start paused |
| `-PlayAndExit` | SwitchParameter | — | — | Named | — | Play and exit |
| `-DisableAudio` | SwitchParameter | — | — | Named | — | Disable audio |
| `-DisableSubtitles` | SwitchParameter | — | — | Named | — | Disable subtitles |
| `-AutoScale` | SwitchParameter | — | — | Named | — | Video Auto Scaling |
| `-HighPriority` | SwitchParameter | — | — | Named | — | Increase the priority of the process |
| `-EnableTimeStretch` | SwitchParameter | — | — | Named | — | Enable time stretching audio |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Open new VLC mediaplayer instance |
| `-EnableWallpaperMode` | SwitchParameter | — | — | Named | — | Enable video wallpaper mode |
| `-EnableAudioTimeStretch` | SwitchParameter | — | — | Named | — | Enable audio time stretching |
| `-Close` | SwitchParameter | — | — | Named | — | Close the VLC media player window |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Will either set the window fullscreen on a different monitor than Powershell, or side by side with Powershell on the same monitor |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the VLC window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the VLC window to foreground after opening |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximize the window |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restore PowerShell window focus after opening VLC |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### Open-VlcMediaPlayer -Path "video.mp4" -Fullscreen -Monitor 0 Opens a video file in fullscreen mode on the primary monitor for immersive viewing experience.

```powershell
Open-VlcMediaPlayer -Path "video.mp4" -Fullscreen -Monitor 0
Opens a video file in fullscreen mode on the primary monitor for immersive
viewing experience.
```

### vlc "video.mp4" -fs -m 0 Short form using aliases to open video fullscreen on monitor 0 with minimal typing required.

```powershell
vlc "video.mp4" -fs -m 0
Short form using aliases to open video fullscreen on monitor 0 with minimal
typing required.
```

### Open-VlcMediaPlayer -Path "movie.mkv" -SubtitleFile "movie.srt" -AudioLanguage "English" Opens a movie with external subtitles and specific audio language for enhanced viewing with captions.

```powershell
Open-VlcMediaPlayer -Path "movie.mkv" -SubtitleFile "movie.srt" -AudioLanguage "English"
Opens a movie with external subtitles and specific audio language for
enhanced viewing with captions.
```

## Related Links

- [Open-VlcMediaPlayer on GitHub](https://github.com/genXdev/genXdev)
