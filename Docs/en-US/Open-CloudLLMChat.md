# Open-CloudLLMChat

> **Module:** GenXdev.Queries.AI | **Type:** Function | **Aliases:** `ask

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-CloudLLMChat -Queries <String[]> [[-EndPoint] <String>] [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NewWindow] [-NoBrowserExtensions] [-PassThru] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The query to execute. |
| `-EndPoint` | String | — | — | 1 | `'XGrok'` | The enpoint to invoke the query on |
| `-Language` | String | — | — | 2 | — | The language of the returned search results |
| `-Private` | SwitchParameter | — | — | Named | — | Opens in incognito/private browsing mode |
| `-Force` | SwitchParameter | — | — | Named | — | Force enable debugging port, stopping existing browsers if needed |
| `-Edge` | SwitchParameter | — | — | Named | — | Opens in Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Opens in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Opens in Microsoft Edge or Google Chrome, depending on what the default browser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Opens in Firefox |
| `-All` | SwitchParameter | — | — | Named | — | Opens in all registered modern browsers |
| `-Monitor` | Int32 | — | — | Named | `-1` | The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary monitor, defaults to -1, no positioning |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Will either set the window fullscreen on a different monitor than Powershell, or side by side with Powershell on the same monitor |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Opens in fullscreen mode |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | The `-ShowWindow` parameter. |
| `-Width` | Int32 | — | — | Named | `-1` | The initial width of the webbrowser window |
| `-Height` | Int32 | — | — | Named | `-1` | The initial height of the webbrowser window |
| `-X` | Int32 | — | — | Named | `-999999` | The initial X position of the webbrowser window |
| `-Y` | Int32 | — | — | Named | `-999999` | The initial Y position of the webbrowser window |
| `-Left` | SwitchParameter | — | — | Named | — | Place browser window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Place browser window on the top side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Place browser window in the center of the screen |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Hide the browser controls |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Prevent loading of browser extensions |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disable the popup blocker |
| `-AcceptLang` | String | — | — | Named | — | Set the browser accept-lang http header |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Browser window, see documentation for cmdlet GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the browser window to foreground after opening |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximize the window after positioning |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restore the window to normal state after positioning |
| `-Minimize` | SwitchParameter | — | — | Named | — | Minimize the window after positioning |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restore PowerShell window focus |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Don't re-use existing browser window, instead, create a new one |
| `-PassThru` | SwitchParameter | — | — | Named | — | Returns a [System.Diagnostics.Process] object of the browserprocess |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | After opening webbrowser, return the url |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Prevent returning keyboard focus to PowerShell after sending keys |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Delay between sending different key sequences in milliseconds |

## Related Links

- [Open-CloudLLMChat on GitHub](https://github.com/genXdev/genXdev)
