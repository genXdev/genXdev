# Open-MediaFile

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlcmedia`, `media`, `findmedia`

## Synopsis

> Opent en speelt mediabestanden af met VLC mediaspeler met geavanceerde filter- en configuratieopties.

## Description

Deze functie scant naar media bestanden op basis van zoekpatronen, maakt een afspeellijst en start VLC media player met uitgebreide configuratieopties. Het ondersteunt video's, audiobestanden en afbeeldingen met automatische installatie van VLC indien nodig. De functie biedt uitgebreide controle over afspeelgedrag, vensterpositionering, audio/video-instellingen en ondertitelbehandeling.

## Syntax

```powershell
Open-MediaFile [[-Name] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AllDrives] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AttributesToSkip <IO.FileAttributes>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-CaseNameMatching <IO.MatchCasing>] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-Exclude <String[]>] [-FocusWindow] [-FollowSymlinkAndJunctions] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-IncludeAlternateFileStreams] [-IncludeAudio] [-IncludePictures] [-IncludeVideos] [-InputObject <Object>] [-KeysToSend <String[]>] [-Left] [-Loop] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoRecurse] [-OnlyAudio] [-OnlyPictures] [-OnlyVideos] [-PassThru] [-PassThruNoOpen] [-PassThruWindow] [-PlayAndExit] [-PlaylistPath <String>] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-TimeoutSeconds <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | `'*'` | Bestandsnaam of patroon om naar te zoeken. Standaard is '*' 🌐 *Supports wildcards* |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Doorzoek alle beschikbare stations |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Niet recursief in subdirectories gaan |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Symlinks en junctions volgen tijdens het doorlopen van mappen. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Maximale recursiediepte voor het verder omhoog zoeken in de boom voor relatieve zoekopdrachten, terwijl geen items worden gevonden. 0 betekent uitgeschakeld. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximale bestandsgrootte in bytes die in resultaten wordt opgenomen. 0 betekent onbeperkt. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Minimale bestandsgrootte in bytes om in resultaten op te nemen. 0 betekent geen minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Alleen bestanden opnemen die na deze datum/tijd (UTC) zijn gewijzigd. |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Alleen bestanden opnemen die zijn gewijzigd vóór deze datum/tijd (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Bestandskenmerken om over te slaan (bijv. Systeem, Verborgen of Geen). |
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Bestandsnaam of patroon om naar te zoeken vanuit pijplijninvoer. Standaard is "*" 🌐 *Supports wildcards* |
| `-PlaylistPath` | String | — | — | Named | `[System.IO.Path]::GetTempFileName() + '.m3u'` | Pdf van de afspeellijst om de mediabestanden op te slaan. Indien niet opgegeven, wordt de afspeellijst opgeslagen in een tijdelijke map. |
| `-Width` | Int32 | — | — | 1 | `-1` | De initiële breedte van het venster |
| `-Height` | Int32 | — | — | 2 | `-1` | De initiële hoogte van het venster |
| `-X` | Int32 | — | — | 3 | `-999999` | De initiële X-positie van het venster |
| `-Y` | Int32 | — | — | 4 | `-999999` | De initiële Y-positie van het venster |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | — | Toetsaanslagen die naar het VLC Player-venster moeten worden verzonden, zie documentatie voor cmdlet GenXdev\Send-Key |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maximale mate van parallellisme voor maptaken |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Optioneel: time-out in seconden voor annulering |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape-besturingstekens en modifiers bij het verzenden van toetsen naar VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruik Shift+Enter in plaats van Enter bij het verzenden van toetsaanslagen naar VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen verschillende invoerstrings in milliseconden bij het verzenden van toetsen naar VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Houd de toetsenbordfocus op het VLC-venster nadat toetsen zijn verzonden |
| `-Monitor` | Int32 | — | — | Named | `-2` | De monitor om te gebruiken, 0 = standaard, -1 is negeren |
| `-AspectRatio` | String | — | — | Named | — | Aspectratio van de bron |
| `-Crop` | String | — | — | Named | — | Video bijsnijden |
| `-SubtitleFile` | String | — | — | Named | — | Gebruik ondertitelbestand |
| `-SubtitleScale` | Int32 | — | — | Named | — | Schaalfactor voor ondertitelingstekst |
| `-SubtitleLanguage` | String | — | — | Named | — | Taal van ondertitels |
| `-AudioLanguage` | String | — | — | Named | — | Audiotalen |
| `-PreferredAudioLanguage` | String | — | — | Named | — | Voorkeurstaal voor audio |
| `-HttpProxy` | String | — | — | Named | — | HTTP-proxy |
| `-HttpProxyPassword` | String | — | — | Named | — | HTTP-proxywachtwoord |
| `-VerbosityLevel` | Int32 | — | — | Named | — | Uitgebreidheidsniveau |
| `-SubdirectoryBehavior` | String | — | — | Named | — | Gedrag van submap |
| `-IgnoredExtensions` | String | — | — | Named | — | Genegeerde extensies |
| `-VLCPath` | String | — | — | Named | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` | Pad naar VLC-uitvoerbaar bestand |
| `-ReplayGainMode` | String | — | — | Named | — | Replay gain modus |
| `-ReplayGainPreamp` | Single | — | — | Named | — | Voorversterking van afspeelversterking |
| `-ForceDolbySurround` | String | — | — | Named | — | Dwing detectie van Dolby Surround af |
| `-AudioFilters` | String[] | — | — | Named | — | @{response=Audiofilters} |
| `-Visualization` | String | — | — | Named | — | Audiovisualisaties |
| `-Deinterlace` | String | — | — | Named | — | Deïnterlineren |
| `-DeinterlaceMode` | String | — | — | Named | — | Deinterlace-modus |
| `-VideoFilters` | String[] | — | — | Named | — | Videofiltermodule |
| `-VideoFilterModules` | String[] | — | — | Named | — | Videofiltermodules |
| `-Modules` | String[] | — | — | Named | — | @{response=Modules} |
| `-AudioFilterModules` | String[] | — | — | Named | — | Audiofilters modules |
| `-AudioVisualization` | String | — | — | Named | — | Audiovisualisatiemodus |
| `-PreferredSubtitleLanguage` | String | — | — | Named | — | Voorkeurstaal voor ondertiteling |
| `-IgnoredFileExtensions` | String | — | — | Named | — | Genegeerde bestandsextensies |
| `-Arguments` | String | — | — | Named | — | Extra argumenten |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Alternatieve gegevensstromen opnemen in zoekresultaten |
| `-OnlyVideos` | SwitchParameter | — | — | Named | — | Neem alleen videobestanden op in de afspeellijst |
| `-OnlyAudio` | SwitchParameter | — | — | Named | — | Voeg alleen audiobestanden toe aan de afspeellijst |
| `-OnlyPictures` | SwitchParameter | — | — | Named | — | Voeg alleen afbeeldingen toe aan de afspeellijst |
| `-IncludeVideos` | SwitchParameter | — | — | Named | — | Voeg daarnaast video's toe aan de afspeellijst |
| `-IncludeAudio` | SwitchParameter | — | — | Named | — | Voeg daarnaast audiobestanden toe aan de afspeellijst |
| `-IncludePictures` | SwitchParameter | — | — | Named | — | Voeg ook afbeeldingen toe aan de afspeellijst |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert de randen van het venster |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats venster aan de linkerkant van het scherm |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats venster aan de rechterkant van het scherm |
| `-Top` | SwitchParameter | — | — | Named | — | Venster aan de bovenkant van het scherm plaatsen |
| `-Bottom` | SwitchParameter | — | — | Named | — | Venster aan de onderkant van het scherm plaatsen |
| `-Centered` | SwitchParameter | — | — | Named | — | Plaats het venster in het midden van het scherm |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Stuurt F11 naar het venster |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | Altijd op de voorgrond |
| `-Random` | SwitchParameter | — | — | Named | — | Speel bestanden willekeurig af voor onbepaalde tijd |
| `-Loop` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    Voegt een nieuwe gebruiker toe aan de lokale gebruikersdatabase.

SYNTAX
    New-LocalUser [-Name] <String> [-Description <String>] [-Password <SecureString>] [-PasswordNeverExpires] [-UserMayNotChangePassword] [-AccountExpires <DateTime>] [-Disabled] [-FullName <String>] [-WhatIf] [-Confirm] [<CommonParameters>]

DESCRIPTION
    De cmdlet New-LocalUser voegt een nieuwe gebruiker toe aan de lokale gebruikersdatabase.

PARAMETERS
    -Name <String>
        Hiermee wordt de gebruikersnaam opgegeven.

    -Description <String>
        Hiermee wordt een beschrijving voor het gebruikersaccount opgegeven.

    -Password <SecureString>
        Hiermee wordt het wachtwoord voor het gebruikersaccount opgegeven.

    -PasswordNeverExpires
        Hiermee wordt aangegeven dat het wachtwoord nooit verloopt.

    -UserMayNotChangePassword
        Hiermee wordt aangegeven dat de gebruiker het wachtwoord niet kan wijzigen.

    -AccountExpires <DateTime>
        Hiermee wordt de vervaldatum van het gebruikersaccount opgegeven.

    -Disabled
        Hiermee wordt aangegeven dat het gebruikersaccount is uitgeschakeld.

    -FullName <String>
        Hiermee wordt de volledige naam voor het gebruikersaccount opgegeven.

    -WhatIf [<SwitchParameter>]
        Hiermee wordt weergegeven wat er zou gebeuren als de cmdlet wordt uitgevoerd.
        De cmdlet wordt niet uitgevoerd.

    -Confirm [<SwitchParameter>]
        Vraagt om bevestiging voordat de cmdlet wordt uitgevoerd.

    <CommonParameters>
        Deze cmdlet ondersteunt de algemene parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable en OutVariable. Zie about_CommonParameters.

INPUTS
    System.String
        U kunt een tekenreeks naar deze cmdlet doorgeven.

OUTPUTS
    Microsoft.PowerShell.Commands.LocalUser
        Deze cmdlet retourneert een LocalUser-object.

OPMERKINGEN
    * Een gebruiker met beheerdersrechten is vereist om de cmdlet New-LocalUser uit te voeren.
    * De cmdlet kan worden gebruikt in een Windows PowerShell-sessie met verhoogde rechten.

VOORBEELDEN
    Voorbeeld 1: Een gebruiker maken
        New-LocalUser -Name 'User01'

    Voorbeeld 2: Een gebruiker maken met een wachtwoord
        $Password = Read-Host -AsSecureString
        New-LocalUser -Name 'User02' -Password $Password -FullName 'User02' -Description 'Beschrijving van gebruiker.'

VERWANTE KOPPELINGEN
    about_Local_Users
    Disable-LocalUser
    Enable-LocalUser
    Get-LocalUser
    Remove-LocalUser
    Rename-LocalUser
    Set-LocalUser |
| `-Repeat` | SwitchParameter | — | — | Named | — | Huidig item herhalen |
| `-StartPaused` | SwitchParameter | — | — | Named | — | Gestart in onderbroken modus |
| `-PlayAndExit` | SwitchParameter | — | — | Named | — | Afspelen en afsluiten |
| `-DisableAudio` | SwitchParameter | — | — | Named | — | Audio uitschakelen |
| `-DisableSubtitles` | SwitchParameter | — | — | Named | — | Ondertiteling uitschakelen |
| `-AutoScale` | SwitchParameter | — | — | Named | — | Video Automatisch Schalen |
| `-HighPriority` | SwitchParameter | — | — | Named | — | Verhoog de prioriteit van het proces |
| `-EnableTimeStretch` | SwitchParameter | — | — | Named | — | Audio-tijdrekken inschakelen |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Open een nieuw VLC-mediaspeler exemplaar |
| `-EnableWallpaperMode` | SwitchParameter | — | — | Named | — | Videowallpapermodus inschakelen |
| `-EnableAudioTimeStretch` | SwitchParameter | — | — | Named | — | Audio-tijdrekken inschakelen |
| `-Close` | SwitchParameter | — | — | Named | — | Sluit het VLC-mediaspeler venster |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Zet het venster op volledig scherm op een andere monitor dan PowerShell, of naast elkaar met PowerShell op dezelfde monitor. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus het VLC-venster na het openen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Zet het VLC-venster op de voorgrond na het openen |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximaliseer het venster |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Herstelt de focus van het PowerShell-venster na het openen van VLC. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen opslaan in permanente voorkeuren zonder de sessie te beïnvloeden |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Hiermee wordt de hoofdlettergevoeligheid voor bestanden en mappen ingesteld of opgehaald |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximale recursiediepte voor directorytraversatie. 0 betekent onbeperkt. |
| `-Exclude` | String[] | — | — | Named | `@('*\\.git\\*')` | Sluit bestanden of mappen uit die overeenkomen met deze jokerpatronen (bijv. *.tmp, *\bin\*). |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourneert de bestanden die door de zoekopdracht zijn gevonden |
| `-PassThruNoOpen` | SwitchParameter | — | — | Named | — | Geeft de door de zoekopdracht gevonden bestanden terug zonder VLC te openen |
| `-PassThruWindow` | SwitchParameter | — | — | Named | — | Retourneert de vensterhelper voor elk proces |

## Examples

### Open-MediaFile

```powershell
Open-MediaFile
```

Opent alle mediabestanden in de huidige map met standaard VLC-instellingen.

### vlcmedia ~\Pictures -OnlyPictures -Fullscreen

```powershell
vlcmedia ~\Pictures -OnlyPictures -Fullscreen
```

Opent alleen afbeeldingsbestanden uit de map Afbeeldingen in volledig scherm met behulp van de alias 'vlcmedia'.

### media ~\Videos -OnlyVideos -Loop

```powershell
media ~\Videos -OnlyVideos -Loop
```

Opent videobestanden met herhaling ingeschakeld met behulp van het alias 'media'.

## Parameter Details

### `-Name <String[]>`

> Bestandsnaam of patroon om naar te zoeken. Standaard is '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'*'` |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-AllDrives`

> Doorzoek alle beschikbare stations

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> Niet recursief in subdirectories gaan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> Symlinks en junctions volgen tijdens het doorlopen van mappen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSearchUpDepth <Int32>`

> Maximale recursiediepte voor het verder omhoog zoeken in de boom voor relatieve zoekopdrachten, terwijl geen items worden gevonden. 0 betekent uitgeschakeld.

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

> Maximale bestandsgrootte in bytes die in resultaten wordt opgenomen. 0 betekent onbeperkt.

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

> Minimale bestandsgrootte in bytes om in resultaten op te nemen. 0 betekent geen minimum.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `minsize`, `minlength` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedAfter <DateTime>`

> Alleen bestanden opnemen die na deze datum/tijd (UTC) zijn gewijzigd.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ma`, `after` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedBefore <DateTime>`

> Alleen bestanden opnemen die zijn gewijzigd vóór deze datum/tijd (UTC).

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

> Bestandskenmerken om over te slaan (bijv. Systeem, Verborgen of Geen).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.FileAttributes]::System` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-InputObject <Object>`

> Bestandsnaam of patroon om naar te zoeken vanuit pijplijninvoer. Standaard is "*"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PlaylistPath <String>`

> Pdf van de afspeellijst om de mediabestanden op te slaan. Indien niet opgegeven, wordt de afspeellijst opgeslagen in een tijdelijke map.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.Path]::GetTempFileName() + '.m3u'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> De initiële breedte van het venster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> De initiële hoogte van het venster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> De initiële X-positie van het venster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> De initiële Y-positie van het venster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Toetsaanslagen die naar het VLC Player-venster moeten worden verzonden, zie documentatie voor cmdlet GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDegreeOfParallelism <Int32>`

> Maximale mate van parallellisme voor maptaken

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `threads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> Optioneel: time-out in seconden voor annulering

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `maxseconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Escape-besturingstekens en modifiers bij het verzenden van toetsen naar VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Gebruik Shift+Enter in plaats van Enter bij het verzenden van toetsaanslagen naar VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Vertraging tussen verschillende invoerstrings in milliseconden bij het verzenden van toetsen naar VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Houd de toetsenbordfocus op het VLC-venster nadat toetsen zijn verzonden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> De monitor om te gebruiken, 0 = standaard, -1 is negeren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AspectRatio <String>`

