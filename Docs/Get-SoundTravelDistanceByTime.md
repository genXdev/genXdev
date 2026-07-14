---
external help file: GenXdev.dll-Help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Get-SoundTravelDistanceByTime

## SYNOPSIS


## SYNTAX

### BySpeed
```
Get-SoundTravelDistanceByTime [-TimeInSeconds] <Double> [[-SpeedOfSoundInMetersPerSecond] <Double>]
 [[-As] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### ByMedium
```
Get-SoundTravelDistanceByTime [-TimeInSeconds] <Double> [-Medium] <String> [[-As] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES


## PARAMETERS
### -TimeInSeconds
The time in seconds

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
### -SpeedOfSoundInMetersPerSecond
Speed of sound in m/s (default: 343)

`yaml
Type: SwitchParameter
Parameter Sets: (BySpeed)
Aliases: 

Required: False
Position: 1
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -Medium
The medium through which sound travels

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
The unit for the output distance

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

