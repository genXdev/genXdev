# Open-GenXdevAppCatalog

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `appcatalog

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-GenXdevAppCatalog [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | Die Sprache der zurückgegebenen Suchergebnisse |
| `-Private` | SwitchParameter | — | — | Named | — | Öffnet im Inkognito-/Privatmodus |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwinge das Aktivieren des Debug-Ports, stoppe ggf. vorhandene Browser |
| `-Edge` | SwitchParameter | — | — | Named | — | Wird in Microsoft Edge geöffnet |
| `-Chrome` | SwitchParameter | — | — | Named | — | Öffnet in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Wird in Microsoft Edge oder Google Chrome geöffnet, je nachdem, welcher der Standardbrowser ist |
| `-Firefox` | SwitchParameter | — | — | Named | — | Öffnet in Firefox |
| `-All` | SwitchParameter | — | — | Named | — | Öffnet in allen registrierten modernen Browsern |
| `-Monitor` | Int32 | — | — | Named | `-2` | Der zu verwendende Monitor: 0 = Standard, -1 = Verwerfen, -2 = Konfigurierter sekundärer Monitor, Standard ist -1, keine Positionierung |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Öffnet im Vollbildmodus |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Zeigen Sie das Browserfenster (nicht minimiert oder ausgeblendet) |
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
| `-AcceptLang` | String | — | — | Named | `$null` | Setzen Sie den Accept-Language-HTTP-Header des Browsers |
| `-KeysToSend` | String[] | — | — | Named | — | Tastenanschläge, die an das Browserfenster gesendet werden sollen, siehe Dokumentation für das Cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Verhindern, dass der Tastaturfokus nach dem Senden von Tasten zu PowerShell zurückkehrt |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung zwischen dem Senden verschiedener Tastenfolgen in Millisekunden |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokussieren Sie das Browserfenster nach dem Öffnen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the browser window to foreground after opening |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximieren Sie das Fenster nach der Positionierung |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restore the window to normal state after positioning |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-Fokus wiederherstellen |
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

## Related Links

- [Open-GenXdevAppCatalog on GitHub](https://github.com/genXdev/genXdev)
