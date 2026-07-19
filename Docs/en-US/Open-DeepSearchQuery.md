# Open-DeepSearchQuery

> **Module:** GenXdev.Queries.AI | **Type:** Function | **Aliases:** `aideepseek, `askdeepsearch

## Synopsis

> Opens a DeepSeek query in a webbrowser

## Description

Opens a DeepSeek query in the webbrowser, types in the query and presses enter
to execute the search. This function leverages the DeepSeek AI search engine
to provide intelligent answers and insights for the provided queries.

## Syntax

```powershell
Open-DeepSearchQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The query to execute. |
| `-Language` | String | — | — | 2 | — | The language of the returned search results |
| `-Private` | SwitchParameter | — | — | Named | — | Opens in incognito/private browsing mode |
| `-Force` | SwitchParameter | — | — | Named | — | Force enable debugging port, stopping existing browsers if needed |
| `-Edge` | SwitchParameter | — | — | Named | — | Opens in Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Opens in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Opens in Microsoft Edge or Google Chrome, depending on what the default browser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Opens in Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Use Playwright-managed browser instead of the OS-installed browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Opens the Playwright-managed WebKit browser. Implies -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Run the browser without a visible window |
| `-All` | SwitchParameter | — | — | Named | — | Opens in all registered modern browsers |
| `-Monitor` | Int32 | — | — | Named | `-1` | The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary monitor, defaults to -1, no positioning |
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
| `-AcceptLang` | String | — | — | Named | `$null` | Set the browser accept-lang http header |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Browser window, see documentation for cmdlet GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the browser window to foreground after opening |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximize the window after positioning |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restore the window to normal state after positioning |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restore PowerShell window focus |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Don't re-use existing browser window, instead, create a new one |
| `-PassThru` | SwitchParameter | — | — | Named | — | Returns a [System.Diagnostics.Process] object of the browserprocess |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Prevent returning keyboard focus to PowerShell after sending keys |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Delay between sending different key sequences in milliseconds |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Removes the borders of the browser window |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor. |

## Examples

### Open-DeepSearchQuery -Queries "powershell function"

```powershell
Open-DeepSearchQuery -Queries "powershell function"
```

Opens DeepSeek and searches for "powershell function" using default settings.

### aideepseek "powershell function"

```powershell
aideepseek "powershell function"
```

Uses the alias to search for "powershell function" with default parameters.

### Open-DeepSearchQuery -Queries "machine learning basics" -Monitor 0 -FullScreen

```powershell
Open-DeepSearchQuery -Queries "machine learning basics" -Monitor 0 -FullScreen
```

Opens DeepSeek in fullscreen mode on the primary monitor to search for
"machine learning basics".

## Related Links

- [Open-DeepSearchQuery on GitHub](https://github.com/genXdev/genXdev)