> Aspectratio van de bron

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Crop <String>`

> Video bijsnijden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleFile <String>`

> Gebruik ondertitelbestand

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleScale <Int32>`

> Schaalfactor voor ondertitelingstekst

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleLanguage <String>`

> Taal van ondertitels

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioLanguage <String>`

> Audiotalen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferredAudioLanguage <String>`

> Voorkeurstaal voor audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HttpProxy <String>`

> HTTP-proxy

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HttpProxyPassword <String>`

> HTTP-proxywachtwoord

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VerbosityLevel <Int32>`

> Uitgebreidheidsniveau

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubdirectoryBehavior <String>`

> Gedrag van submap

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoredExtensions <String>`

> Genegeerde extensies

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VLCPath <String>`

> Pad naar VLC-uitvoerbaar bestand

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplayGainMode <String>`

> Replay gain modus

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplayGainPreamp <Single>`

> Voorversterking van afspeelversterking

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceDolbySurround <String>`

> Dwing detectie van Dolby Surround af

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioFilters <String[]>`

> @{response=Audiofilters}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Visualization <String>`

> Audiovisualisaties

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Deinterlace <String>`

> Deïnterlineren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DeinterlaceMode <String>`

> Deinterlace-modus

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VideoFilters <String[]>`

> Videofiltermodule

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VideoFilterModules <String[]>`

> Videofiltermodules

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Modules <String[]>`

