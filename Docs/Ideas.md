---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Ideas

## SYNOPSIS
Displays ideas from a README.md file.

## SYNTAX

```
Ideas [-UseHomeREADME] [-UseOneDriveREADME] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Shows all ideas from the "## Ideas" section of a README.md file.
Can use either
the README in the current location, PowerShell profile directory, or OneDrive
directory.

## EXAMPLES

### EXAMPLE 1
```
Ideas -UseHomeREADME
```

### EXAMPLE 2
```
Ideas -UseOneDriveREADME
```

## PARAMETERS

### -UseHomeREADME
Use README.md from PowerShell profile directory instead of current location.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseOneDriveREADME
Use README.md from OneDrive directory instead of current location.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
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
