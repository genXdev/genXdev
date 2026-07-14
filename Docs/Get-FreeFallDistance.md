---
external help file: GenXdev.dll-Help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Get-FreeFallDistance

## SYNOPSIS


## SYNTAX

```
Get-FreeFallDistance [-DurationInSeconds] <Double> [[-TerminalVelocityInMetersPerSecond] <Double>]
 [[-GravityInMetersPerSecondSquared] <Double>] [[-As] <String>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES


## PARAMETERS
### -DurationInSeconds
The time duration of the fall in seconds

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
### -TerminalVelocityInMetersPerSecond
The terminal velocity in meters per second (default: 53)

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -GravityInMetersPerSecondSquared
The acceleration due to gravity in m/s² (default: 9.81)

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
### -As
The unit for the output distance

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`