> @{response=Modules}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioFilterModules <String[]>`

> Audiofilters modules

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioVisualization <String>`

> Audiovisualisatiemodus

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferredSubtitleLanguage <String>`

> Voorkeurstaal voor ondertiteling

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoredFileExtensions <String>`

> Genegeerde bestandsextensies

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Arguments <String>`

> Extra argumenten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> Alternatieve gegevensstromen opnemen in zoekresultaten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyVideos`

> Neem alleen videobestanden op in de afspeellijst

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyAudio`

> Voeg alleen audiobestanden toe aan de afspeellijst

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPictures`

> Voeg alleen afbeeldingen toe aan de afspeellijst

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeVideos`

> Voeg daarnaast video's toe aan de afspeellijst

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAudio`

> Voeg daarnaast audiobestanden toe aan de afspeellijst

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludePictures`

> Voeg ook afbeeldingen toe aan de afspeellijst

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Verwijdert de randen van het venster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> Plaats venster aan de linkerkant van het scherm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> Plaats venster aan de rechterkant van het scherm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Top`

> Venster aan de bovenkant van het scherm plaatsen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> Venster aan de onderkant van het scherm plaatsen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Plaats het venster in het midden van het scherm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> Stuurt F11 naar het venster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AlwaysOnTop`

> Altijd op de voorgrond

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Random`

