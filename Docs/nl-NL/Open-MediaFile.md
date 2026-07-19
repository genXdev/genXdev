# Open-MediaFile

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `vlcmedia, `media, `findmedia

## Synopsis

> Opent en speelt mediabestanden af met VLC media player met geavanceerde filter- en configuratieopties.

## Description

Deze functie scant naar mediabestanden op basis van zoekpatronen, maakt een afspeellijst en start de VLC-mediaspeler met uitgebreide configuratieopties. Het ondersteunt video's, audiobestanden en afbeeldingen met automatische installatie van VLC indien nodig. De functie biedt uitgebreide controle over het afspeelgedrag, de vensterpositionering, audio-/video-instellingen en ondertitelingsbeheer.

## Syntax

```powershell
Open-MediaFile [[-Name] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AllDrives] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AttributesToSkip <IO.FileAttributes>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-CaseNameMatching <IO.MatchCasing>] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-Exclude <String[]>] [-FocusWindow] [-FollowSymlinkAndJunctions] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-IncludeAlternateFileStreams] [-IncludeAudio] [-IncludePictures] [-IncludeVideos] [-InputObject <Object>] [-KeysToSend <String[]>] [-Left] [-Loop] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoRecurse] [-OnlyAudio] [-OnlyPictures] [-OnlyVideos] [-PassThru] [-PassThruNoOpen] [-PassThruWindow] [-PlayAndExit] [-PlaylistPath <String>] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-TimeoutSeconds <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | `'*'` | [NL] Bestandsnaam of patroon om naar te zoeken. Standaard is '*'. 🌐 *Supports wildcards* |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Doorzoek alle beschikbare schijven |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Niet recursief in subdirectories |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Volg symlinks en junctions tijdens het doorlopen van mappen. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Maximale recursiediepte voor het verder omhoog zoeken in de boom voor relatieve zoekopdrachten, terwijl er geen items worden gevonden. 0 betekent uitgeschakeld. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximale bestandsgrootte in bytes om op te nemen in de resultaten. 0 betekent onbeperkt. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Minimale bestandsgrootte in bytes om op te nemen in resultaten. 0 betekent geen minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Alleen bestanden opnemen die na deze datum/tijd (UTC) zijn gewijzigd. |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Alleen bestanden opnemen die zijn gewijzigd vóór deze datum/tijd (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Te overslaan bestandskenmerken (bijv. Systeem, Verborgen of Geen). |
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Bestandsnaam of patroon om te zoeken in pijplijninvoer. Standaard is "*" 🌐 *Supports wildcards* |
| `-PlaylistPath` | String | — | — | Named | `[System.IO.Path]::GetTempFileName() + '.m3u'` | Pad naar de afspeellijst om de mediabestanden op te slaan. Indien niet gespecificeerd, wordt de afspeellijst opgeslagen in een tijdelijke map. |
| `-Width` | Int32 | — | — | 1 | `-1` | De initiële breedte van het venster |
| `-Height` | Int32 | — | — | 2 | `-1` | De initiële hoogte van het venster |
| `-X` | Int32 | — | — | 3 | `-999999` | De initiële X-positie van het venster |
| `-Y` | Int32 | — | — | 4 | `-999999` | De initiële Y-positie van het venster |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | — | Toetsaanslagen om naar het VLC Player-venster te sturen, zie documentatie voor cmdlet GenXdev\Send-Key |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maximale mate van parallellisme voor directory-taken |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Optioneel: time-out voor annulering in seconden |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys to VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruik Shift+Enter in plaats van Enter bij het verzenden van toetsen naar VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen verschillende invoerstrings in milliseconden bij het verzenden van toetsen naar VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | VLC-venster toetsenbordfocus behouden na verzenden toetsen |
| `-Monitor` | Int32 | — | — | Named | `-2` | De te gebruiken monitor, 0 = standaard, -1 is negeren |
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
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Alternatieve gegevensstromen opnemen in zoekresultaten |
| `-OnlyVideos` | SwitchParameter | — | — | Named | — | Only include video files in the playlist |
| `-OnlyAudio` | SwitchParameter | — | — | Named | — | Only include audio files in the playlist |
| `-OnlyPictures` | SwitchParameter | — | — | Named | — | Voeg alleen afbeeldingen toe aan de afspeellijst |
| `-IncludeVideos` | SwitchParameter | — | — | Named | — | Voeg ook video's toe aan de afspeellijst |
| `-IncludeAudio` | SwitchParameter | — | — | Named | — | Voeg ook audiobestanden toe aan de afspeellijst |
| `-IncludePictures` | SwitchParameter | — | — | Named | — | Voeg ook afbeeldingen toe aan de afspeellijst |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert de randen van het venster |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats het venster aan de linkerkant van het scherm |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats het venster aan de rechterkant van het scherm |
| `-Top` | SwitchParameter | — | — | Named | — | Plaats venster aan de bovenkant van het scherm |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Plaats het venster in het midden van het scherm |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Stuurt F11 naar het venster |
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
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Herstelt de focus van het PowerShell-venster na het openen van VLC. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Haalt de hoofdlettergevoeligheid voor bestanden en mappen op of stelt deze in |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximale recursiediepte voor directorytraversal. 0 betekent onbeperkt. |
| `-Exclude` | String[] | — | — | Named | `@('*\\.git\\*')` | Sluit bestanden of mappen uit die overeenkomen met deze jokerpatronen (bijv. *.tmp, *\bin\*). |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourneert de bestanden die door de zoekopdracht zijn gevonden |
| `-PassThruNoOpen` | SwitchParameter | — | — | Named | — | Geeft de bestanden terug die gevonden zijn door de zoekopdracht zonder VLC te openen |
| `-PassThruWindow` | SwitchParameter | — | — | Named | — | Geeft de vensterhelper voor elk proces terug |

## Examples

### Open-MediaFile

```powershell
Open-MediaFile
```

Opent alle mediabestanden in de huidige map met de standaard VLC-instellingen.

### vlcmedia ~\Pictures -OnlyPictures -Fullscreen

```powershell
vlcmedia ~\Pictures -OnlyPictures -Fullscreen
```

Opent alleen afbeeldingsbestanden uit de map Afbeeldingen in volledige schermmodus met behulp van de alias 'vlcmedia'.

### media ~\Videos -OnlyVideos -Loop

```powershell
media ~\Videos -OnlyVideos -Loop
```

Opent videobestanden met herhaling ingeschakeld met behulp van het alias 'media'.

## Related Links

- [Open-MediaFile on GitHub](https://github.com/genXdev/genXdev)
