---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Open-AllPossibleQueries

## SYNOPSIS
Opens all possible query types for given search terms or URLs.

## SYNTAX

```
Open-AllPossibleQueries [-Queries] <String[]> [[-Language] <String>] [-Private] [-Force] [-Edge] [-Chrome]
 [-Chromium] [-Firefox] [-All] [-Monitor <Int32>] [-ShowWindow] [-Width <Int32>] [-Height <Int32>] [-X <Int32>]
 [-Y <Int32>] [-Left] [-Right] [-Top] [-Bottom] [-Centered] [-ApplicationMode] [-NoBrowserExtensions]
 [-DisablePopupBlocker] [-AcceptLang <String>] [-KeysToSend <String[]>] [-FocusWindow] [-SetForeground]
 [-Maximize] [-SetRestored] [-RestoreFocus] [-NewWindow] [-PassThru] [-ReturnURL] [-ReturnOnlyURL]
 [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SendKeyDelayMilliSeconds <Int32>]
 [-NoBorders] [-SessionOnly] [-ClearSession] [-SkipSession] [-SideBySide] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## DESCRIPTION
Executes all cmdlets that handle webpage queries, processing both URLs and search
terms.
For URLs, it performs site-specific queries, and for search terms it
executes general web queries.
This function dynamically discovers and executes
all available query cmdlets from the GenXdev.Queries module family.

## EXAMPLES

### EXAMPLE 1
```
Open-AllPossibleQueries -Queries "powershell scripting" -Monitor 0
```

Opens all possible query types for "powershell scripting" on the default monitor.

### EXAMPLE 2
```
qq "https://github.com" -m -1
```

Opens all possible query types for the GitHub URL using alias and short parameters.

## PARAMETERS

### -Queries
The search terms or URLs to query.
Can be provided as strings or URLs.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: q, Name, Text, Query

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Language
The language of the returned search results.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Private
Opens in incognito/private browsing mode.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: incognito, inprivate

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
Force enable debugging port, stopping existing browsers if needed.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Edge
Opens in Microsoft Edge.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: e

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Chrome
Opens in Google Chrome.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: ch

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Chromium
Opens in Microsoft Edge or Google Chrome, depending on what the default
browser is.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: c

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Firefox
Opens in Firefox.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: ff

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -All
Opens in all registered modern browsers.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Monitor
The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary
monitor, defaults to -1, no positioning.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: m, mon

Required: False
Position: Named
Default value: -1
Accept pipeline input: False
Accept wildcard characters: False
```

### -ShowWindow
Opens in fullscreen mode

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: sw

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Width
The initial width of the webbrowser window.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: -1
Accept pipeline input: False
Accept wildcard characters: False
```

### -Height
The initial height of the webbrowser window.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: -1
Accept pipeline input: False
Accept wildcard characters: False
```

### -X
The initial X position of the webbrowser window.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: -999999
Accept pipeline input: False
Accept wildcard characters: False
```

### -Y
The initial Y position of the webbrowser window.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: -999999
Accept pipeline input: False
Accept wildcard characters: False
```

### -Left
Place browser window on the left side of the screen.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Right
Place browser window on the right side of the screen.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Top
Place browser window on the top side of the screen.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Bottom
Place browser window on the bottom side of the screen.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Centered
Place browser window in the center of the screen.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ApplicationMode
Hide the browser controls.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: a, app, appmode

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoBrowserExtensions
Prevent loading of browser extensions.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: de, ne, NoExtensions

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisablePopupBlocker
Disable the popup blocker.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: allowpopups

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

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

### -KeysToSend
Keystrokes to send to the Browser window, see documentation for cmdlet
GenXdev\Send-Key.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

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
Parameter Sets: (All)
Aliases: fw, focus

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SetForeground
Set the browser window to foreground after opening.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: fg

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Maximize
Maximize the window after positioning

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SetRestored
Restore the window to normal state after positioning

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -RestoreFocus
Restore PowerShell window focus.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: rf, bg

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -NewWindow
Don't re-use existing browser window, instead, create a new one.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: nw, new

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Returns a \[System.Diagnostics.Process\] object of the browserprocess.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: pt

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReturnURL
Don't open webbrowser, just return the url.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReturnOnlyURL
After opening webbrowser, return the url.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendKeyEscape
Escape control characters when sending keys.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: Escape

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendKeyHoldKeyboardFocus
Prevent returning keyboard focus to PowerShell after sending keys.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: HoldKeyboardFocus

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendKeyUseShiftEnter
Send Shift+Enter instead of regular Enter for line breaks.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: UseShiftEnter

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: DelayMilliSeconds

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoBorders
Removes the borders of the browser window.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: nb

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SessionOnly
Use session-only mode for browser profile.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClearSession
Clear browser session before opening.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipSession
Skip browser session restore.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: FromPreferences

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SideBySide
Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: sbs

Required: False
Position: Named
Default value: False
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

## OUTPUTS

## NOTES

## RELATED LINKS