> Speel bestanden willekeurig af voor onbepaalde tijd

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Shuffle` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Loop`

> .SYNOPSIS
    Voegt een nieuwe gebruiker toe aan de lokale gebruikersdatabase.

SYNTAX
    New-LocalUser [-Name] <String> [-Description <String>] [-Password <SecureString>] [-PasswordNeverExpires] [-UserMayNotChangePassword] [-AccountExpires <DateTime>] [-Disabled] [-FullName <String>] [-WhatIf] [-Confirm] [<CommonParameters>]

DESCRIPTION
    De cmdlet New-LocalUser voegt een nieuwe gebruiker toe aan de lokale gebruikersdatabase.

PARAMETERS
    -Name <String>
        Hiermee wordt de gebruikersnaam opgegeven.

    -Description <String>
        Hiermee wordt een beschrijving voor het gebruikersaccount opgegeven.

    -Password <SecureString>
        Hiermee wordt het wachtwoord voor het gebruikersaccount opgegeven.

    -PasswordNeverExpires
        Hiermee wordt aangegeven dat het wachtwoord nooit verloopt.

    -UserMayNotChangePassword
        Hiermee wordt aangegeven dat de gebruiker het wachtwoord niet kan wijzigen.

    -AccountExpires <DateTime>
        Hiermee wordt de vervaldatum van het gebruikersaccount opgegeven.

    -Disabled
        Hiermee wordt aangegeven dat het gebruikersaccount is uitgeschakeld.

    -FullName <String>
        Hiermee wordt de volledige naam voor het gebruikersaccount opgegeven.

    -WhatIf [<SwitchParameter>]
        Hiermee wordt weergegeven wat er zou gebeuren als de cmdlet wordt uitgevoerd.
        De cmdlet wordt niet uitgevoerd.

    -Confirm [<SwitchParameter>]
        Vraagt om bevestiging voordat de cmdlet wordt uitgevoerd.

    <CommonParameters>
        Deze cmdlet ondersteunt de algemene parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable en OutVariable. Zie about_CommonParameters.

