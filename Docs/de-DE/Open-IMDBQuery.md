# Open-IMDBQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `imdb

## Synopsis

> Öffnet eine IMDB-Suchanfrage in einem Webbrowser.

## Description

Öffnet eine "Internet Movie Database"-Abfrage in einem Webbrowser mit umfangreichen Konfigurationsoptionen. Diese Funktion bietet eine praktische Kapselung der IMDB-Suchfunktionalität, sodass Benutzer direkt von PowerShell aus nach Filmen, TV-Serien, Schauspielern und anderen Unterhaltungsinhalten suchen können.

Die Funktion akzeptiert Suchbegriffe, erstellt entsprechende IMDB-Such-URLs und öffnet diese im angegebenen Webbrowser mit anpassbarer Fensterpositionierung, Browserauswahl und Anzeigeoptionen. Sie unterstützt alle gängigen Browser wie Edge, Chrome und Firefox mit Optionen für privates Surfen, Vollbildmodus und Fensterverwaltung.

Zu den wichtigsten Funktionen gehören Multi-Monitor-Unterstützung, Sprachlokalisierung, Tastaturautomation und umfassende Browserkonfigurationsoptionen. Die Funktion kann mehrere Suchanfragen gleichzeitig verarbeiten und bietet Optionen sowohl für die interaktive Nutzung als auch für automatisierte Arbeitsabläufe.

## Syntax

```powershell
Open-IMDBQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Die Suchbegriffe für die Abfrage bei IMDB |
| `-Language` | String | — | — | 1 | — | Die Sprache der zurückgegebenen Suchergebnisse |
| `-Monitor` | Int32 | — | — | Named | `-1` | Der zu verwendende Monitor, 0 = Standard, -1 = verwerfen, -2 = konfigurierter sekundärer Monitor, Standard ist -1 |
| `-Width` | Int32 | — | — | Named | `-1` | Die anfängliche Breite des Webbrowser-Fensters |
| `-Height` | Int32 | — | — | Named | `-1` | Die anfängliche Höhe des Webbrowser-Fensters |
| `-X` | Int32 | — | — | Named | `-999999` | Die anfängliche X-Position des Webbrowser-Fensters |
| `-Y` | Int32 | — | — | Named | `-999999` | Die anfängliche Y-Position des Webbrowser-Fensters |
| `-AcceptLang` | String | — | — | Named | — | Setzen Sie den Accept-Language-HTTP-Header des Browsers |
| `-KeysToSend` | String[] | — | — | Named | — | Tastenanschläge, die an das Browserfenster gesendet werden sollen, siehe Dokumentation für das Cmdlet GenXdev\Send-Key |
| `-Private` | SwitchParameter | — | — | Named | — | Öffnet im Inkognito-/Privatmodus |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwinge das Aktivieren des Debug-Ports, stoppe ggf. vorhandene Browser |
| `-Edge` | SwitchParameter | — | — | Named | — | Wird in Microsoft Edge geöffnet |
| `-Chrome` | SwitchParameter | — | — | Named | — | Öffnet in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Wird in Microsoft Edge oder Google Chrome geöffnet, je nachdem, welcher der Standardbrowser ist |
| `-Firefox` | SwitchParameter | — | — | Named | — | Öffnet in Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Verwenden Sie den von Playwright verwalteten Browser anstelle des im Betriebssystem installierten Browsers. |
| `-Webkit` | SwitchParameter | — | — | Named | — | Öffnet den von Playwright verwalteten WebKit-Browser. Impliziert -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Führen Sie den Browser ohne sichtbares Fenster aus |
| `-All` | SwitchParameter | — | — | Named | — | Öffnet in allen registrierten modernen Browsern |
| `-Left` | SwitchParameter | — | — | Named | — | Place browser window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Platzieren Sie das Browserfenster auf der oberen Seite des Bildschirms |
| `-Bottom` | SwitchParameter | — | — | Named | — | Fenster unten am Bildschirmrand platzieren |
| `-Centered` | SwitchParameter | — | — | Named | — | Place browser window in the center of the screen |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Öffnet im Vollbildmodus |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Blenden Sie die Browsersteuerelemente aus |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Prävention des Ladens von Browser-Erweiterungen |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Deaktiviert die Popup-Blockierungsfunktion des Browsers |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokussieren Sie das Browserfenster nach dem Öffnen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the browser window to foreground after opening |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximieren Sie das Fenster nach der Positionierung |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restore the window to normal state after positioning |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-Fokus wiederherstellen |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Statt ein vorhandenes Browserfenster wiederzuverwenden, erstelle ein neues. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Gibt ein [System.Diagnostics.Process]-Objekt des Browserprozesses zurück |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.example.com |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Nach dem Öffnen des Webbrowsers geben Sie die URL zurück |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape-Steuerzeichen beim Senden von Tastatureingaben an den Browser |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Verhindert, dass der Tastaturfokus nach dem Senden von Tastatureingaben zu PowerShell zurückkehrt |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Verwendet Umschalt+Eingabe anstelle der normalen Eingabetaste für Zeilenumbrüche beim Senden von Tasten |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung zwischen dem Senden verschiedener Tastenfolgen in Millisekunden |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Entfernt die Rahmen des Fensters |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Open browser windows side by side |

## Examples

### Open-IMDBQuery -Queries "The Matrix" -Monitor 0

```powershell
Open-IMDBQuery -Queries "The Matrix" -Monitor 0
```

Opens an IMDB search for "The Matrix" on the default monitor.

### imdb "The Matrix" -m 0

```powershell
imdb "The Matrix" -m 0
```

Opens an IMDB search for "The Matrix" using the alias and shorthand parameters.

### "Inception", "Interstellar" | Open-IMDBQuery -Language "French" -Chrome

```powershell
"Inception", "Interstellar" | Open-IMDBQuery -Language "French" -Chrome
```

Searcht nach mehreren Filmen auf IMDB mit französischen Sprachergebnissen in Chrome.

### Open-IMDBQuery -Queries "Tom Hanks" -FullScreen -RestoreFocus

```powershell
Open-IMDBQuery -Queries "Tom Hanks" -FullScreen -RestoreFocus
```

Sucht im Vollbildmodus nach Tom Hanks auf IMDB und gibt dann den Fokus zurück an PowerShell.

## Related Links

- [Open-IMDBQuery on GitHub](https://github.com/genXdev/genXdev)
