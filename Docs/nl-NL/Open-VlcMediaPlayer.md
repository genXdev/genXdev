# Open-VlcMediaPlayer

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlc`

## Synopsis

> Start en beheert VLC Media Player met uitgebreide configuratieopties.

## Description

Deze functie biedt een uitgebreide interface om VLC Media Player te starten en te bedienen, met ondersteuning voor vensterpositionering, monitorkeuze, afspeelinstellingen, audio- en videofilters, ondertitelbeheer, meerdere talen, netwerkproxy-instellingen en geavanceerde prestatieopties. De functie kan VLC automatisch installeren indien niet aanwezig en biedt uitgebreide aanpassingsmogelijkheden voor media-afspeelscenario's. Het integreert naadloos met het GenXdev-vensterbeheersysteem en ondersteunt toetsenbordinvoerautomatisering via de Send-Key-functionaliteit.

## Syntax

```powershell
Open-VlcMediaPlayer [[-Path] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-FocusWindow] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-KeysToSend <String[]>] [-Left] [-Loop] [-Maximize] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-PassThru] [-PlayAndExit] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | — | — | 0 | — | Het (de) mediabestand(en) of URL('s) om te openen in VLC |
| `-Width` | Int32 | — | — | 1 | `-1` | De initiële breedte van het venster |
| `-Height` | Int32 | — | — | 2 | `-1` | De initiële hoogte van het venster |
| `-X` | Int32 | — | — | 3 | `-999999` | De initiële X-positie van het venster |
| `-Y` | Int32 | — | — | 4 | `-999999` | De initiële Y-positie van het venster |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | `@()` | Toetsaanslagen die naar het VLC Player-venster moeten worden verzonden, zie documentatie voor cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape-besturingstekens en modifiers bij het verzenden van toetsen naar VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruik Shift+Enter in plaats van Enter bij het verzenden van toetsaanslagen naar VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `50` | Vertraging tussen verschillende invoerstrings in milliseconden bij het verzenden van toetsen naar VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Houd de toetsenbordfocus op het VLC-venster nadat toetsen zijn verzonden |
| `-Monitor` | Int32 | — | — | Named | `-1` | De monitor om te gebruiken, 0 = standaard, -1 is negeren |
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
| `-NoBorders` | SwitchParameter | — | — | Named | — | Verwijdert de randen van het venster |
| `-Left` | SwitchParameter | — | — | Named | — | Plaats venster aan de linkerkant van het scherm |
| `-Right` | SwitchParameter | — | — | Named | — | Plaats venster aan de rechterkant van het scherm |
| `-Top` | SwitchParameter | — | — | Named | — | Venster aan de bovenkant van het scherm plaatsen |
| `-Bottom` | SwitchParameter | — | — | Named | — | Venster aan de onderkant van het scherm plaatsen |
| `-Centered` | SwitchParameter | — | — | Named | — | Plaats het venster in het midden van het scherm |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Stuurt F11 naar het venster |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourneert de vensterhelper voor elk proces |
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
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-vensterfocus herstellen na het openen van VLC |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen opslaan in permanente voorkeuren zonder de sessie te beïnvloeden |

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

## Parameter Details

### `-Path <String[]>`

> Het (de) mediabestand(en) of URL('s) om te openen in VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
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
| **Default value** | `@()` |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | *(none)* |
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
| **Default value** | `50` |
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
| **Default value** | `-1` |
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
### `-PassThru`

> Retourneert de vensterhelper voor elk proces

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
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

> PowerShell-vensterfocus herstellen na het openen van VLC

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
## Related Links

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-MediaFile.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Switch-VlcMediaPlayerRepeat.md)
