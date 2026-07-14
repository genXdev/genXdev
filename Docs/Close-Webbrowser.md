---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Close-Webbrowser

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### Specific (Default)
```
Close-Webbrowser [-Edge] [-Chrome] [-Chromium] [-Firefox] [-IncludeBackgroundProcesses]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### All
```
Close-Webbrowser [-All] [-IncludeBackgroundProcesses] [-ProgressAction <ActionPreference>] [<CommonParameters>]
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

### -All
Closes all registered modern browsers

```yaml
Type: SwitchParameter
Parameter Sets: All
Aliases: a

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Chrome
Closes Google Chrome browser instances

```yaml
Type: SwitchParameter
Parameter Sets: Specific
Aliases: ch

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Chromium
Closes default chromium-based browser

```yaml
Type: SwitchParameter
Parameter Sets: Specific
Aliases: c

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Edge
Closes Microsoft Edge browser instances

```yaml
Type: SwitchParameter
Parameter Sets: Specific
Aliases: e

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Firefox
Closes Firefox browser instances

```yaml
Type: SwitchParameter
Parameter Sets: Specific
Aliases: ff

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeBackgroundProcesses
Closes all instances including background tasks

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: bg, Force

Required: False
Position: 4
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
