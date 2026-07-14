---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Open-MediaFile

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

```
Open-MediaFile [[-Name] <String[]>] [-AllDrives] [-NoRecurse] [-FollowSymlinkAndJunctions]
 [-MaxSearchUpDepth <Int32>] [-MaxFileSize <Int64>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>]
 [-ModifiedBefore <DateTime>] [-AttributesToSkip <FileAttributes>] [-InputObject <Object>]
 [-PlaylistPath <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>]
 [-KeysToSend <String[]>] [-MaxDegreeOfParallelism <Int32>] [-TimeoutSeconds <Int32>] [-SendKeyEscape]
 [-SendKeyUseShiftEnter] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyHoldKeyboardFocus] [-Monitor <Int32>]
 [-AspectRatio <String>] [-Crop <String>] [-SubtitleFile <String>] [-SubtitleScale <Int32>]
 [-SubtitleLanguage <String>] [-AudioLanguage <String>] [-PreferredAudioLanguage <String>]
 [-HttpProxy <String>] [-HttpProxyPassword <String>] [-VerbosityLevel <Int32>] [-SubdirectoryBehavior <String>]
 [-IgnoredExtensions <String>] [-VLCPath <String>] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>]
 [-ForceDolbySurround <String>] [-AudioFilters <String[]>] [-Visualization <String>] [-Deinterlace <String>]
 [-DeinterlaceMode <String>] [-VideoFilters <String[]>] [-VideoFilterModules <String[]>] [-Modules <String[]>]
 [-AudioFilterModules <String[]>] [-AudioVisualization <String>] [-PreferredSubtitleLanguage <String>]
 [-IgnoredFileExtensions <String>] [-Arguments <String>] [-IncludeAlternateFileStreams] [-OnlyVideos]
 [-OnlyAudio] [-OnlyPictures] [-IncludeVideos] [-IncludeAudio] [-IncludePictures] [-NoBorders] [-Left] [-Right]
 [-Top] [-Bottom] [-Centered] [-FullScreen] [-AlwaysOnTop] [-Random] [-Loop] [-Repeat] [-StartPaused]
 [-PlayAndExit] [-DisableAudio] [-DisableSubtitles] [-AutoScale] [-HighPriority] [-EnableTimeStretch]
 [-NewWindow] [-EnableWallpaperMode] [-EnableAudioTimeStretch] [-Close] [-SideBySide] [-FocusWindow]
 [-SetForeground] [-Maximize] [-RestoreFocus] [-SessionOnly] [-ClearSession] [-SkipSession]
 [-CaseNameMatching <MatchCasing>] [-MaxRecursionDepth <Int32>] [-Exclude <String[]>] [-PassThru]
 [-PassThruNoOpen] [-PassThruWindow] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AllDrives
Search across all available drives

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AlwaysOnTop
Always on top

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Arguments
Additional arguments

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AspectRatio
Source aspect ratio

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AttributesToSkip
File attributes to skip (e.g., System, Hidden or None).

```yaml
Type: FileAttributes
Parameter Sets: (All)
Aliases: skipattr
Accepted values: None, ReadOnly, Hidden, System, Directory, Archive, Device, Normal, Temporary, SparseFile, ReparsePoint, Compressed, Offline, NotContentIndexed, Encrypted, IntegrityStream, NoScrubData

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AudioFilterModules
Audio filter modules

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AudioFilters
Audio filters

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AudioLanguage
Audio language

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Afrikaans, Akan, Albanian, Amharic, Arabic, Armenian, Azerbaijani, Basque, Belarusian, Bemba, Bengali, Bihari, Bork, bork, bork!, Bosnian, Breton, Bulgarian, Cambodian, Catalan, Cherokee, Chichewa, Chinese (Simplified), Chinese (Traditional), Corsican, Croatian, Czech, Danish, Dutch, Elmer Fudd, English, Esperanto, Estonian, Ewe, Faroese, Filipino, Finnish, French, Frisian, Ga, Galician, Georgian, German, Greek, Guarani, Gujarati, Hacker, Haitian Creole, Hausa, Hawaiian, Hebrew, Hindi, Hungarian, Icelandic, Igbo, Indonesian, Interlingua, Irish, Italian, Japanese, Javanese, Kannada, Kazakh, Kinyarwanda, Kirundi, Klingon, Kongo, Korean, Krio (Sierra Leone), Kurdish, Kurdish (Soranî), Kyrgyz, Laothian, Latin, Latvian, Lingala, Lithuanian, Lozi, Luganda, Luo, Macedonian, Malagasy, Malay, Malayalam, Maltese, Maori, Marathi, Mauritian Creole, Moldavian, Mongolian, Montenegrin, Nepali, Nigerian Pidgin, Northern Sotho, Norwegian, Norwegian (Nynorsk), Occitan, Oriya, Oromo, Pashto, Persian, Pirate, Polish, Portuguese (Brazil), Portuguese (Portugal), Punjabi, Quechua, Romanian, Romansh, Runyakitara, Russian, Scots Gaelic, Serbian, Serbo-Croatian, Sesotho, Setswana, Seychellois Creole, Shona, Sindhi, Sinhalese, Slovak, Slovenian, Somali, Spanish, Spanish (Latin American), Sundanese, Swahili, Swedish, Tajik, Tamil, Tatar, Telugu, Thai, Tigrinya, Tonga, Tshiluba, Tumbuka, Turkish, Turkmen, Twi, Uighur, Ukrainian, Urdu, Uzbek, Vietnamese, Welsh, Wolof, Xhosa, Yiddish, Yoruba, Zulu

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AudioVisualization
Audio visualization mode

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: None, Goom, ProjectM, Visual, GLSpectrum

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AutoScale
Video Auto Scaling

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Bottom
Place window on the bottom side of the screen

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CaseNameMatching
Gets or sets the case-sensitivity for files and directories

