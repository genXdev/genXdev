# Open-YabAIBattle

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `yabbattle

## Synopsis

> Öffnet das YabAI Battle-Spiel in einem Webbrowser.

## Description

Diese Funktion startet das YabAI Battle-Spiel in einem Webbrowser mit umfangreichen Anpassungsmöglichkeiten für Fensterplatzierung, Browserauswahl und Anzeigemodus. Sie dient als Wrapper um die GenXdev\Open-Webbrowser-Funktion mit spielspezifischem URL-Aufbau und Parameterverarbeitung.

Die Funktion unterstützt zwei Spielmodi:
- Battle-Modus: Starten eines neuen KI-gegen-KI-Kampfes
- Zuschauermodus: Ansehen bestehender KI-Kämpfe

Optionen für die Browserpositionierung umfassen links, rechts, oben, unten, zentriert und Vollbildmodi mit Multi-Monitor-Unterstützung. Die Funktion verwaltet automatisch die Einstellungen des Anwendungsmodus und die Verwaltung von Browsererweiterungen für ein optimales Spielerlebnis.

## Syntax

```powershell
Open-YabAIBattle [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-SpectateOnly] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | Die Sprache der Spieloberfläche |
| `-SpectateOnly` | SwitchParameter | — | — | Named | — | Starte kein neues Spiel, schau einfach zu, wie die KI spielt |
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
| `-Monitor` | Int32 | — | — | Named | `-2` | Der zu verwendende Monitor, 0 = Standard, -1 = verwerfen, -2 = Konfigurierter sekundärer Monitor, standardmäßig $Global:DefaultSecondaryMonitor oder 2, falls nicht gefunden |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Öffnet im Vollbildmodus |
| `-Width` | Int32 | — | — | Named | `-1` | Die anfängliche Breite des Webbrowser-Fensters |
| `-Height` | Int32 | — | — | Named | `-1` | Die anfängliche Höhe des Webbrowser-Fensters |
| `-X` | Int32 | — | — | Named | `-999999` | Die anfängliche X-Position des Webbrowser-Fensters |
| `-Y` | Int32 | — | — | Named | `-999999` | Die anfängliche Y-Position des Webbrowser-Fensters |
| `-Left` | SwitchParameter | — | — | Named | — | Place browser window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Platzieren Sie das Browserfenster auf der oberen Seite des Bildschirms |
| `-Bottom` | SwitchParameter | — | — | Named | — | Fenster unten am Bildschirmrand platzieren |
| `-Centered` | SwitchParameter | — | — | Named | — | Place browser window in the center of the screen |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Blenden Sie die Browsersteuerelemente aus |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Prävention des Ladens von Browser-Erweiterungen |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Deaktivieren Sie den Popup-Blocker |
| `-AcceptLang` | String | — | — | Named | — | Setzen Sie den Accept-Language-HTTP-Header des Browsers |
| `-KeysToSend` | String[] | — | — | Named | — | Tastenanschläge, die an das Browserfenster gesendet werden sollen, siehe Dokumentation für das Cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keys. |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Prevent returning keyboard focus to PowerShell after sending keys. |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Senden Sie Umschalt+Eingabe anstelle der normalen Eingabetaste für Zeilenumbrüche, wenn Sie Tasten senden. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung in Millisekunden zwischen dem Senden jedes Schlüssels. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokussieren Sie das Browserfenster nach dem Öffnen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the browser window to foreground after opening |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximieren Sie das Fenster nach der Positionierung |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restore the window to normal state after positioning |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Nach dem Öffnen des Browsers den Fokus wieder auf das vorherige Fenster legen. |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Statt ein vorhandenes Browserfenster wiederzuverwenden, erstelle ein neues. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Gibt ein [System.Diagnostics.Process]-Objekt des Browserprozesses zurück |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.example.com |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Nach dem Öffnen des Webbrowsers geben Sie die URL zurück |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Nicht im Vollbildmodus öffnen |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | Avatare der Browsersteuerung anzeigen |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Entfernt die Ränder des Browserfensters. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Positionieren Sie das Browserfenster entweder im Vollbildmodus auf einem anderen Monitor als PowerShell oder nebeneinander mit PowerShell auf demselben Monitor. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Verwende alternative Einstellungen für KI-Präferenzen, die in der Sitzung gespeichert sind. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative KI-Einstellungen gelöscht. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session. |

## Examples

### Open-YabAIBattle -Edge -Private -NoFullScreen

```powershell
Open-YabAIBattle -Edge -Private -NoFullScreen
```

Öffnet das YabAI Battle-Spiel in Microsoft Edge mit privatem Browsermodus ohne Vollbild.

### yabbattle -e -incognito -nfs

```powershell
yabbattle -e -incognito -nfs
```

Öffnet das Spiel mit Aliasen für Edge, Inkognito-Modus und ohne Vollbild.

### Open-YabAIBattle -SpectateOnly -Chrome

```powershell
Open-YabAIBattle -SpectateOnly -Chrome
```

Öffnet das Spiel im Zuschauermodus mit Google Chrome, um KI-Kämpfe zu beobachten.

### Open-YabAIBattle -Language "Spanish" -Monitor 1 -Left

```powershell
Open-YabAIBattle -Language "Spanish" -Monitor 1 -Left
```

Öffnet das Spiel mit spanischer Sprachoberfläche, positioniert auf der linken Seite des Monitors 1.

## Related Links

- [Open-YabAIBattle on GitHub](https://github.com/genXdev/genXdev)
