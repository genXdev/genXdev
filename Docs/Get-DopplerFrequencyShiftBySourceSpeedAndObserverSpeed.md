---
external help file: GenXdev.dll-Help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed

## SYNOPSIS


## SYNTAX

### BySpeed
```
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed [-OriginalFrequencyInHertz] <Double>
 [-SourceSpeedInMetersPerSecond] <Double> [-ObserverSpeedInMetersPerSecond] <Double>
 [[-SpeedOfSoundInMetersPerSecond] <Double>] [[-As] <String>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

### ByMedium
```
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed [-OriginalFrequencyInHertz] <Double>
 [-SourceSpeedInMetersPerSecond] <Double> [-ObserverSpeedInMetersPerSecond] <Double> [-Medium] <String>
 [[-As] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES


## PARAMETERS
### -OriginalFrequencyInHertz
Original frequency in Hz

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
### -SourceSpeedInMetersPerSecond
Source speed in m/s (positive towards observer)

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
### -ObserverSpeedInMetersPerSecond
Observer speed in m/s (positive towards source)

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
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
Position: 3
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
Position: 3
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
Position: 4
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`