```yaml
Type: MatchCasing
Parameter Sets: (All)
Aliases: casing, CaseSearchMaskMatching
Accepted values: PlatformDefault, CaseSensitive, CaseInsensitive

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Centered
Place window in the center of the screen

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClearSession
Clear alternative settings stored in session for AI preferences

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Close
Close the VLC media player window

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Crop
Video cropping

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Deinterlace
Deinterlace

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Off, Automatic, On

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeinterlaceMode
Deinterlace mode

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Auto, Discard, Blend, Mean, Bob, Linear, X, Yadif, Yadif2x, Phosphor, IVTC

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisableAudio
Disable audio

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisableSubtitles
Disable subtitles

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnableAudioTimeStretch
Enable audio time stretching

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnableTimeStretch
Enable time stretching audio

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnableWallpaperMode
Enable video wallpaper mode

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Exclude
Exclude files or directories matching these wildcard patterns (e.g., *.tmp, *\\\\bin\\\\*).

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: skiplike

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FocusWindow
Focus the VLC window after opening

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: fw, focus

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FollowSymlinkAndJunctions
Follow symlinks and junctions during directory traversal.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ForceDolbySurround
Force detection of Dolby Surround

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Auto, On, Off

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FullScreen
Sends F11 to the window

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: fs

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Height
The initial height of the window

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HighPriority
Increase the priority of the process

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HttpProxy
HTTP proxy

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HttpProxyPassword
HTTP proxy password

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IgnoredExtensions
Ignored extensions

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IgnoredFileExtensions
Ignored file extensions

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeAlternateFileStreams
Include alternate data streams in search results

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: ads

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeAudio
Additionally include audio files in the playlist

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludePictures
Additionally include pictures in the playlist

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeVideos
Additionally include videos in the playlist

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
File name or pattern to search for from pipeline input.
Default is "*"

```yaml
Type: Object
Parameter Sets: (All)
Aliases: FullName

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: True
```

### -KeysToSend
Keystrokes to send to the VLC Player Window, see documentation for cmdlet GenXdev\Send-Key

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Left
Place window on the left side of the screen

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Loop
Repeat all

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxDegreeOfParallelism
Maximum degree of parallelism for directory tasks

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: threads

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxFileSize
Maximum file size in bytes to include in results.
0 means unlimited.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases: maxlength, maxsize

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxRecursionDepth
Maximum recursion depth for directory traversal.
0 means unlimited.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: md, depth, maxdepth

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxSearchUpDepth
Maximum recursion depth for continuing searching upwards the tree for relative searches, while no items are found.
0 means disabled.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: maxupward

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Maximize
Maximize the window

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinFileSize
Minimum file size in bytes to include in results.
0 means no minimum.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases: minsize, minlength

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ModifiedAfter
Only include files modified after this date/time (UTC).

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases: ma, after

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ModifiedBefore
Only include files modified before this date/time (UTC).

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases: before, mb

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Modules
Modules

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Monitor
The monitor to use, 0 = default, -1 is discard

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: m, mon

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
File name or pattern to search for.
Default is '*'

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: like, Path, LiteralPath, Query, SearchMask, Include

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: True
```

