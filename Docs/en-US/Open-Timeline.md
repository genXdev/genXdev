# Open-Timeline

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `timeline

## Synopsis

> Opens an interactive timeline showing current time, date, century, and
millennium.

## Description

Opens a web-based interactive timeline.
Supports multiple languages and visual customization options.

## Syntax

```powershell
Open-Timeline [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-BorderDarkColor <String>] [-BorderLightColor <String>] [-BorderWidth <Int32>] [-Bottom] [-BrowserExtensions] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-DragedNodeBackground <String>] [-Edge] [-Firefox] [-FocusedNodeBackground <String>] [-FocusedNodeForeground <String>] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-RotationDelaySeconds <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-SpectateOnly] [-Top] [-UnFocusedNodeBackground <String>] [-UnFocusedNodeForeground <String>] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
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
| `-Monitor` | Int32 | — | — | Named | `-2` | The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary monitor, defaults to Global:DefaultSecondaryMonitor or 2 if not found |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | Don't open in fullscreen mode |
| `-Width` | Int32 | — | — | Named | `-1` | The initial width of the webbrowser window |
| `-Height` | Int32 | — | — | Named | `-1` | The initial height of the webbrowser window |
| `-X` | Int32 | — | — | Named | `-999999` | The initial X position of the webbrowser window |
| `-Y` | Int32 | — | — | Named | `-999999` | The initial Y position of the webbrowser window |
| `-Left` | SwitchParameter | — | — | Named | — | Place browser window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Place browser window on the top side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Place browser window in the center of the screen |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | Do show the browser controls |
| `-BrowserExtensions` | SwitchParameter | — | — | Named | — | Don't prevent loading of browser extensions |
| `-AcceptLang` | String | — | — | Named | `$null` | Set the browser accept-lang http header |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Browser window, see documentation for cmdlet GenXdev\Send-Key |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the browser window to foreground after opening |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximize the window after positioning |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restore the window to normal state after positioning |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restore PowerShell window focus |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Don't re-use existing browser window, instead, create a new one |
| `-PassThru` | SwitchParameter | — | — | Named | — | Returns a [System.Diagnostics.Process] object of the browserprocess |
| `-SpectateOnly` | SwitchParameter | — | — | Named | — | Don't start a new game, just watch the AI play |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | After opening webbrowser, return the url |
| `-Language` | String | — | — | 1 | — | Override default browser language, or select [All] for rotation of all languages every minute |
| `-DragedNodeBackground` | String | — | — | Named | `$null` | Overwrite the css-color-style for painting the currently dragged node's background |
| `-FocusedNodeBackground` | String | — | — | Named | `$null` | Overwrite the css-color-style for painting the focused node's (In center) background |
| `-FocusedNodeForeground` | String | — | — | Named | `$null` | Overwrite the css-color-style for painting the focused node's (in center) foreground text |
| `-UnFocusedNodeBackground` | String | — | — | Named | `$null` | Overwrite the css-color-style for painting the focused node's (In center) background |
| `-UnFocusedNodeForeground` | String | — | — | Named | `$null` | Overwrite the css-color-style for painting the unfocused node's (in center) foreground text |
| `-BorderLightColor` | String | — | — | Named | `$null` | Overwrite the default css border-light-color colorstyle |
| `-BorderDarkColor` | String | — | — | Named | `$null` | Overwrite the default css border-dark-color colorstyle |
| `-BorderWidth` | Int32 | — | — | Named | `1` | Overwrite the default width for painting the node borders |
| `-RotationDelaySeconds` | Int32 | — | — | Named | `15` | Overwrite the default width for the background rotation delay |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Opens in fullscreen mode |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Hide the browser controls |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Prevent loading of browser extensions |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disable the popup blocker |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Prevent returning keyboard focus to PowerShell after sending keys |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Delay between sending different key sequences in milliseconds |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Removes the borders of the browser window. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### Open-Timeline -Language "English"

```powershell
Open-Timeline -Language "English"
```

Opens an interactive timeline with Van Gogh-inspired visuals in English.

### timeline -mon 2

```powershell
timeline -mon 2
```

Opens timeline on monitor 2 using aliases.

### Open-Timeline -Private -Chrome -FullScreen

```powershell
Open-Timeline -Private -Chrome -FullScreen
```

Opens timeline in Chrome incognito mode in fullscreen.

## Related Links

- [Open-Timeline on GitHub](https://github.com/genXdev/genXdev)
