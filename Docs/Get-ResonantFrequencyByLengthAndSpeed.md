---
external help file: GenXdev.dll-Help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Get-ResonantFrequencyByLengthAndSpeed

## SYNOPSIS


## SYNTAX

### BySpeed
```
Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <Double> [-SpeedInMetersPerSecond] <Double>
 [[-As] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### ByMedium
```
Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <Double> [-Medium] <String> [[-As] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES


## PARAMETERS
### -LengthInMeters
Length in meters

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
### -SpeedInMetersPerSecond
Wave speed in m/s

`yaml
Type: SwitchParameter
Parameter Sets: (BySpeed)
Aliases: 

Required: True
Position: 1
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -Medium
The medium

`yaml
Type: SwitchParameter
Parameter Sets: (ByMedium)
Aliases: 

Required: True
Position: 1
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -As
Output unit for frequency

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`