INPUTS
    System.String
        U kunt een tekenreeks naar deze cmdlet doorgeven.

OUTPUTS
    Microsoft.PowerShell.Commands.LocalUser
        Deze cmdlet retourneert een LocalUser-object.

OPMERKINGEN
    * Een gebruiker met beheerdersrechten is vereist om de cmdlet New-LocalUser uit te voeren.
    * De cmdlet kan worden gebruikt in een Windows PowerShell-sessie met verhoogde rechten.

VOORBEELDEN
    Voorbeeld 1: Een gebruiker maken
        New-LocalUser -Name 'User01'

    Voorbeeld 2: Een gebruiker maken met een wachtwoord
        $Password = Read-Host -AsSecureString
        New-LocalUser -Name 'User02' -Password $Password -FullName 'User02' -Description 'Beschrijving van gebruiker.'

VERWANTE KOPPELINGEN
    about_Local_Users
    Disable-LocalUser
    Enable-LocalUser
    Get-LocalUser
    Remove-LocalUser
    Rename-LocalUser
    Set-LocalUser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repeat`

> Huidig item herhalen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StartPaused`

> Gestart in onderbroken modus

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayAndExit`

> Afspelen en afsluiten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisableAudio`

> Audio uitschakelen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisableSubtitles`

> Ondertiteling uitschakelen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoScale`

