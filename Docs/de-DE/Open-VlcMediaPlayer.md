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
| `-Path` | String[] | — | — | 0 | — | Die Mediendatei(en) oder URL(s), die in VLC geöffnet werden sollen |
| `-Width` | Int32 | — | — | 1 | `-1` | Die anfängliche Breite des Fensters |
| `-Height` | Int32 | — | — | 2 | `-1` | Die Anfangshöhe des Fensters |
| `-X` | Int32 | — | — | 3 | `-999999` | Die anfängliche X-Position des Fensters |
| `-Y` | Int32 | — | — | 4 | `-999999` | Die anfängliche Y-Position des Fensters |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | `@()` | Tastatureingaben an das VLC Player Fenster senden, siehe Dokumentation für das Cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Entferne Steuerzeichen und Modifikatoren, wenn Tasten an VLC gesendet werden |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Verwenden Sie Umschalt+Eingabe anstelle von Eingabe, wenn Sie Tasten an VLC senden |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `50` | Verzögerung zwischen verschiedenen Eingabezeichenfolgen in Millisekunden beim Senden von Tasten an VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Tastaturfokus auf dem VLC-Fenster halten, nachdem Tasten gesendet wurden |
| `-Monitor` | Int32 | — | — | Named | `-1` | Der zu verwendende Monitor, 0 = Standard, -1 = verwerfen |
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
| `-NoBorders` | SwitchParameter | — | — | Named | — | Entfernt die Rahmen des Fensters |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Platzieren Sie das Fenster auf der rechten Seite des Bildschirms. |
| `-Top` | SwitchParameter | — | — | Named | — | Place window on the top side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Fenster in der Mitte des Bildschirms platzieren |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Sends F11 to the window |
| `-PassThru` | SwitchParameter | — | — | Named | — | Gibt das Fenster-Hilfsobjekt für jeden Prozess zurück |
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
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Stellt den PowerShell-Fensterfokus nach dem Öffnen von VLC wieder her |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |

## Related Links

- [Open-VlcMediaPlayer on GitHub](https://github.com/genXdev/genXdev)
