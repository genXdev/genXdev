---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Open-VlcMediaPlayer

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

```
Open-VlcMediaPlayer [[-Path] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>]
 [-KeysToSend <String[]>] [-SendKeyEscape] [-SendKeyUseShiftEnter] [-SendKeyDelayMilliSeconds <Int32>]
 [-SendKeyHoldKeyboardFocus] [-Monitor <Int32>] [-AspectRatio <String>] [-Crop <String>]
 [-SubtitleFile <String>] [-SubtitleScale <Int32>] [-SubtitleLanguage <String>] [-AudioLanguage <String>]
 [-PreferredAudioLanguage <String>] [-HttpProxy <String>] [-HttpProxyPassword <String>]
 [-VerbosityLevel <Int32>] [-SubdirectoryBehavior <String>] [-IgnoredExtensions <String>] [-VLCPath <String>]
 [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-ForceDolbySurround <String>]
 [-AudioFilters <String[]>] [-Visualization <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>]
 [-VideoFilters <String[]>] [-VideoFilterModules <String[]>] [-Modules <String[]>]
 [-AudioFilterModules <String[]>] [-AudioVisualization <String>] [-PreferredSubtitleLanguage <String>]
 [-IgnoredFileExtensions <String>] [-Arguments <String>] [-NoBorders] [-Left] [-Right] [-Top] [-Bottom]
 [-Centered] [-FullScreen] [-PassThru] [-AlwaysOnTop] [-Random] [-Loop] [-Repeat] [-StartPaused] [-PlayAndExit]
 [-DisableAudio] [-DisableSubtitles] [-AutoScale] [-HighPriority] [-EnableTimeStretch] [-NewWindow]
 [-EnableWallpaperMode] [-EnableAudioTimeStretch] [-Close] [-SideBySide] [-FocusWindow] [-SetForeground]
 [-Maximize] [-RestoreFocus] [-SessionOnly] [-ClearSession] [-SkipSession] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
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

### -PassThru
Returns the window helper for each process

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

### -Path
The media file(s) or URL(s) to open in VLC

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
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
Restore PowerShell window focus after opening VLC

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

### System.String[]

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
