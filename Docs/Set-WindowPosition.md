---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Set-WindowPosition

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### Default (Default)
```
Set-WindowPosition [-Monitor <Int32>] [-NoBorders] [-Width <Int32>] [-Height <Int32>] [-X <Int32>] [-Y <Int32>]
 [-Left] [-Right] [-Top] [-Bottom] [-Centered] [-Fullscreen] [-RestoreFocus] [-PassThru] [-SideBySide]
 [-FocusWindow] [-SetForeground] [-Minimize] [-Maximize] [-SetRestored] [-KeysToSend <String[]>]
 [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SendKeyDelayMilliSeconds <Int32>]
 [-SessionOnly] [-ClearSession] [-SkipSession] [-OnlyOutputCoords] [-ProgressAction <ActionPreference>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ProcessName
```
Set-WindowPosition [[-ProcessName] <String>] [-Monitor <Int32>] [-NoBorders] [-Width <Int32>] [-Height <Int32>]
 [-X <Int32>] [-Y <Int32>] [-Left] [-Right] [-Top] [-Bottom] [-Centered] [-Fullscreen] [-RestoreFocus]
 [-PassThru] [-SideBySide] [-FocusWindow] [-SetForeground] [-Minimize] [-Maximize] [-SetRestored]
 [-KeysToSend <String[]>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter]
 [-SendKeyDelayMilliSeconds <Int32>] [-SessionOnly] [-ClearSession] [-SkipSession] [-OnlyOutputCoords]
 [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Process
```
Set-WindowPosition [-Process <Process>] [-Monitor <Int32>] [-NoBorders] [-Width <Int32>] [-Height <Int32>]
 [-X <Int32>] [-Y <Int32>] [-Left] [-Right] [-Top] [-Bottom] [-Centered] [-Fullscreen] [-RestoreFocus]
 [-PassThru] [-SideBySide] [-FocusWindow] [-SetForeground] [-Minimize] [-Maximize] [-SetRestored]
 [-KeysToSend <String[]>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter]
 [-SendKeyDelayMilliSeconds <Int32>] [-SessionOnly] [-ClearSession] [-SkipSession] [-OnlyOutputCoords]
 [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### WindowHelper
```
Set-WindowPosition [-WindowHelper <WindowObj[]>] [-Monitor <Int32>] [-NoBorders] [-Width <Int32>]
 [-Height <Int32>] [-X <Int32>] [-Y <Int32>] [-Left] [-Right] [-Top] [-Bottom] [-Centered] [-Fullscreen]
 [-RestoreFocus] [-PassThru] [-SideBySide] [-FocusWindow] [-SetForeground] [-Minimize] [-Maximize]
 [-SetRestored] [-KeysToSend <String[]>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter]
 [-SendKeyDelayMilliSeconds <Int32>] [-SessionOnly] [-ClearSession] [-SkipSession] [-OnlyOutputCoords]
 [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm] [<CommonParameters>]
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

### -Bottom
Place window on the bottom side of the screen

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
Place window in the center of the screen

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

### -ClearSession
Clear alternative settings stored in session for AI preferences

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

### -FocusWindow
Focus the window after opening

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: fw, focus

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Fullscreen
Maximize the window

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: fs

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Height
Window height in pixels

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

### -KeysToSend
Keystrokes to send to the Window, see documentation for cmdlet GenXdev\Send-Key

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

### -Left
Place window on the left side of the screen

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

### -Maximize
Maximize the window after positioning

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

### -Minimize
Minimizes the window after positioning

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

### -Monitor
Monitor selection: 0=primary, 1+=specific monitor, -1=current, -2=secondary

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: m, mon

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoBorders
Removes the borders of the window

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: nb

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OnlyOutputCoords
Only output the calculated coordinates and size without actually positioning the window

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

### -PassThru
Returns the window helper for each process

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

### -Process
The process of the window to position

```yaml
Type: Process
Parameter Sets: Process
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ProcessName
The process name of the window to position

```yaml
Type: String
Parameter Sets: ProcessName
Aliases: Name

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: True
```

### -RestoreFocus
Restore PowerShell window focus

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: rf, bg

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Right
Place window on the right side of the screen

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

### -SendKeyDelayMilliSeconds
Delay between different input strings in milliseconds when sending keys

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: DelayMilliSeconds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendKeyEscape
Escape control characters and modifiers when sending keys

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: Escape

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendKeyHoldKeyboardFocus
Hold keyboard focus on target window when sending keys

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: HoldKeyboardFocus

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SendKeyUseShiftEnter
Use Shift+Enter instead of Enter when sending keys

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: UseShiftEnter

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SessionOnly
Use alternative settings stored in session for AI preferences

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

### -SetForeground
Set the window to foreground after opening

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: fg

Required: False
Position: Named
Default value: None
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
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SideBySide
Will either set the window fullscreen on a different monitor than Powershell, or side by side with Powershell on the same monitor

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: sbs

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipSession
Store settings only in persistent preferences without affecting session

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: FromPreferences

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Top
Place window on the top side of the screen

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
Window width in pixels

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

### -WindowHelper
Get-Window helper object for direct window manipulation

```yaml
Type: WindowObj[]
Parameter Sets: WindowHelper
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -X
Window horizontal position in pixels

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

### -Y
Window vertical position in pixels

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

### System.String

### System.Diagnostics.Process

### GenXdev.Helpers.WindowObj[]

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
