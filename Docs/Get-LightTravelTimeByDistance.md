---
external help file: GenXdev.dll-Help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Get-LightTravelTimeByDistance

## SYNOPSIS


## SYNTAX

### BySpeed
```
Get-LightTravelTimeByDistance [-DistanceInMeters] <Double> [[-SpeedOfLightInMetersPerSecond] <Double>]
 [[-As] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### ByMedium
```
Get-LightTravelTimeByDistance [-DistanceInMeters] <Double> [-Medium] <String> [[-As] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES


## PARAMETERS
### -DistanceInMeters
Distance in meters

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
### -SpeedOfLightInMetersPerSecond
Speed of light in m/s (default: 299792458)

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
The medium through which light travels

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
Output unit for time

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

