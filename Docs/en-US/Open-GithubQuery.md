# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub, `qgh

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-GithubQuery -Query <String[]> [-AcceptLang <String>] [-CaseSensitive] [-In <String[]>] [-Language <String>] [-Order <String>] [-Org <String>] [-Page <Int32>] [-PassThru] [-PerPage <Int32>] [-Repo <String>] [-Size <String>] [-SortBy <String>] [-Type <String>] [-User <String>] [<CommonParameters>]

Open-GithubQuery [-Extension <String>] [-Filename <String>] [-Path <String>] [<CommonParameters>]

Open-GithubQuery [-Assignee <String>] [-Author <String>] [-Labels <String[]>] [-No <String[]>] [-State <String>] [<CommonParameters>]

Open-GithubQuery [-Api] [-AsJob] [-RawResponse] [-Token <String>] [<CommonParameters>]

Open-GithubQuery [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The search queries to execute on Github. Supports multiple queries and pipeline input for batch searching. Each query will be URL-encoded and used to search Github. |
| `-Type` | String | — | — | Named | `'Code'` | The major category to search. Defaults to 'Code'. |
| `-In` | String[] | — | — | Named | — | Field(s) to search. Only valid options for the selected Type will be accepted. |
| `-User` | String | — | — | Named | — | Restrict the search to a user's resources (repos, code, issues, etc.). |
| `-Org` | String | — | — | Named | — | Restrict search to an organization. |
| `-Repo` | String | — | — | Named | — | Restrict search to a named repository ('owner/repo'). |
| `-Path` | String | — | — | Named | — | Restrict code search to specific file or directory paths (supports wildcards per GitHub Search Syntax). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | Filter results by the filename (not path). *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | Restrict code search to file extensions. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | Filter by programming language. |
| `-Size` | String | — | — | Named | — | File/repo size. Supports numeric and range syntax (see examples). |
| `-State` | String | — | — | Named | — | For issues/PR. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Issues/PR: limit to those created by a specified user. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Issues/PR: limit to those assigned a user. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Issues/PR: must be labeled with all specified strings. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Issues/PR: must lack certain metadata (e.g., label, milestone). *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | Sort field (depends on Type). E.g., "stars", "forks", "updated", etc. |
| `-Order` | String | — | — | Named | — | "asc" or "desc" order for sorting. |
| `-PerPage` | Int32 | — | — | Named | `10` | Page size (max 100). |
| `-Page` | Int32 | — | — | Named | `1` | Page number for paged results. |
| `-Token` | String | — | — | Named | — | GitHub OAuth or Personal Access Token. If not supplied, uses GITHUB_TOKEN or environment variable. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | Set the browser accept-lang http header. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Delay between sending different key sequences in milliseconds. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | The monitor to display results on. 0 = default, -1 = discard, -2 = secondary. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | The initial width of the browser window. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | The initial height of the browser window. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | The initial X position of the browser window. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | The initial Y position of the browser window. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the browser window, see documentation for cmdlet GenXdev\Send-Key. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Only match case-sensitive results (where supported). |
| `-AsJob` | SwitchParameter | — | — | Named | — | Run the search asynchronously as a PowerShell job. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | Output raw JSON result from the API. *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | Use API mode instead of opening in web browser. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | Opens the browser in private/incognito browsing mode for anonymous searching. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Force enable debugging port, stopping existing browsers if needed. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Opens the search results in Microsoft Edge browser. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Opens the search results in Google Chrome browser. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Opens the search results in Microsoft Edge or Google Chrome, depending on what the default browser is. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Opens the search results in Mozilla Firefox browser. *(Parameter set: )* |
| `-All` | SwitchParameter | — | — | Named | — | Opens the search results in all registered modern browsers. *(Parameter set: )* |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Opens the browser in fullscreen mode. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | Place browser window on the left side of the screen. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | Place browser window on the top side of the screen. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | Place browser window in the center of the screen. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Hide the browser controls. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Prevent loading of browser extensions. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disable the popup blocker in the browser. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the browser window to foreground after opening. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximize the window after positioning. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restore PowerShell window focus. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Don't re-use existing browser window, instead, create a new one. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Returns a [System.Diagnostics.Process] object of the browserprocess in web mode or query object in API mode. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url. *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | After opening webbrowser, return the url. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keys. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Prevent returning keyboard focus to PowerShell after sending keys. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Send Shift+Enter instead of regular Enter for line breaks. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove window borders and title bar for a cleaner appearance. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Place browser window side by side with PowerShell on the same monitor. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for preferences. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for preferences. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session. *(Parameter set: )* |

## Outputs

- `PSObject`

## Related Links

- [Open-GithubQuery on GitHub](https://github.com/genXdev/genXdev)