### -NewWindow
Open new VLC mediaplayer instance

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoBorders
Removes the borders of the window

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: nb

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoRecurse
Do not recurse into subdirectories

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OnlyAudio
Only include audio files in the playlist

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OnlyPictures
Only include pictures in the playlist

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OnlyVideos
Only include video files in the playlist

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Returns the files found by the search

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: pt

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThruNoOpen
Returns the files found by the search without opening VLC

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThruWindow
Returns the window helper for each process

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PlayAndExit
Play and exit

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PlaylistPath
Playlist path to save the media files to.
If not specified, the playlist will be saved in a temporary directory.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PreferredAudioLanguage
Preferred audio language

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Afrikaans, Akan, Albanian, Amharic, Arabic, Armenian, Azerbaijani, Basque, Belarusian, Bemba, Bengali, Bihari, Bork, bork, bork!, Bosnian, Breton, Bulgarian, Cambodian, Catalan, Cherokee, Chichewa, Chinese (Simplified), Chinese (Traditional), Corsican, Croatian, Czech, Danish, Dutch, Elmer Fudd, English, Esperanto, Estonian, Ewe, Faroese, Filipino, Finnish, French, Frisian, Ga, Galician, Georgian, German, Greek, Guarani, Gujarati, Hacker, Haitian Creole, Hausa, Hawaiian, Hebrew, Hindi, Hungarian, Icelandic, Igbo, Indonesian, Interlingua, Irish, Italian, Japanese, Javanese, Kannada, Kazakh, Kinyarwanda, Kirundi, Klingon, Kongo, Korean, Krio (Sierra Leone), Kurdish, Kurdish (Soranî), Kyrgyz, Laothian, Latin, Latvian, Lingala, Lithuanian, Lozi, Luganda, Luo, Macedonian, Malagasy, Malay, Malayalam, Maltese, Maori, Marathi, Mauritian Creole, Moldavian, Mongolian, Montenegrin, Nepali, Nigerian Pidgin, Northern Sotho, Norwegian, Norwegian (Nynorsk), Occitan, Oriya, Oromo, Pashto, Persian, Pirate, Polish, Portuguese (Brazil), Portuguese (Portugal), Punjabi, Quechua, Romanian, Romansh, Runyakitara, Russian, Scots Gaelic, Serbian, Serbo-Croatian, Sesotho, Setswana, Seychellois Creole, Shona, Sindhi, Sinhalese, Slovak, Slovenian, Somali, Spanish, Spanish (Latin American), Sundanese, Swahili, Swedish, Tajik, Tamil, Tatar, Telugu, Thai, Tigrinya, Tonga, Tshiluba, Tumbuka, Turkish, Turkmen, Twi, Uighur, Ukrainian, Urdu, Uzbek, Vietnamese, Welsh, Wolof, Xhosa, Yiddish, Yoruba, Zulu

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PreferredSubtitleLanguage
Preferred subtitle language

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Random
Play files randomly forever

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: Shuffle

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Repeat
Repeat current item

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReplayGainMode
Replay gain mode

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: None, Track, Album

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReplayGainPreamp
Replay gain preamp

