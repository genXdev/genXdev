---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Set-WindowPositionForSecondary

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

```
Set-WindowPositionForSecondary [[-Process] <Process[]>] [-Monitor <Int32>] [-Width <Int32>] [-Height <Int32>]
 [-X <Int32>] [-Y <Int32>] [-Left] [-Right] [-Top] [-Bottom] [-Centered] [-FullScreen] [-NoBorders]
 [-RestoreFocus] [-FocusWindow] [-SetForeground] [-Maximize] [-SetRestored] [-KeysToSend <String[]>]
 [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SendKeyDelayMilliSeconds <Int32>]
 [-PassThru] [-SideBySide] [-SessionOnly] [-ClearSession] [-SkipSession] [-ProgressAction <ActionPreference>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
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
Focus the window after positioning

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

### -FullScreen
Sends F11 to the window

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
The initial height of the window

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
Keystrokes to send to the window after positioning

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

### -Monitor
The monitor to use, 0=default, -1=discard, -2=configured

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

### -PassThru
Returns the process object after positioning

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
Type: Process[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
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
Set the window to foreground after positioning

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
Place window side by side with PowerShell on the same monitor

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
The initial width of the window

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

### -X
The initial X position of the window

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
The initial Y position of the window

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

### System.Diagnostics.Process[]

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
