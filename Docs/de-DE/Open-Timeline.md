# Open-Timeline

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `timeline

## Synopsis

> Öffnet eine interaktive Zeitleiste, die aktuelle Uhrzeit, Datum, Jahrhundert und Jahrtausend anzeigt.

## Description

Öffnet eine webbasierte interaktive Zeitleiste.
Unterstützt mehrere Sprachen und visuelle Anpassungsoptionen.

## Syntax

```powershell
Open-Timeline [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-BorderDarkColor <String>] [-BorderLightColor <String>] [-BorderWidth <Int32>] [-Bottom] [-BrowserExtensions] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-DragedNodeBackground <String>] [-Edge] [-Firefox] [-FocusedNodeBackground <String>] [-FocusedNodeForeground <String>] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-RotationDelaySeconds <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-SpectateOnly] [-Top] [-UnFocusedNodeBackground <String>] [-UnFocusedNodeForeground <String>] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
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
| `-Monitor` | Int32 | — | — | Named | `-2` | Der zu verwendende Monitor, 0 = Standard, -1 = verwirft, -2 = Konfigurierter sekundärer Monitor, Standardmäßig Global:DefaultSecondaryMonitor oder 2, falls nicht gefunden |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Nicht im Vollbildmodus öffnen |
| `-Width` | Int32 | — | — | Named | `-1` | Die anfängliche Breite des Webbrowser-Fensters |
| `-Height` | Int32 | — | — | Named | `-1` | Die anfängliche Höhe des Webbrowser-Fensters |
| `-X` | Int32 | — | — | Named | `-999999` | Die anfängliche X-Position des Webbrowser-Fensters |
| `-Y` | Int32 | — | — | Named | `-999999` | Die anfängliche Y-Position des Webbrowser-Fensters |
| `-Left` | SwitchParameter | — | — | Named | — | Place browser window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Platzieren Sie das Browserfenster auf der oberen Seite des Bildschirms |
| `-Bottom` | SwitchParameter | — | — | Named | — | Fenster unten am Bildschirmrand platzieren |
| `-Centered` | SwitchParameter | — | — | Named | — | Place browser window in the center of the screen |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | Avatare der Browsersteuerung anzeigen |
| `-BrowserExtensions` | SwitchParameter | — | — | Named | — | Das Laden von Browsererweiterungen nicht verhindern |
| `-AcceptLang` | String | — | — | Named | `$null` | Setzen Sie den Accept-Language-HTTP-Header des Browsers |
| `-KeysToSend` | String[] | — | — | Named | — | Tastenanschläge, die an das Browserfenster gesendet werden sollen, siehe Dokumentation für das Cmdlet GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokussieren Sie das Browserfenster nach dem Öffnen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the browser window to foreground after opening |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximieren Sie das Fenster nach der Positionierung |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restore the window to normal state after positioning |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-Fokus wiederherstellen |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Statt ein vorhandenes Browserfenster wiederzuverwenden, erstelle ein neues. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Gibt ein [System.Diagnostics.Process]-Objekt des Browserprozesses zurück |
| `-SpectateOnly` | SwitchParameter | — | — | Named | — | Starte kein neues Spiel, schau einfach zu, wie die KI spielt |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.example.com |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Nach dem Öffnen des Webbrowsers geben Sie die URL zurück |
| `-Language` | String | — | — | 1 | — | Standard-Browsersprache überschreiben oder [Alle] auswählen, um alle Sprachen jede Minute zu wechseln |
| `-DragedNodeBackground` | String | — | — | Named | `$null` | - (void)setDraggedNodeBackgroundColor:(NSColor *)color {
    self.draggedNodeBackgroundColor = color;
} |
| `-FocusedNodeBackground` | String | — | — | Named | `$null` | Überschreibe den CSS-Farbstil für das Malen des Hintergrunds des fokussierten Knotens (im Zentrum). |
| `-FocusedNodeForeground` | String | — | — | Named | `$null` | Überschreibe die CSS-Farbstil für die Vordergrundtextfarbe des fokussierten Knotens (im Zentrum). |
| `-UnFocusedNodeBackground` | String | — | — | Named | `$null` | Überschreibe den CSS-Farbstil für das Malen des Hintergrunds des fokussierten Knotens (im Zentrum). |
| `-UnFocusedNodeForeground` | String | — | — | Named | `$null` | .unfocused-node-center .node-text { color: #888888; } |
| `-BorderLightColor` | String | — | — | Named | `$null` | .border-light { --bs-border-color: #f8f9fa; } |
| `-BorderDarkColor` | String | — | — | Named | `$null` | Überschreibe die Standardfarbe des CSS-Grenzschatten-Dunkelfarbstils |
| `-BorderWidth` | Int32 | — | — | Named | `1` | Überschreibt die Standardbreite für das Malen der Knotenränder |
| `-RotationDelaySeconds` | Int32 | — | — | Named | `15` | Überschreiben Sie die Standardbreite für die Verzögerung des Hintergrundwechsels. |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Öffnet im Vollbildmodus |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Blenden Sie die Browsersteuerelemente aus |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Prävention des Ladens von Browser-Erweiterungen |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Deaktivieren Sie den Popup-Blocker |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Verhindern, dass der Tastaturfokus nach dem Senden von Tasten zu PowerShell zurückkehrt |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung zwischen dem Senden verschiedener Tastenfolgen in Millisekunden |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Entfernt die Ränder des Browserfensters. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Positionieren Sie das Browserfenster entweder im Vollbildmodus auf einem anderen Monitor als PowerShell oder nebeneinander mit PowerShell auf demselben Monitor. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |

## Examples

### Open-Timeline -Language "English"

```powershell
Open-Timeline -Language "English"
```

Öffnet eine interaktive Zeitleiste mit von Van Gogh inspirierten visuellen Elementen auf Englisch.

### timeline -mon 2

```powershell
timeline -mon 2
```

Öffnet die Zeitleiste auf Monitor 2 mittels Aliasen.

### Open-Timeline -Private -Chrome -FullScreen

```powershell
Open-Timeline -Private -Chrome -FullScreen
```

Zeitleiste im Chrome-Inkognitomodus im Vollbildmodus öffnen.

## Related Links

- [Open-Timeline on GitHub](https://github.com/genXdev/genXdev)
