# Open-MediaFile

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `vlcmedia, `media, `findmedia

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-MediaFile [[-Name] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AllDrives] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AttributesToSkip <IO.FileAttributes>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-CaseNameMatching <IO.MatchCasing>] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-Exclude <String[]>] [-FocusWindow] [-FollowSymlinkAndJunctions] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-IncludeAlternateFileStreams] [-IncludeAudio] [-IncludePictures] [-IncludeVideos] [-InputObject <Object>] [-KeysToSend <String[]>] [-Left] [-Loop] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoRecurse] [-OnlyAudio] [-OnlyPictures] [-OnlyVideos] [-PassThru] [-PassThruNoOpen] [-PassThruWindow] [-PlayAndExit] [-PlaylistPath <String>] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-TimeoutSeconds <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | `'*'` | File name or pattern to search for. Default is '*' 🌐 *Supports wildcards* |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Search across all available drives |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Do not recurse into subdirectories |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Follow symlinks and junctions during directory traversal. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Maximum recursion depth for continuing searching upwards the tree for relative searches, while no items are found. 0 means disabled. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximum file size in bytes to include in results. 0 means unlimited. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Minimum file size in bytes to include in results. 0 means no minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Only include files modified after this date/time (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Only include files modified before this date/time (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | File attributes to skip (e.g., System, Hidden or None). |
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | File name or pattern to search for from pipeline input. Default is "*" 🌐 *Supports wildcards* |
| `-PlaylistPath` | String | — | — | Named | `[System.IO.Path]::GetTempFileName() + '.m3u'` | Playlist path to save the media files to. If not specified, the playlist will be saved in a temporary directory. |
| `-Width` | Int32 | — | — | 1 | `-1` | The initial width of the window |
| `-Height` | Int32 | — | — | 2 | `-1` | The initial height of the window |
| `-X` | Int32 | — | — | 3 | `-999999` | The initial X position of the window |
| `-Y` | Int32 | — | — | 4 | `-999999` | The initial Y position of the window |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | — | Keystrokes to send to the VLC Player Window, see documentation for cmdlet GenXdev\Send-Key |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maximum degree of parallelism for directory tasks |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Optional: cancellation timeout in seconds |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys to VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys to VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Delay between different input strings in milliseconds when sending keys to VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Hold keyboard focus on the VLC window after sending keys |
| `-Monitor` | Int32 | — | — | Named | `-2` | The monitor to use, 0 = default, -1 is discard |
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
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Include alternate data streams in search results |
| `-OnlyVideos` | SwitchParameter | — | — | Named | — | Only include video files in the playlist |
| `-OnlyAudio` | SwitchParameter | — | — | Named | — | Only include audio files in the playlist |
| `-OnlyPictures` | SwitchParameter | — | — | Named | — | Only include pictures in the playlist |
| `-IncludeVideos` | SwitchParameter | — | — | Named | — | Additionally include videos in the playlist |
| `-IncludeAudio` | SwitchParameter | — | — | Named | — | Additionally include audio files in the playlist |
| `-IncludePictures` | SwitchParameter | — | — | Named | — | Additionally include pictures in the playlist |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Removes the borders of the window |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Place window on the top side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Place window in the center of the screen |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Sends F11 to the window |
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
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restores PowerShell window focus after opening VLC. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Gets or sets the case-sensitivity for files and directories |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximum recursion depth for directory traversal. 0 means unlimited. |
| `-Exclude` | String[] | — | — | Named | `@('*\\.git\\*')` | Exclude files or directories matching these wildcard patterns (e.g., *.tmp, *\\bin\\*). |
| `-PassThru` | SwitchParameter | — | — | Named | — | Returns the files found by the search |
| `-PassThruNoOpen` | SwitchParameter | — | — | Named | — | Returns the files found by the search without opening VLC |
| `-PassThruWindow` | SwitchParameter | — | — | Named | — | Returns the window helper for each process |

## Related Links

- [Open-MediaFile on GitHub](https://github.com/genXdev/genXdev)
