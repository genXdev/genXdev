# Open-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `sites

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-BrowserBookmarks [[-Queries] <String[]>] [[-Count] <Int32>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Search terms to filter bookmarks |
| `-Count` | Int32 | — | — | 1 | `50` | Maximum number of urls to open |
| `-Edge` | SwitchParameter | — | — | Named | — | Select in Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Select in Google Chrome |
| `-Firefox` | SwitchParameter | — | — | Named | — | Select in Firefox |
| `-Monitor` | Int32 | — | — | Named | `-1` | The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary monitor |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Will either set the window fullscreen on a different monitor than Powershell, or side by side with Powershell on the same monitor |
| `-Private` | SwitchParameter | — | — | Named | — | Opens in incognito/private browsing mode |
| `-Force` | SwitchParameter | — | — | Named | — | Force enable debugging port, stopping existing browsers if needed |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Opens in fullscreen mode |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Show the browser window (not 1d or hidden) |
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
| `-AcceptLang` | String | — | — | Named | `$null` | Set the browser accept-lang http header |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Browser window, see documentation for cmdlet GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the browser window to foreground after opening |
| `-Minimize` | SwitchParameter | — | — | Named | — | Minimize the window after positioning |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximize the window after positioning |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restore the window to normal state after positioning |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restore PowerShell window focus |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Don't re-use existing browser window, instead, create a new one |
| `-Chromium` | SwitchParameter | — | — | Named | — | Opens in Microsoft Edge or Google Chrome, depending on what the default browser is |
| `-All` | SwitchParameter | — | — | Named | — | Opens in all registered modern browsers |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disable the popup blocker |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Prevent returning keyboard focus to PowerShell after sending keys |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Delay between sending different key sequences in milliseconds |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Removes the borders of the browser window |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Related Links

- [Open-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
