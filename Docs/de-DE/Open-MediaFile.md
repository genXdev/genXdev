# Open-MediaFile

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `vlcmedia, `media, `findmedia

## Synopsis

> Öffnet und spielt Mediendateien mit dem VLC Media Player ab, mit erweiterten Filter- und Konfigurationsoptionen.

## Description

Diese Funktion durchsucht Medien nach Suchmustern, erstellt eine Playlist und startet den VLC Media Player mit umfassenden Konfigurationsoptionen. Sie unterstützt Videos, Audiodateien und Bilder mit automatischer VLC-Installation bei Bedarf. Die Funktion bietet umfangreiche Steuerungsmöglichkeiten für das Abspielverhalten, die Fensterpositionierung, Audio-/Video-Einstellungen und die Untertitelverwaltung.

## Syntax

```powershell
Open-MediaFile [[-Name] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AllDrives] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AttributesToSkip <IO.FileAttributes>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-CaseNameMatching <IO.MatchCasing>] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-Exclude <String[]>] [-FocusWindow] [-FollowSymlinkAndJunctions] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-IncludeAlternateFileStreams] [-IncludeAudio] [-IncludePictures] [-IncludeVideos] [-InputObject <Object>] [-KeysToSend <String[]>] [-Left] [-Loop] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoRecurse] [-OnlyAudio] [-OnlyPictures] [-OnlyVideos] [-PassThru] [-PassThruNoOpen] [-PassThruWindow] [-PlayAndExit] [-PlaylistPath <String>] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-TimeoutSeconds <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | `'*'` | Dateiname oder Suchmuster. Standard ist '*' 🌐 *Supports wildcards* |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Durchsuchen aller verfügbaren Laufwerke |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Nicht in Unterverzeichnisse absteigen |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Folgen Sie bei der Verzeichnisdurchquerung symbolischen Verknüpfungen und Verknüpfungspunkten. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Maximale Rekursionstiefe für die fortgesetzte Suche im Baum nach oben für relative Suchvorgänge, während keine Elemente gefunden werden. 0 bedeutet deaktiviert. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximale Dateigröße in Bytes, die in die Ergebnisse einbezogen werden soll. 0 bedeutet unbegrenzt. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Mindestdateigröße in Bytes, die in die Ergebnisse aufgenommen werden soll. 0 bedeutet kein Minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Nur Dateien einschließen, die nach diesem Datum/Uhrzeit (UTC) geändert wurden. |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Nur Dateien einbeziehen, die vor diesem Datum/Zeitpunkt (UTC) geändert wurden. |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | Zu überspringende Dateiattribute (z. B. System, Versteckt oder Keine). |
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | Dateiname oder -muster, nach dem aus der Pipeline-Eingabe gesucht werden soll. Standard ist "*" 🌐 *Supports wildcards* |
| `-PlaylistPath` | String | — | — | Named | `[System.IO.Path]::GetTempFileName() + '.m3u'` | Der Pfad zur Playlist, in dem die Mediendateien gespeichert werden sollen. Wenn nicht angegeben, wird die Playlist in einem temporären Verzeichnis gespeichert. |
| `-Width` | Int32 | — | — | 1 | `-1` | Die anfängliche Breite des Fensters |
| `-Height` | Int32 | — | — | 2 | `-1` | Die Anfangshöhe des Fensters |
| `-X` | Int32 | — | — | 3 | `-999999` | Die anfängliche X-Position des Fensters |
| `-Y` | Int32 | — | — | 4 | `-999999` | Die anfängliche Y-Position des Fensters |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | — | Tastatureingaben an das VLC Player Fenster senden, siehe Dokumentation für das Cmdlet GenXdev\Send-Key |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | Maximaler Parallelitätsgrad für Verzeichnisaufgaben |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Optional: Abbruch-Time-Out in Sekunden |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Entferne Steuerzeichen und Modifikatoren, wenn Tasten an VLC gesendet werden |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Verwenden Sie Umschalt+Eingabe anstelle von Eingabe, wenn Sie Tasten an VLC senden |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung zwischen verschiedenen Eingabezeichenfolgen in Millisekunden beim Senden von Tasten an VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Tastaturfokus auf dem VLC-Fenster halten, nachdem Tasten gesendet wurden |
| `-Monitor` | Int32 | — | — | Named | `-2` | Der zu verwendende Monitor, 0 = Standard, -1 = verwerfen |
| `-AspectRatio` | String | — | — | Named | — | Quellseitenverhältnis |
| `-Crop` | String | — | — | Named | — | Video zuschneiden |
| `-SubtitleFile` | String | — | — | Named | — | Untertiteldatei verwenden |
| `-SubtitleScale` | Int32 | — | — | Named | — | Skalierungsfaktor für Untertiteltext |
| `-SubtitleLanguage` | String | — | — | Named | — | Untertitelsprache |
| `-AudioLanguage` | String | — | — | Named | — | Audiosprache |
| `-PreferredAudioLanguage` | String | — | — | Named | — | Bevorzugte Audiosprache |
| `-HttpProxy` | String | — | — | Named | — | HTTP-Proxy |
| `-HttpProxyPassword` | String | — | — | Named | — | HTTP-Proxy-Passwort |
| `-VerbosityLevel` | Int32 | — | — | Named | — | Ausführlichkeitsgrad |
| `-SubdirectoryBehavior` | String | — | — | Named | — | Unterverzeichnis-Verhalten |
| `-IgnoredExtensions` | String | — | — | Named | — | Ignorierte Erweiterungen |
| `-VLCPath` | String | — | — | Named | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` | Pfad zur VLC ausführbaren Datei |
| `-ReplayGainMode` | String | — | — | Named | — | Replay-Gain-Modus |
| `-ReplayGainPreamp` | Single | — | — | Named | — | Replay-Gain-Vorverstärkung |
| `-ForceDolbySurround` | String | — | — | Named | — | Erkennung von Dolby Surround erzwingen |
| `-AudioFilters` | String[] | — | — | Named | — | Audiogeräte |
| `-Visualization` | String | — | — | Named | — | Audio-Visualisierungen |
| `-Deinterlace` | String | — | — | Named | — | Deinterlacen |
| `-DeinterlaceMode` | String | — | — | Named | — | Deinterlace-Modus |
| `-VideoFilters` | String[] | — | — | Named | — | Video-Filter-Modul |
| `-VideoFilterModules` | String[] | — | — | Named | — | Video-Filtermodule |
| `-Modules` | String[] | — | — | Named | — | Module |
| `-AudioFilterModules` | String[] | — | — | Named | — | Audiofiltermodule |
| `-AudioVisualization` | String | — | — | Named | — | Audio-Visualisierungsmodus |
| `-PreferredSubtitleLanguage` | String | — | — | Named | — | Bevorzugte Untertitelsprache |
| `-IgnoredFileExtensions` | String | — | — | Named | — | Ignored file extensions |
| `-Arguments` | String | — | — | Named | — | Additional arguments |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Alternate-Datenströme in Suchergebnisse einbeziehen |
| `-OnlyVideos` | SwitchParameter | — | — | Named | — | Nur Videodateien in die Wiedergabeliste aufnehmen |
| `-OnlyAudio` | SwitchParameter | — | — | Named | — | In die Wiedergabeliste nur Audiodateien aufnehmen |
| `-OnlyPictures` | SwitchParameter | — | — | Named | — | Only include pictures in the playlist |
| `-IncludeVideos` | SwitchParameter | — | — | Named | — | Fügen Sie der Wiedergabeliste auch Videos hinzu. |
| `-IncludeAudio` | SwitchParameter | — | — | Named | — | Fügen Sie zusätzlich Audiodateien in die Wiedergabeliste ein |
| `-IncludePictures` | SwitchParameter | — | — | Named | — | Füge außerdem Bilder in die Wiedergabeliste ein |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Entfernt die Rahmen des Fensters |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Platzieren Sie das Fenster auf der rechten Seite des Bildschirms. |
| `-Top` | SwitchParameter | — | — | Named | — | Place window on the top side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Fenster in der Mitte des Bildschirms platzieren |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Sends F11 to the window |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | Immer im Vordergrund |
| `-Random` | SwitchParameter | — | — | Named | — | Dateien zufällig und unendlich abspielen |
| `-Loop` | SwitchParameter | — | — | Named | — | Repeat all |
| `-Repeat` | SwitchParameter | — | — | Named | — | Aktuelles Element wiederholen |
| `-StartPaused` | SwitchParameter | — | — | Named | — | Start pausiert |
| `-PlayAndExit` | SwitchParameter | — | — | Named | — | Spielen und beenden |
| `-DisableAudio` | SwitchParameter | — | — | Named | — | Deaktiviere Audio |
| `-DisableSubtitles` | SwitchParameter | — | — | Named | — | Untertitel deaktivieren |
| `-AutoScale` | SwitchParameter | — | — | Named | — | Automatische Videogrößenanpassung |
| `-HighPriority` | SwitchParameter | — | — | Named | — | Erhöhe die Priorität des Prozesses |
| `-EnableTimeStretch` | SwitchParameter | — | — | Named | — | Enable time stretching audio |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Neue VLC-Mediaplayer-Instanz öffnen |
| `-EnableWallpaperMode` | SwitchParameter | — | — | Named | — | Videohintergrund-Modus aktivieren |
| `-EnableAudioTimeStretch` | SwitchParameter | — | — | Named | — | Enable audio time stretching |
| `-Close` | SwitchParameter | — | — | Named | — | Schließen Sie das VLC Media Player Fenster |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Wird entweder das Fenster auf einem anderen Monitor als PowerShell im Vollbildmodus anzeigen oder auf demselben Monitor nebeneinander mit PowerShell platzieren. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokussieren Sie das VLC-Fenster nach dem Öffnen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | VLC-Fenster nach dem Öffnen in den Vordergrund bringen |
| `-Maximize` | SwitchParameter | — | — | Named | — | Das Fenster maximieren |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Stellt den PowerShell-Fensterfokus wieder her, nachdem VLC geöffnet wurde. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | Legt die Groß-/Kleinschreibung für Dateien und Verzeichnisse fest oder ruft sie ab. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximale Rekursionstiefe für die Verzeichnisdurchquerung. 0 bedeutet unbegrenzt. |
| `-Exclude` | String[] | — | — | Named | `@('*\\.git\\*')` | Schließen Sie Dateien oder Verzeichnisse aus, die diesen Platzhaltermustern entsprechen (z.B. *.tmp, *\bin\*). |
| `-PassThru` | SwitchParameter | — | — | Named | — | Gibt die durch die Suche gefundenen Dateien zurück |
| `-PassThruNoOpen` | SwitchParameter | — | — | Named | — | Gibt die durch die Suche gefundenen Dateien zurück, ohne VLC zu öffnen |
| `-PassThruWindow` | SwitchParameter | — | — | Named | — | Gibt das Fenster-Hilfsobjekt für jeden Prozess zurück |

## Examples

### Open-MediaFile

```powershell
Open-MediaFile
```

Öffnet alle Mediendateien im aktuellen Verzeichnis mit den Standard-VLC-Einstellungen.

### vlcmedia ~\Pictures -OnlyPictures -Fullscreen

```powershell
vlcmedia ~\Pictures -OnlyPictures -Fullscreen
```

Öffnet nur Bilddateien aus dem Ordner Bilder im Vollbildmodus mit dem Alias 'vlcmedia'.

### media ~\Videos -OnlyVideos -Loop

```powershell
media ~\Videos -OnlyVideos -Loop
```

Öffnet Videodateien mit aktivierter Schleifenfunktion über den Alias 'media'.

## Related Links

- [Open-MediaFile on GitHub](https://github.com/genXdev/genXdev)