```yaml
Type: Single
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RestoreFocus
Restores PowerShell window focus after opening VLC.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: rf, bg

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Right
Place window on the right side of the screen

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendKeyDelayMilliSeconds
Delay between different input strings in milliseconds when sending keys to VLC

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: DelayMilliSeconds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendKeyEscape
Escape control characters and modifiers when sending keys to VLC

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: Escape

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendKeyHoldKeyboardFocus
Hold keyboard focus on the VLC window after sending keys

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: HoldKeyboardFocus

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendKeyUseShiftEnter
Use Shift+Enter instead of Enter when sending keys to VLC

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: UseShiftEnter

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SessionOnly
Use alternative settings stored in session for AI preferences

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SetForeground
Set the VLC window to foreground after opening

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: fg

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SideBySide
Will either set the window fullscreen on a different monitor than Powershell, or side by side with Powershell on the same monitor

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: sbs

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipSession
Store settings only in persistent preferences without affecting session

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: FromPreferences

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartPaused
Start paused

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubdirectoryBehavior
Subdirectory behavior

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: None, Collapse, Expand

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubtitleFile
Use subtitle file

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubtitleLanguage
Subtitle language

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Afrikaans, Akan, Albanian, Amharic, Arabic, Armenian, Azerbaijani, Basque, Belarusian, Bemba, Bengali, Bihari, Bork, bork, bork!, Bosnian, Breton, Bulgarian, Cambodian, Catalan, Cherokee, Chichewa, Chinese (Simplified), Chinese (Traditional), Corsican, Croatian, Czech, Danish, Dutch, Elmer Fudd, English, Esperanto, Estonian, Ewe, Faroese, Filipino, Finnish, French, Frisian, Ga, Galician, Georgian, German, Greek, Guarani, Gujarati, Hacker, Haitian Creole, Hausa, Hawaiian, Hebrew, Hindi, Hungarian, Icelandic, Igbo, Indonesian, Interlingua, Irish, Italian, Japanese, Javanese, Kannada, Kazakh, Kinyarwanda, Kirundi, Klingon, Kongo, Korean, Krio (Sierra Leone), Kurdish, Kurdish (Soranî), Kyrgyz, Laothian, Latin, Latvian, Lingala, Lithuanian, Lozi, Luganda, Luo, Macedonian, Malagasy, Malay, Malayalam, Maltese, Maori, Marathi, Mauritian Creole, Moldavian, Mongolian, Montenegrin, Nepali, Nigerian Pidgin, Northern Sotho, Norwegian, Norwegian (Nynorsk), Occitan, Oriya, Oromo, Pashto, Persian, Pirate, Polish, Portuguese (Brazil), Portuguese (Portugal), Punjabi, Quechua, Romanian, Romansh, Runyakitara, Russian, Scots Gaelic, Serbian, Serbo-Croatian, Sesotho, Setswana, Seychellois Creole, Shona, Sindhi, Sinhalese, Slovak, Slovenian, Somali, Spanish, Spanish (Latin American), Sundanese, Swahili, Swedish, Tajik, Tamil, Tatar, Telugu, Thai, Tigrinya, Tonga, Tshiluba, Tumbuka, Turkish, Turkmen, Twi, Uighur, Ukrainian, Urdu, Uzbek, Vietnamese, Welsh, Wolof, Xhosa, Yiddish, Yoruba, Zulu

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubtitleScale
Subtitles text scaling factor

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeoutSeconds
Optional: cancellation timeout in seconds

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: maxseconds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Top
Place window on the top side of the screen

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VLCPath
Path to VLC executable

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VerbosityLevel
Verbosity level

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VideoFilterModules
Video filter modules

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VideoFilters
Video filter module

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Visualization
Audio visualizations

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: None, Goom, ProjectM, Visual, GLSpectrum

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Width
The initial width of the window

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -X
The initial X position of the window

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Y
The initial Y position of the window

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Object

### System.String[]

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
