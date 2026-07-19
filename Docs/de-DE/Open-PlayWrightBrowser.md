# Open-PlayWrightBrowser

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `spb

## Synopsis

> Startet einen von Playwright verwalteten Browser mit einem persistenten Benutzerprofil.

## Description

<details>
<summary><b>Expand description</b></summary>

Startet eine eigenständige Browserinstanz, die von Playwrights integrierten Chromium-, Firefox- oder WebKit-Binärdateien betrieben wird – völlig unabhängig von einem im Betriebssystem installierten Browser. Der Browser verwendet ein persistentes Benutzerprofil, das unter GenXdev AppData gespeichert ist, sodass Cookies, localStorage und Sitzungen über Neustarts hinweg erhalten bleiben.

Dieses Cmdlet ersetzt den alten CDP/Debugging-Port-Ansatz, der in Chrome 136+ nicht mehr funktioniert. Anstatt sich über einen Debugging-Port mit einem Systembrowser zu verbinden, verwaltet Playwright seinen eigenen Browserlebenszyklus direkt.

Hauptfunktionen:
- Persistente Profile pro Browsertyp (Chromium, Firefox, WebKit)
- Konfigurierbare Viewport-Größe und Fensterposition
- Headless-Modus für Automatisierung
- Proxy-Server-Unterstützung
- Benutzerdefinierter Accept-Language-Header
- Inkognito-/Privater Kontext-Option
- Browsererweiterungssteuerung
- Viewport-Größenanpassung und Positionierung über -Width, -Height, -Left, -Right usw.
- Force-Neustart zum Schließen der vorhandenen Instanz und sauberen Neustart

Der gestartete Browser und sein Kontext/Seite werden in $Global:GenXdevPlaywright gespeichert, um von anderen Cmdlets verwendet zu werden.

</details>
## Syntax

```powershell
Open-PlayWrightBrowser [[-BrowserType] <String>] [-AcceptLang <String>] [-Bottom] [-Centered] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-FocusWindow] [-Force] [-ForceConsent] [-Fullscreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-Proxy <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | `'Chromium'` | Die zu startende Browser-Engine: Chromium, Firefox oder WebKit |
| `-Headless` | SwitchParameter | — | — | Named | — | Führen Sie den Browser ohne sichtbares Fenster aus |
| `-Proxy` | String | — | — | Named | — | Proxy-Server-URL (z.B. http://proxy:8080) |
| `-AcceptLang` | String | — | — | Named | — | Den HTTP-Header Accept-Language des Browsers festlegen |
| `-Width` | Int32 | — | — | Named | `-1` | Anfangs-Viewport-Breite in Pixeln |
| `-Height` | Int32 | — | — | Named | `-1` | Anfängliche Ansichtsfensterhöhe in Pixeln |
| `-Force` | SwitchParameter | — | — | Named | — | Schließen Sie den vorhandenen Browser und starten Sie ihn neu |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Erneute Aufforderung des Installationszustimmungsdialogs erzwingen |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch der Installation von Drittanbieter-Software zustimmen (Playwright-Browser) |
| `-Monitor` | Int32 | — | — | Named | `-1` | Der zu verwendende Monitor, 0 = Standard, -1 = verwerfen, -2 = Konfigurierter sekundärer Monitor, standardmäßig $Global:DefaultSecondaryMonitor oder 2, falls nicht gefunden |
| `-X` | Int32 | — | — | Named | `-999999` | Die anfängliche X-Position des Webbrowser-Fensters |
| `-Y` | Int32 | — | — | Named | `-999999` | Die anfängliche Y-Position des Webbrowser-Fensters |
| `-Left` | SwitchParameter | — | — | Named | — | Place browser window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Platzieren Sie das Browserfenster auf der oberen Seite des Bildschirms |
| `-Bottom` | SwitchParameter | — | — | Named | — | Fenster unten am Bildschirmrand platzieren |
| `-Centered` | SwitchParameter | — | — | Named | — | Place browser window in the center of the screen |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximiert Fenster, um den gesamten Bildschirm auszufüllen |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Entfernt die Rahmen des Fensters |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-Fokus wiederherstellen |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Positionieren Sie das Browserfenster entweder im Vollbildmodus auf einem anderen Monitor als PowerShell oder nebeneinander mit PowerShell auf demselben Monitor |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokussieren Sie das Browserfenster nach dem Öffnen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the browser window to foreground after opening |
| `-Minimize` | SwitchParameter | — | — | Named | — | Minimiert das Fenster nach der Positionierung |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximieren Sie das Fenster nach der Positionierung |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restore the window to normal state after positioning |
| `-KeysToSend` | String[] | — | — | Named | — | Tastendrücke, die an das Fenster gesendet werden sollen (siehe Dokumentation für das Cmdlet GenXdev\Send-Key) |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Behält den Tastaturfokus auf dem Zielfenster beim Senden von Tastenanschlägen |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung zwischen verschiedenen Eingabezeichenfolgen in Millisekunden beim Senden von Tasten |
| `-PassThru` | SwitchParameter | — | — | Named | — | Gibt das Fenster-Hilfsobjekt für weitere Manipulationen zurück |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | Only output the calculated coordinates and size without actually positioning the window |

## Examples

### Open-PlayWrightBrowser Launches a persistent Chromium browser with the default profile.

```powershell
Open-PlayWrightBrowser
Launches a persistent Chromium browser with the default profile.
```

### Open-PlayWrightBrowser -BrowserType Firefox -Headless Launches Firefox in headless mode.

```powershell
Open-PlayWrightBrowser -BrowserType Firefox -Headless
Launches Firefox in headless mode.
```

### Open-PlayWrightBrowser -Width 1280 -Height 720 -Force Restarts the browser with a 1280x720 viewport.

```powershell
Open-PlayWrightBrowser -Width 1280 -Height 720 -Force
Restarts the browser with a 1280x720 viewport.
```

### Open-PlayWrightBrowser -Left -Monitor 1 -NoBorders Launches Chromium on the left half of monitor 1 without window borders.

```powershell
Open-PlayWrightBrowser -Left -Monitor 1 -NoBorders
Launches Chromium on the left half of monitor 1 without window borders.
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Open-PlayWrightBrowser on GitHub](https://github.com/genXdev/genXdev)
