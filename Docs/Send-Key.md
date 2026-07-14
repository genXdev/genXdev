---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Send-Key

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### ByProcessName (Default)
```
Send-Key [-KeysToSend] <String[]> [-ProcessName <String>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus]
 [-SendKeyUseShiftEnter] [-SendKeyDelayMilliSeconds <Int32>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

### ByProcessId
```
Send-Key [-KeysToSend] <String[]> [-ProcessId <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus]
 [-SendKeyUseShiftEnter] [-SendKeyDelayMilliSeconds <Int32>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

### ByWindowHandle
```
Send-Key [-KeysToSend] <String[]> [-WindowHandle <Int64>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus]
 [-SendKeyUseShiftEnter] [-SendKeyDelayMilliSeconds <Int32>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
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

### -KeysToSend
The keyboard input to send as an array of strings

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ProcessId
ID of the process to send keys to

```yaml
Type: Int32
Parameter Sets: ByProcessId
Aliases: Id, PID

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ProcessName
Name of the process to send keys to (supports wildcards)

```yaml
Type: String
Parameter Sets: ByProcessName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: True
```

### -SendKeyDelayMilliSeconds
Delay between different input strings in milliseconds

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
Escape control characters and modifiers in input text

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
Hold keyboard focus on target window after sending keys

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
Use Shift+Enter instead of Enter for newlines

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

### -WindowHandle
Window handle to send keys to

```yaml
Type: Int64
Parameter Sets: ByWindowHandle
Aliases: Handle, hWnd

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
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

### System.String

### System.Int32

### System.Int64

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
