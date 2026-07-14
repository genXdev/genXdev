---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Open-GithubQuery

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### Web (Default)
```
Open-GithubQuery [-Query] <String[]> [-Type <String>] [-In <String[]>] [-User <String>] [-Org <String>]
 [-Repo <String>] [-Language <String>] [-Size <String>] [-SortBy <String>] [-Order <String>] [-PerPage <Int32>]
 [-Page <Int32>] [-AcceptLang <String>] [-SendKeyDelayMilliSeconds <Int32>] [-Monitor <Int32>] [-Width <Int32>]
 [-Height <Int32>] [-X <Int32>] [-Y <Int32>] [-KeysToSend <String[]>] [-CaseSensitive] [-Private] [-Force]
 [-Edge] [-Chrome] [-Chromium] [-Firefox] [-All] [-FullScreen] [-Left] [-Right] [-Top] [-Bottom] [-Centered]
 [-ApplicationMode] [-NoBrowserExtensions] [-DisablePopupBlocker] [-FocusWindow] [-SetForeground] [-Maximize]
 [-RestoreFocus] [-NewWindow] [-PassThru] [-ReturnURL] [-ReturnOnlyURL] [-SendKeyEscape]
 [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-NoBorders] [-SideBySide] [-SessionOnly] [-ClearSession]
 [-SkipSession] [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Code
```
Open-GithubQuery [-Query] <String[]> [-Type <String>] [-In <String[]>] [-User <String>] [-Org <String>]
 [-Repo <String>] [-Path <String>] [-Filename <String>] [-Extension <String>] [-Language <String>]
 [-Size <String>] [-SortBy <String>] [-Order <String>] [-PerPage <Int32>] [-Page <Int32>]
 [-AcceptLang <String>] [-CaseSensitive] [-PassThru] [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### Issue
```
Open-GithubQuery [-Query] <String[]> [-Type <String>] [-In <String[]>] [-User <String>] [-Org <String>]
 [-Repo <String>] [-Language <String>] [-Size <String>] [-State <String>] [-Author <String>]
 [-Assignee <String>] [-Labels <String[]>] [-No <String[]>] [-SortBy <String>] [-Order <String>]
 [-PerPage <Int32>] [-Page <Int32>] [-AcceptLang <String>] [-CaseSensitive] [-PassThru]
 [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Api
```
Open-GithubQuery [-Query] <String[]> [-Type <String>] [-In <String[]>] [-User <String>] [-Org <String>]
 [-Repo <String>] [-Language <String>] [-Size <String>] [-SortBy <String>] [-Order <String>] [-PerPage <Int32>]
 [-Page <Int32>] [-Token <String>] [-AcceptLang <String>] [-CaseSensitive] [-AsJob] [-RawResponse] [-Api]
 [-PassThru] [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AcceptLang
Set the browser accept-lang http header.

```yaml
Type: String
Parameter Sets: (All)
Aliases: lang, locale

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -All
Opens the search results in all registered modern browsers.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Api
Use API mode instead of opening in web browser.

```yaml
Type: SwitchParameter
Parameter Sets: Api
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ApplicationMode
Hide the browser controls.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: a, app, appmode

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AsJob
Run the search asynchronously as a PowerShell job.

```yaml
Type: SwitchParameter
Parameter Sets: Api
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Assignee
Issues/PR: limit to those assigned a user.

```yaml
Type: String
Parameter Sets: Issue
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Author
Issues/PR: limit to those created by a specified user.

```yaml
Type: String
Parameter Sets: Issue
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Bottom
Place browser window on the bottom side of the screen.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CaseSensitive
Only match case-sensitive results (where supported).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Centered
Place browser window in the center of the screen.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Chrome
Opens the search results in Google Chrome browser.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: ch

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Chromium
Opens the search results in Microsoft Edge or Google Chrome, depending on what the default browser is.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: c

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClearSession
Clear alternative settings stored in session for preferences.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisablePopupBlocker
Disable the popup blocker in the browser.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: allowpopups

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Edge
Opens the search results in Microsoft Edge browser.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: e

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Extension
Restrict code search to file extensions.

```yaml
Type: String
Parameter Sets: Code
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Filename
Filter results by the filename (not path).

```yaml
Type: String
Parameter Sets: Code
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Firefox
Opens the search results in Mozilla Firefox browser.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: ff

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FocusWindow
Focus the browser window after opening.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: fw, focus

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
Force enable debugging port, stopping existing browsers if needed.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FullScreen
Opens the browser in fullscreen mode.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: fs, f

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Height
The initial height of the browser window.

```yaml
Type: Int32
Parameter Sets: Web
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -In
Field(s) to search.
Only valid options for the selected Type will be accepted.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: Name, Description, Readme, File, Path, Title, Body, Comments, Login, Email, FullName, Topics

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeysToSend
Keystrokes to send to the browser window, see documentation for cmdlet GenXdev\Send-Key.

```yaml
Type: String[]
Parameter Sets: Web
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Labels
Issues/PR: must be labeled with all specified strings.

```yaml
Type: String[]
Parameter Sets: Issue
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Language
Filter by programming language.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Left
Place browser window on the left side of the screen.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Maximize
Maximize the window after positioning.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Monitor
The monitor to display results on.
0 = default, -1 = discard, -2 = secondary.

```yaml
Type: Int32
Parameter Sets: Web
Aliases: m, mon

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NewWindow
Don't re-use existing browser window, instead, create a new one.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: nw, new

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -No
Issues/PR: must lack certain metadata (e.g., label, milestone).

```yaml
Type: String[]
Parameter Sets: Issue
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoBorders
Remove window borders and title bar for a cleaner appearance.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: nb

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoBrowserExtensions
Prevent loading of browser extensions.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: de, ne, NoExtensions

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Order
"asc" or "desc" order for sorting.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: asc, desc

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Org
Restrict search to an organization.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Page
Page number for paged results.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Returns a \[System.Diagnostics.Process\] object of the browserprocess in web mode or query object in API mode.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: pt

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Path
Restrict code search to specific file or directory paths (supports wildcards per GitHub Search Syntax).

```yaml
Type: String
Parameter Sets: Code
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PerPage
Page size (max 100).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Private
Opens the browser in private/incognito browsing mode for anonymous searching.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: incognito, inprivate

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Query
The search queries to execute on Github.
Supports multiple queries and pipeline input for batch searching.
Each query will be URL-encoded and used to search Github.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: q, Name, Text, Queries

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -RawResponse
Output raw JSON result from the API.

```yaml
Type: SwitchParameter
Parameter Sets: Api
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Repo
Restrict search to a named repository ('owner/repo').

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RestoreFocus
Restore PowerShell window focus.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: rf, bg

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReturnOnlyURL
After opening webbrowser, return the url.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReturnURL
Don't open webbrowser, just return the url.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Right
Place browser window on the right side of the screen.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds.

```yaml
Type: Int32
Parameter Sets: Web
Aliases: DelayMilliSeconds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendKeyEscape
Escape control characters when sending keys.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: Escape

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendKeyHoldKeyboardFocus
Prevent returning keyboard focus to PowerShell after sending keys.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: HoldKeyboardFocus

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendKeyUseShiftEnter
Send Shift+Enter instead of regular Enter for line breaks.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: UseShiftEnter

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SessionOnly
Use alternative settings stored in session for preferences.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SetForeground
Set the browser window to foreground after opening.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: fg

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SideBySide
Place browser window side by side with PowerShell on the same monitor.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: sbs

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Size
File/repo size.
Supports numeric and range syntax (see examples).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipSession
Store settings only in persistent preferences without affecting session.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases: FromPreferences

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SortBy
Sort field (depends on Type).
E.g., "stars", "forks", "updated", etc.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -State
For issues/PR.

```yaml
Type: String
Parameter Sets: Issue
Aliases:
Accepted values: open, closed, all

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Token
GitHub OAuth or Personal Access Token.
If not supplied, uses GITHUB_TOKEN or environment variable.

```yaml
Type: String
Parameter Sets: Api
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Top
Place browser window on the top side of the screen.

```yaml
Type: SwitchParameter
Parameter Sets: Web
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
The major category to search.
Defaults to 'Code'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Repository, Code, Issue, PullRequest, Commit, User, Discussion, Topic, Wiki

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -User
Restrict the search to a user's resources (repos, code, issues, etc.).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Width
The initial width of the browser window.

```yaml
Type: Int32
Parameter Sets: Web
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -X
The initial X position of the browser window.

```yaml
Type: Int32
Parameter Sets: Web
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Y
The initial Y position of the browser window.

```yaml
Type: Int32
Parameter Sets: Web
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String[]

## OUTPUTS

### System.Management.Automation.PSObject

## NOTES

## RELATED LINKS

[https://docs.github.com/en/rest/search](https://docs.github.com/en/rest/search)

