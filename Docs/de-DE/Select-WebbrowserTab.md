# Select-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `st

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Select-WebbrowserTab [[-Id] <Int32>] [<CommonParameters>]

Select-WebbrowserTab -Name <String> [<CommonParameters>]

Select-WebbrowserTab -ByReference <PSObject> [<CommonParameters>]

Select-WebbrowserTab [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SetForeground] [-SetRestored] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Id` | Int32 | — | — | 0 | `-1` | Tab identifier from the shown list *(Parameter set: )* |
| `-Name` | String | ✅ | — | 0 | — | Wählt das erste Register aus, das diesen Namen in der URL enthält *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ByReference` | PSObject | ✅ | — | Named | — | Tab mit Referenz von Get-ChromiumSessionReference auswählen *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | Der zu verwendende Monitor, 0 = Standard, -1 = verwerfen, -2 = Konfigurierter sekundärer Monitor, standardmäßig $Global:DefaultSecondaryMonitor oder 2, falls nicht gefunden |
| `-Width` | Int32 | — | — | Named | `-1` | Die anfängliche Breite des Webbrowser-Fensters |
| `-Height` | Int32 | — | — | Named | `-1` | Die anfängliche Höhe des Webbrowser-Fensters |
| `-X` | Int32 | — | — | Named | `-999999` | Die anfängliche X-Position des Webbrowser-Fensters |
| `-Y` | Int32 | — | — | Named | `-999999` | Die anfängliche Y-Position des Webbrowser-Fensters |
| `-AcceptLang` | String | — | — | Named | — | Setzen Sie den Accept-Language-HTTP-Header des Browsers |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Öffnet im Vollbildmodus |
| `-Private` | SwitchParameter | — | — | Named | — | Öffnet im Inkognito-/Privatmodus |
| `-Chromium` | SwitchParameter | — | — | Named | — | Wird in Microsoft Edge oder Google Chrome geöffnet, je nachdem, welcher der Standardbrowser ist |
| `-Firefox` | SwitchParameter | — | — | Named | — | Öffnet in Firefox |
| `-All` | SwitchParameter | — | — | Named | — | Öffnet in allen registrierten modernen Browsern |
| `-Left` | SwitchParameter | — | — | Named | — | Place browser window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Platzieren Sie das Browserfenster auf der oberen Seite des Bildschirms |
| `-Bottom` | SwitchParameter | — | — | Named | — | Fenster unten am Bildschirmrand platzieren |
| `-Centered` | SwitchParameter | — | — | Named | — | Place browser window in the center of the screen |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Blenden Sie die Browsersteuerelemente aus |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Prävention des Ladens von Browser-Erweiterungen |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Deaktivieren Sie den Popup-Blocker |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell-Fokus wiederherstellen |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Statt ein vorhandenes Browserfenster wiederzuverwenden, erstelle ein neues. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Fokussieren Sie das Browserfenster nach dem Öffnen |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the browser window to foreground after opening |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximieren Sie das Fenster nach der Positionierung |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restore the window to normal state after positioning |
| `-KeysToSend` | String[] | — | — | Named | — | Tastenanschläge, die an das Browserfenster gesendet werden sollen, siehe Dokumentation für das Cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Verhindern, dass der Tastaturfokus nach dem Senden von Tasten zu PowerShell zurückkehrt |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung zwischen dem Senden verschiedener Tastenfolgen in Millisekunden |
| `-Edge` | SwitchParameter | — | — | Named | — | Wird in Microsoft Edge geöffnet |
| `-Chrome` | SwitchParameter | — | — | Named | — | Öffnet in Google Chrome |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwingt bei Bedarf einen Neustart des Browsers |

## Outputs

- `String`
- `PSObject`

## Related Links

- [Select-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)
