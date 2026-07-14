---
external help file: GenXdev.dll-Help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Save-DesktopScreenShot

## SYNOPSIS


## SYNTAX

```
Save-DesktopScreenShot [-Monitor] <Int32> [-OutputPath] <String> [-Quality <Int32>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES


## PARAMETERS
### -Monitor
Monitor index to capture (0=primary, 1+=specific monitor, -1=all monitors)

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -OutputPath
Full path where the screenshot will be saved

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -Quality
JPEG quality level (1-100), only applies to JPEG format

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`

