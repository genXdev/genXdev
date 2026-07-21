# Open-VlcMediaPlayerLyrics

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlclyrics`

## Synopsis

> Öffnet einen Webbrowser, um nach Textzeilen der aktuell abgespielten VLC-Medien zu suchen.

## Description

Diese Funktion erkennt, ob VLC Media Player ausgeführt wird, und sucht basierend auf dem aktuell abgespielten Medientitel nach Liedtexten. Sie öffnet automatisch eine Suchanfrage in einem Webbrowser, um Liedtexte für den aktuellen Titel zu finden. Die Funktion unterstützt mehrere Browser und bietet umfangreiche Optionen für Fensterpositionierung und Anzeige.

## Syntax

```powershell
Open-VlcMediaPlayerLyrics [[-Queries] <String[]>] [[-EndPoint] <String>] [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 0 | — | Suchbegriffe zum Finden eines Titels |
| `-EndPoint` | String | — | — | 1 | `'Google'` | Der Endpunkt, um die Abfrage aufzurufen |
| `-Language` | String | — | — | 2 | — | Die Sprache der zurückgegebenen Suchergebnisse |
| `-Monitor` | Int32 | — | — | Named | `-1` | Der zu verwendende Monitor, 0 = Standard, -1 = verwerfen, -2 = Konfigurierter sekundärer Monitor, Standardwert ist -1, keine Positionierung |
| `-Width` | Int32 | — | — | Named | `-1` | Die anfängliche Breite des Webbrowser-Fensters |
| `-Height` | Int32 | — | — | Named | `-1` | Die anfängliche Höhe des Webbrowser-Fensters |
| `-X` | Int32 | — | — | Named | `-999999` | Die anfängliche X-Position des Webbrowserfensters |
| `-Y` | Int32 | — | — | Named | `-999999` | Die anfängliche Y-Position des Webbrowser-Fensters |
| `-AcceptLang` | String | — | — | Named | `$null` | Legt den HTTP-Header "accept-lang" des Browsers fest |
| `-KeysToSend` | String[] | — | — | Named | — | Tastenanschläge, die an das Browserfenster gesendet werden sollen, siehe Dokumentation für das Cmdlet GenXdev\Send-Key |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung zwischen dem Senden unterschiedlicher Tastensequenzen in Millisekunden |
| `-Private` | SwitchParameter | — | — | Named | — | Öffnet im Inkognito-/Privatmodus |
| `-Force` | SwitchParameter | — | — | Named | — | Debug-Port erzwingen aktivieren, vorhandene Browser ggf. beenden |
| `-Edge` | SwitchParameter | — | — | Named | — | Öffnet in Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Öffnet in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Öffnet in Microsoft Edge oder Google Chrome, je nachdem, welcher Browser als Standard festgelegt ist |
| `-Firefox` | SwitchParameter | — | — | Named | — | Öffnet in Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Verwenden Sie den von Playwright verwalteten Browser anstelle des im Betriebssystem installierten Browsers |
| `-Webkit` | SwitchParameter | — | — | Named | — | Öffnet den von Playwright verwalteten WebKit-Browser. Impliziert -Playwright |
| `-Headless` | SwitchParameter | — | — | Named | — | Führen Sie den Browser ohne sichtbares Fenster aus |
| `-All` | SwitchParameter | — | — | Named | — | Wird in allen registrierten modernen Browsern geöffnet |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Öffnet den Vollbildmodus |
| `-Left` | SwitchParameter | — | — | Named | — | Platzieren Sie das Browserfenster auf der linken Seite des Bildschirms |
| `-Right` | SwitchParameter | — | — | Named | — | Browserfenster auf der rechten Seite des Bildschirms platzieren |
| `-Top` | SwitchParameter | — | — | Named | — | Browserfenster auf der oberen Seite des Bildschirms platzieren |
| `-Bottom` | SwitchParameter | — | — | Named | — | Browserfenster am unteren Bildschirmrand platzieren |
| `-Centered` | SwitchParameter | — | — | Named | — | Browserfenster in der Mitte des Bildschirms platzieren |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Die Browsersteuerelemente ausblenden |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Laden von Browsererweiterungen verhindern |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Deaktivieren Sie den Popup-Blocker |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Steuerzeichen beim Senden von Tasten maskieren |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Verhindert die Rückkehr des Tastaturfokus zu PowerShell nach dem Senden von Tasten |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Senden Sie Umschalt+Eingabe anstelle der normalen Eingabetaste für Zeilenumbrüche |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Browserfenster nach dem Öffnen fokussieren |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Setzt das Browserfenster nach dem Öffnen in den Vordergrund |
| `-Maximize` | SwitchParameter | — | — | Named | — | Fenster nach der Positionierung maximieren |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Stellen Sie das Fenster nach der Positionierung wieder auf den Normalzustand zurück |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-Fensterfokus wiederherstellen |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Das vorhandene Browserfenster nicht wiederverwenden, stattdessen ein neues erstellen |
| `-PassThru` | SwitchParameter | — | — | Named | — | Gibt ein [System.Diagnostics.Process]-Objekt des Browserprozesses zurück |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Öffnen Sie keinen Webbrowser, geben Sie einfach die URL zurück |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Öffnen Sie den Webbrowser und geben Sie die URL ein |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Entfernt Fensterrahmen aus dem Browserfenster |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Verwenden Sie eine Sitzung, die nach dem Schließen des Browsers nicht beibehalten wird |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Browser-Sitzungsdaten löschen, bevor der Browser geöffnet wird |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Vorhandene Browsersitzung nicht verwenden |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Öffnen Sie Browserfenster nebeneinander |

## Examples

### Open-VlcMediaPlayerLyrics

```powershell
Open-VlcMediaPlayerLyrics
```

Öffnet eine Google-Suche nach den Liedtexten des aktuell in VLC abgespielten Titels.

### vlclyrics -Edge -Private

```powershell
vlclyrics -Edge -Private
```

Öffnet die Liedtextsuche in Microsoft Edge mit privatem/Inkognito-Modus.

## Parameter Details

### `-Queries <String[]>`

> Suchbegriffe zum Finden eines Titels

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Query` |
| **Accept wildcard characters?** | No |

> This parameter accepts all remaining arguments.

<hr/>
### `-EndPoint <String>`

> Der Endpunkt, um die Abfrage aufzurufen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'Google'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Die Sprache der zurückgegebenen Suchergebnisse

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> Der zu verwendende Monitor, 0 = Standard, -1 = verwerfen, -2 = Konfigurierter sekundärer Monitor, Standardwert ist -1, keine Positionierung

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Die anfängliche Breite des Webbrowser-Fensters

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Die anfängliche Höhe des Webbrowser-Fensters

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> Die anfängliche X-Position des Webbrowserfensters

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> Die anfängliche Y-Position des Webbrowser-Fensters

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> Legt den HTTP-Header "accept-lang" des Browsers fest

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Tastenanschläge, die an das Browserfenster gesendet werden sollen, siehe Dokumentation für das Cmdlet GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Verzögerung zwischen dem Senden unterschiedlicher Tastensequenzen in Millisekunden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> Öffnet im Inkognito-/Privatmodus

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Debug-Port erzwingen aktivieren, vorhandene Browser ggf. beenden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> Öffnet in Microsoft Edge

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Öffnet in Google Chrome

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> Öffnet in Microsoft Edge oder Google Chrome, je nachdem, welcher Browser als Standard festgelegt ist

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> Öffnet in Firefox

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> Verwenden Sie den von Playwright verwalteten Browser anstelle des im Betriebssystem installierten Browsers

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Öffnet den von Playwright verwalteten WebKit-Browser. Impliziert -Playwright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> Führen Sie den Browser ohne sichtbares Fenster aus

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> Wird in allen registrierten modernen Browsern geöffnet

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Öffnet den Vollbildmodus

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> Platzieren Sie das Browserfenster auf der linken Seite des Bildschirms

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

> Browserfenster auf der rechten Seite des Bildschirms platzieren

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

> Browserfenster auf der oberen Seite des Bildschirms platzieren

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

> Browserfenster am unteren Bildschirmrand platzieren

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

> Browserfenster in der Mitte des Bildschirms platzieren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> Die Browsersteuerelemente ausblenden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBrowserExtensions`

> Laden von Browsererweiterungen verhindern

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisablePopupBlocker`

> Deaktivieren Sie den Popup-Blocker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Steuerzeichen beim Senden von Tasten maskieren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Verhindert die Rückkehr des Tastaturfokus zu PowerShell nach dem Senden von Tasten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Senden Sie Umschalt+Eingabe anstelle der normalen Eingabetaste für Zeilenumbrüche

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Browserfenster nach dem Öffnen fokussieren

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

> Setzt das Browserfenster nach dem Öffnen in den Vordergrund

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

> Fenster nach der Positionierung maximieren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetRestored`

> Stellen Sie das Fenster nach der Positionierung wieder auf den Normalzustand zurück

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

> PowerShell-Fensterfokus wiederherstellen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> Das vorhandene Browserfenster nicht wiederverwenden, stattdessen ein neues erstellen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Gibt ein [System.Diagnostics.Process]-Objekt des Browserprozesses zurück

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> Öffnen Sie keinen Webbrowser, geben Sie einfach die URL zurück

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnOnlyURL`

> Öffnen Sie den Webbrowser und geben Sie die URL ein

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

> Entfernt Fensterrahmen aus dem Browserfenster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Verwenden Sie eine Sitzung, die nach dem Schließen des Browsers nicht beibehalten wird

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

> Browser-Sitzungsdaten löschen, bevor der Browser geöffnet wird

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

> Vorhandene Browsersitzung nicht verwenden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Öffnen Sie Browserfenster nebeneinander

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-MediaFile.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-VlcMediaPlayer.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/de-DE/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/de-DE/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/de-DE/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/de-DE/Switch-VlcMediaPlayerRepeat.md)
