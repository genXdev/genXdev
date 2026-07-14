---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Stop-TextToSpeech

## SYNOPSIS
Immediately stops any ongoing text-to-speech output.

## SYNTAX

```
Stop-TextToSpeech [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Halts all active and queued speech synthesis by canceling both standard and
customized speech operations.
This provides an immediate silence for any ongoing
text-to-speech activities.

## EXAMPLES

### EXAMPLE 1
```
Stop-TextToSpeech
Immediately stops any ongoing speech
```

### EXAMPLE 2
```
say "Hello world"; sst
Starts speaking but gets interrupted immediately
```

## PARAMETERS

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
This cmdlet is commonly used in conjunction with Start-TextToSpeech (alias: say)
and Skip-TextToSpeech (alias: sstSkip) for speech control.

## RELATED LINKS
