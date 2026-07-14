---
external help file: GenXdev.dll-Help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Get-Window

## SYNOPSIS


## SYNTAX

```
Get-Window [[-ProcessName] <String>] [-ProcessId <Int32>] [-WindowHandle <Int64>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES


## PARAMETERS
### -ProcessName
Name of the process to get window information for

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: Name

Required: False
Position: 0
Default value: 
Accept pipeline input: False
Accept wildcard characters: True
`
### -ProcessId
ID of the process to get window information for

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: Id, PID

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -WindowHandle
Window handle to get information for

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: Handle, hWnd

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`