> Video Automatisch Schalen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HighPriority`

> Verhoog de prioriteit van het proces

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableTimeStretch`

> Audio-tijdrekken inschakelen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> Open een nieuw VLC-mediaspeler exemplaar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableWallpaperMode`

> Videowallpapermodus inschakelen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableAudioTimeStretch`

> Audio-tijdrekken inschakelen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Close`

> Sluit het VLC-mediaspeler venster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Zet het venster op volledig scherm op een andere monitor dan PowerShell, of naast elkaar met PowerShell op dezelfde monitor.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Focus het VLC-venster na het openen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> Zet het VLC-venster op de voorgrond na het openen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> Maximaliseer het venster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Herstelt de focus van het PowerShell-venster na het openen van VLC.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Gebruik alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Instellingen alleen opslaan in permanente voorkeuren zonder de sessie te beïnvloeden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> Hiermee wordt de hoofdlettergevoeligheid voor bestanden en mappen ingesteld of opgehaald

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.MatchCasing]::PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRecursionDepth <Int32>`

> Maximale recursiediepte voor directorytraversatie. 0 betekent onbeperkt.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `md`, `depth`, `maxdepth` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> Sluit bestanden of mappen uit die overeenkomen met deze jokerpatronen (bijv. *.tmp, *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('*\\.git\\*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Retourneert de bestanden die door de zoekopdracht zijn gevonden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThruNoOpen`

> Geeft de door de zoekopdracht gevonden bestanden terug zonder VLC te openen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThruWindow`

> Retourneert de vensterhelper voor elk proces

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-MediaFileCreationDate.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Switch-VlcMediaPlayerRepeat.md)
