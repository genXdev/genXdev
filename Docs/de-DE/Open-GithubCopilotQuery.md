# Open-GithubCopilotQuery

> **Module:** GenXdev.Queries.AI | **Type:** Function | **Aliases:** `aigc, `askghcopilot

## Synopsis

> Öffnet eine Github CoPilot Abfrage in einem Webbrowser

## Description

Öffnet eine Github CoPilot-Abfrage im Webbrowser und gibt die angegebene Abfrage automatisch ein. Die Funktion wartet, bis die Seite geladen ist, bevor sie die Abfrage eingibt. Diese Funktion verwendet die zugrunde liegende Open-WebsiteAndPerformQuery-Funktion, um die Browserautomatisierung zu handhaben, und bietet eine bequeme Möglichkeit, mit GitHub Copilot über PowerShell mit umfangreichen Browserkonfigurationsoptionen zu interagieren.

## Syntax

```powershell
Open-GithubCopilotQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Die auszuführende Abfrage. |
| `-Language` | String | — | — | 1 | — | Die Sprache der zurückgegebenen Suchergebnisse |
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
| `-Monitor` | Int32 | — | — | Named | `-1` | Der zu verwendende Monitor: 0 = Standard, -1 = Verwerfen, -2 = Konfigurierter sekundärer Monitor, Standard ist -1, keine Positionierung |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Öffnet im Vollbildmodus |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | The `-ShowWindow` parameter. |
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
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokussieren Sie das Browserfenster nach dem Öffnen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the browser window to foreground after opening |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximieren Sie das Fenster nach der Positionierung |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restore the window to normal state after positioning |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-Fokus wiederherstellen |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Statt ein vorhandenes Browserfenster wiederzuverwenden, erstelle ein neues. |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Verhindern, dass der Tastaturfokus nach dem Senden von Tasten zu PowerShell zurückkehrt |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung zwischen dem Senden verschiedener Tastenfolgen in Millisekunden |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Fensterrahmen und Titelleiste entfernen für ein saubereres Erscheinungsbild |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Positionieren Sie das Browserfenster entweder im Vollbildmodus auf einem anderen Monitor als PowerShell oder nebeneinander mit PowerShell auf demselben Monitor. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Gibt ein [System.Diagnostics.Process]-Objekt des Browserprozesses zurück |

## Examples

### Open-GithubCopilotQuery -Queries "How to implement bubble sort in C#"

```powershell
Open-GithubCopilotQuery -Queries "How to implement bubble sort in C#"
```

### aigc "implement binary search"

```powershell
aigc "implement binary search"
```

## Related Links

- [Open-GithubCopilotQuery on GitHub](https://github.com/genXdev/genXdev)
