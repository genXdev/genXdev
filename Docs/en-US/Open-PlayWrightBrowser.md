# Open-PlayWrightBrowser

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `spb

## Synopsis

> Starts a Playwright-managed browser with a persistent user profile.

## Description

<details>
<summary><b>Expand description</b></summary>

Launches a standalone browser instance powered by Playwright's built-in
Chromium, Firefox, or WebKit binaries — completely independent of any
OS-installed browser. The browser uses a persistent user profile stored
under GenXdev AppData, so cookies, localStorage, and sessions survive
across restarts.

This cmdlet replaces the old CDP/debugging-port approach that broke in
Chrome 136+. Instead of attaching to a system browser via a debugging port,
Playwright manages its own browser lifecycle directly.

Key features:
- Persistent profiles per browser type (Chromium, Firefox, WebKit)
- Configurable viewport size and window position
- Headless mode for automation
- Proxy server support
- Custom Accept-Language header
- Incognito/private context option
- Browser extension control
- Viewport sizing and positioning via -Width, -Height, -Left, -Right, etc.
- Force-restart to close existing instance and start fresh

The launched browser and its context/page are stored in
$Global:GenXdevPlaywright for use by other cmdlets.

</details>
## Syntax

```powershell
Open-PlayWrightBrowser [[-BrowserType] <String>] [-AcceptLang <String>] [-Bottom] [-Centered] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-FocusWindow] [-Force] [-ForceConsent] [-Fullscreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-Proxy <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | `'Chromium'` | The browser engine to launch: Chromium, Firefox, or WebKit |
| `-Headless` | SwitchParameter | — | — | Named | — | Run the browser without a visible window |
| `-Proxy` | String | — | — | Named | — | Proxy server URL (e.g. http://proxy:8080) |
| `-AcceptLang` | String | — | — | Named | — | Set the browser Accept-Language HTTP header |
| `-Width` | Int32 | — | — | Named | `-1` | Initial viewport width in pixels |
| `-Height` | Int32 | — | — | Named | `-1` | Initial viewport height in pixels |
| `-Force` | SwitchParameter | — | — | Named | — | Close existing browser and start fresh |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force re-prompting of the installation consent dialog |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatically consent to third-party software installation (Playwright browsers) |
| `-Monitor` | Int32 | — | — | Named | `-1` | The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary monitor, defaults to $Global:DefaultSecondaryMonitor or 2 if not found |
| `-X` | Int32 | — | — | Named | `-999999` | The initial X position of the webbrowser window |
| `-Y` | Int32 | — | — | Named | `-999999` | The initial Y position of the webbrowser window |
| `-Left` | SwitchParameter | — | — | Named | — | Place browser window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Place browser window on the top side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Place browser window in the center of the screen |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximizes window to fill entire screen |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Removes the borders of the window |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restore PowerShell window focus |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the browser window to foreground after opening |
| `-Minimize` | SwitchParameter | — | — | Named | — | Minimizes the window after positioning |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximize the window after positioning |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restore the window to normal state after positioning |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Hold keyboard focus on target window when sending keys |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Delay between different input strings in milliseconds when sending keys |
| `-PassThru` | SwitchParameter | — | — | Named | — | Returns window helper object for further manipulation |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
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
