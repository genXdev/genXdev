# Open-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wb

## Synopsis

> Öffnet URLs in einem oder mehreren Browserfenstern mit optionaler Positionierung und Gestaltung.

## Description

Diese Funktion bietet einen erweiterten Wrapper zum Öffnen von Browsern mit umfangreichen Optionen für Fensterpositionierung, Browserauswahl und Verhaltensanpassung. Sie unterstützt mehrere Browser wie Edge, Chrome und Firefox mit Funktionen wie privatem Surfen, Anwendungsmodus und präziser Fensterverwaltung.

Hauptmerkmale:
- Intelligente Browsererkennung und -auswahl
- Fensterpositionierung (links, rechts, oben, unten, zentriert, Vollbild)
- Multi-Monitor-Unterstützung mit automatischer oder manueller Monitorauswahl
- Unterstützung für privates/Inkognito-Surfen
- Anwendungsmodus für ablenkungsfreies Surfen
- Optionen zum Blockieren von Erweiterungen und Pop-ups
- Fokusverwaltung und Fenstersteuerung
- Batch-Öffnen von URLs in mehreren Browsern
- Tastenanschlag-Automatisierung für Browserfenster

Die Funktion kann Systemfähigkeiten automatisch erkennen und das Verhalten entsprechend anpassen. Für nicht installierte Browser werden Operationen stillschweigend ohne Fehler übersprungen.

## Syntax

```powershell
Open-Webbrowser [[-Url] <String[]>] [[-Monitor] <Int32>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-Input <String>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String[] | — | — | 0 | — | Die im Browser zu öffnenden URLs |
| `-Input` | String | — | ✅ (ByValue, ByPropertyName) | Named | — | Die im Browser zu öffnenden URLs |
| `-Monitor` | Int32 | — | — | 1 | `-2` | Der zu verwendende Monitor, 0 = Standard, -1 = verwerfen, -2 = Konfigurierter sekundärer Monitor, standardmäßig $Global:DefaultSecondaryMonitor oder 2, falls nicht gefunden |
| `-Width` | Int32 | — | — | Named | `-1` | Die anfängliche Breite des Webbrowser-Fensters |
| `-Height` | Int32 | — | — | Named | `-1` | Die anfängliche Höhe des Webbrowser-Fensters |
| `-X` | Int32 | — | — | Named | `-999999` | Die anfängliche X-Position des Webbrowser-Fensters |
| `-Y` | Int32 | — | — | Named | `-999999` | Die anfängliche Y-Position des Webbrowser-Fensters |
| `-AcceptLang` | String | — | — | Named | `$null` | Setzen Sie den Accept-Language-HTTP-Header des Browsers |
| `-Force` | SwitchParameter | — | — | Named | — | Vorhandene Browserinstanzen zwangsweise schließen, bevor eine neue geöffnet wird |
| `-Edge` | SwitchParameter | — | — | Named | — | Wird in Microsoft Edge geöffnet |
| `-Chrome` | SwitchParameter | — | — | Named | — | Öffnet in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Wird in Microsoft Edge oder Google Chrome geöffnet, je nachdem, welcher der Standardbrowser ist |
| `-Firefox` | SwitchParameter | — | — | Named | — | Öffnet in Firefox |
| `-All` | SwitchParameter | — | — | Named | — | Öffnet in allen registrierten modernen Browsern |
| `-Left` | SwitchParameter | — | — | Named | — | Place browser window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Platzieren Sie das Browserfenster auf der oberen Seite des Bildschirms |
| `-Bottom` | SwitchParameter | — | — | Named | — | Fenster unten am Bildschirmrand platzieren |
| `-Centered` | SwitchParameter | — | — | Named | — | Place browser window in the center of the screen |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Öffnet im Vollbildmodus |
| `-Private` | SwitchParameter | — | — | Named | — | Öffnet im Inkognito-/Privatmodus |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Blenden Sie die Browsersteuerelemente aus |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Prävention des Ladens von Browser-Erweiterungen |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Deaktivieren Sie den Popup-Blocker |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Statt ein vorhandenes Browserfenster wiederzuverwenden, erstelle ein neues. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokussieren Sie das Browserfenster nach dem Öffnen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the browser window to foreground after opening |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximieren Sie das Fenster nach der Positionierung |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restore the window to normal state after positioning |
| `-PassThru` | SwitchParameter | — | — | Named | — | Gibt ein PowerShell-Objekt des Browserprozesses zurück |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Entfernt die Rahmen des Fensters |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-Fokus wiederherstellen |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Positionieren Sie das Browserfenster entweder im Vollbildmodus auf einem anderen Monitor als PowerShell oder nebeneinander mit PowerShell auf demselben Monitor |
| `-KeysToSend` | String[] | — | — | Named | — | Tastendrücke, die an das Fenster gesendet werden sollen (siehe Dokumentation für das Cmdlet GenXdev\Send-Key) |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Behält den Tastaturfokus auf dem Zielfenster beim Senden von Tastenanschlägen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung zwischen verschiedenen Eingabezeichenfolgen in Millisekunden beim Senden von Tasten |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Verwenden Sie den von Playwright verwalteten Browser anstelle des im Betriebssystem installierten Browsers. |
| `-Webkit` | SwitchParameter | — | — | Named | — | Öffnet den von Playwright verwalteten WebKit-Browser. Impliziert -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Führen Sie den Browser ohne sichtbares Fenster aus |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch der Installation von Drittanbieter-Software zustimmen (Playwright-Browser) |

## Examples

### wb -PlayWright https://github.com

```powershell
wb -PlayWright https://github.com
```

Öffnet GitHub in einem von Playwright verwalteten Chromium-Browser.

### Open-Webbrowser -Url "https://github.com"

```powershell
Open-Webbrowser -Url "https://github.com"
```

Öffnet GitHub im Standardbrowser.

### Open-Webbrowser -Url "https://stackoverflow.com" -Monitor 1 -Left

```powershell
Open-Webbrowser -Url "https://stackoverflow.com" -Monitor 1 -Left
```

Öffnet Stack Overflow in der linken Hälfte von Monitor 1.

### wb "https://google.com" -m 0 -fs

```powershell
wb "https://google.com" -m 0 -fs
```

Öffnet Google im Vollbildmodus auf dem primären Monitor mithilfe von Aliasen.

### Open-Webbrowser -Chrome -Private -NewWindow

```powershell
Open-Webbrowser -Chrome -Private -NewWindow
```

Öffnet ein neues Chrome-Fenster im Inkognito-Modus.

### "https://github.com", "https://stackoverflow.com" | Open-Webbrowser -All

```powershell
"https://github.com", "https://stackoverflow.com" | Open-Webbrowser -All
```

Öffnet mehrere URLs in allen installierten Browsern per Pipeline.

### Open-Webbrowser -Monitor 0 -Right

```powershell
Open-Webbrowser -Monitor 0 -Right
```

Positioniert ein bereits geöffnetes Browserfenster neu auf der rechten Seite des primären Monitors.

### Open-Webbrowser -ApplicationMode -Url "https://app.example.com"

```powershell
Open-Webbrowser -ApplicationMode -Url "https://app.example.com"
```

Öffnet eine Webanwendung im App-Modus ohne Browsersteuerelemente.

## Related Links

- [Open-Webbrowser on GitHub](https://github.com/genXdev/genXdev)
