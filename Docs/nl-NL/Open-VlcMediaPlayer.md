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
| `-Path` | String[] | — | — | 0 | — | De mediabestanden of URL('s) om te openen in VLC |
| `-Width` | Int32 | — | — | 1 | `-1` | De initiële breedte van het venster |
| `-Height` | Int32 | — | — | 2 | `-1` | De initiële hoogte van het venster |
| `-X` | Int32 | — | — | 3 | `-999999` | De initiële X-positie van het venster |
| `-Y` | Int32 | — | — | 4 | `-999999` | De initiële Y-positie van het venster |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | `@()` | Toetsaanslagen om naar het VLC Player-venster te sturen, zie documentatie voor cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys to VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruik Shift+Enter in plaats van Enter bij het verzenden van toetsen naar VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `50` | Vertraging tussen verschillende invoerstrings in milliseconden bij het verzenden van toetsen naar VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | VLC-venster toetsenbordfocus behouden na verzenden toetsen |
| `-Monitor` | Int32 | — | — | Named | `-1` | De te gebruiken monitor, 0 = standaard, -1 is negeren |
| `-AspectRatio` | String | — | — | Named | — | Bronbeeldverhouding |
| `-Crop` | String | — | — | Named | — | Video bijsnijden |
| `-SubtitleFile` | String | — | — | Named | — | Gebruik ondertitelbestand |
| `-SubtitleScale` | Int32 | — | — | Named | — | Ondertiteling tekstschaalfactor |
| `-SubtitleLanguage` | String | — | — | Named | — | Taal van ondertitels |
| `-AudioLanguage` | String | — | — | Named | — | Audiotalen |
| `-PreferredAudioLanguage` | String | — | — | Named | — | Voorkeurstaal voor audio |
| `-HttpProxy` | String | — | — | Named | — | HTTP-proxy |
| `-HttpProxyPassword` | String | — | — | Named | — | HTTP proxy wachtwoord |
| `-VerbosityLevel` | Int32 | — | — | Named | — | Detailsniveau |
| `-SubdirectoryBehavior` | String | — | — | Named | — | Gedrag van submap |
| `-IgnoredExtensions` | String | — | — | Named | — | Genegeerde extensies |
| `-VLCPath` | String | — | — | Named | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` | Pad naar VLC uitvoerbaar bestand |
| `-ReplayGainMode` | String | — | — | Named | — | Replay gain-modus |
| `-ReplayGainPreamp` | Single | — | — | Named | — | Replay gain preamp |
| `-ForceDolbySurround` | String | — | — | Named | — | Forceer detectie van Dolby Surround |
| `-AudioFilters` | String[] | — | — | Named | — | Audifilters |
| `-Visualization` | String | — | — | Named | — | Audiovisualisaties |
| `-Deinterlace` | String | — | — | Named | — | De-interliniëren |
| `-DeinterlaceMode` | String | — | — | Named | — | Deinterlace-modus |
| `-VideoFilters` | String[] | — | — | Named | — | Videofiltermodule |
| `-VideoFilterModules` | String[] | — | — | Named | — | Videofiltermodules |
| `-Modules` | String[] | — | — | Named | — | Modules |
| `-AudioFilterModules` | String[] | — | — | Named | — | Audiomodules voor filters |
| `-AudioVisualization` | String | — | — | Named | — | Audiovisualisatiemodus |
| `-PreferredSubtitleLanguage` | String | — | — | Named | — | Voorkeurstaal voor ondertiteling |
| `-IgnoredFileExtensions` | String | — | — | Named | — | Genegeerde bestandsextensies |
| `-Arguments` | String | — | — | Named | — | Extra argumenten |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert de randen van het venster |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats het venster aan de linkerkant van het scherm |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats het venster aan de rechterkant van het scherm |
| `-Top` | SwitchParameter | — | — | Named | — | Plaats venster aan de bovenkant van het scherm |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Plaats het venster in het midden van het scherm |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Stuurt F11 naar het venster |
| `-PassThru` | SwitchParameter | — | — | Named | — | Geeft de vensterhelper voor elk proces terug |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | Altijd bovenaan |
| `-Random` | SwitchParameter | — | — | Named | — | Speel bestanden willekeurig af voor altijd |
| `-Loop` | SwitchParameter | — | — | Named | — | Repeat all |
| `-Repeat` | SwitchParameter | — | — | Named | — | Herhaal huidig item |
| `-StartPaused` | SwitchParameter | — | — | Named | — | Start gepauzeerd |
| `-PlayAndExit` | SwitchParameter | — | — | Named | — | Spelen en afsluiten |
| `-DisableAudio` | SwitchParameter | — | — | Named | — | Audio uitschakelen |
| `-DisableSubtitles` | SwitchParameter | — | — | Named | — | Ondertiteling uitschakelen |
| `-AutoScale` | SwitchParameter | — | — | Named | — | Video automatisch schalen |
| `-HighPriority` | SwitchParameter | — | — | Named | — | Verhoog de prioriteit van het proces |
| `-EnableTimeStretch` | SwitchParameter | — | — | Named | — | Tijdrekken audio inschakelen |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Open nieuwe VLC mediaplayer instantie |
| `-EnableWallpaperMode` | SwitchParameter | — | — | Named | — | Videowallpaper-modus inschakelen |
| `-EnableAudioTimeStretch` | SwitchParameter | — | — | Named | — | Audiotijdsrekking inschakelen |
| `-Close` | SwitchParameter | — | — | Named | — | Close the VLC media player window |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Zet het venster volledig scherm op een ander scherm dan Powershell, of naast Powershell op hetzelfde scherm |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the VLC window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Zet het VLC-venster op de voorgrond na het openen |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximaliseer het venster |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Herstel PowerShell-vensterfocus na het openen van VLC |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |

## Related Links

- [Open-VlcMediaPlayer on GitHub](https://github.com/genXdev/genXdev)
