---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Pop-Window

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### Default (Default)
```
Pop-Window [-Maximize] [-Minimize] [-Restore] [-Hide] [-Show] [-NoBorders] [-AlwaysOnTop] [-Opacity <Byte>]
 [-Focus] [-FadeIn] [-Left] [-Right] [-Top] [-Bottom] [-Centered] [-ShowWindow] [-Monitor <Int32>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### Dimensions
```
Pop-Window [-Maximize] [-Minimize] [-Restore] [-Hide] [-Show] [-NoBorders] [-AlwaysOnTop] [-Opacity <Byte>]
 -Width <Int32> -Height <Int32> [-Focus] [-FadeIn] [-Left] [-Right] [-Top] [-Bottom] [-Centered] [-ShowWindow]
 [-Monitor <Int32>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### Position
```
Pop-Window [-Maximize] [-Minimize] [-Restore] [-Hide] [-Show] [-NoBorders] [-AlwaysOnTop] [-Opacity <Byte>]
 -X <Int32> -Y <Int32> [-Focus] [-FadeIn] [-Left] [-Right] [-Top] [-Bottom] [-Centered] [-ShowWindow]
 [-Monitor <Int32>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### NoModify
```
Pop-Window [-NoModify] [-ProgressAction <ActionPreference>] [<CommonParameters>]
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

### -AlwaysOnTop
{{ Fill AlwaysOnTop Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Default, Dimensions, Position
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Bottom
{{ Fill Bottom Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Default, Dimensions, Position
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Centered
{{ Fill Centered Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Default, Dimensions, Position
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FadeIn
{{ Fill FadeIn Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Default, Dimensions, Position
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Focus
{{ Fill Focus Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Default, Dimensions, Position
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Height
{{ Fill Height Description }}

```yaml
Type: Int32
Parameter Sets: Dimensions
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Hide
{{ Fill Hide Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Default, Dimensions, Position
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Left
{{ Fill Left Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Default, Dimensions, Position
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Maximize
{{ Fill Maximize Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Default, Dimensions, Position
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Minimize
{{ Fill Minimize Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Default, Dimensions, Position
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Monitor
{{ Fill Monitor Description }}

```yaml
Type: Int32
Parameter Sets: Default, Dimensions, Position
Aliases: m, mon

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoBorders
{{ Fill NoBorders Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Default, Dimensions, Position
Aliases: nb

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoModify
{{ Fill NoModify Description }}

```yaml
Type: SwitchParameter
Parameter Sets: NoModify
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Opacity
{{ Fill Opacity Description }}

```yaml
Type: Byte
Parameter Sets: Default, Dimensions, Position
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Restore
{{ Fill Restore Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Default, Dimensions, Position
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Right
{{ Fill Right Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Default, Dimensions, Position
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Show
{{ Fill Show Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Default, Dimensions, Position
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ShowWindow
{{ Fill ShowWindow Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Default, Dimensions, Position
Aliases: sw

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Top
{{ Fill Top Description }}

```yaml
Type: SwitchParameter
Parameter Sets: Default, Dimensions, Position
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Width
{{ Fill Width Description }}

```yaml
Type: Int32
Parameter Sets: Dimensions
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -X
{{ Fill X Description }}

```yaml
Type: Int32
Parameter Sets: Position
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Y
{{ Fill Y Description }}

```yaml
Type: Int32
Parameter Sets: Position
Aliases:

Required: True
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

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
