---
external help file: GenXdev.dll-Help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Get-BuoyantForceByDisplacedVolumeAndDensity

## SYNOPSIS


## SYNTAX

```
Get-BuoyantForceByDisplacedVolumeAndDensity [-DisplacedVolumeInCubicMeters] <Double>
 [-FluidDensityInKilogramsPerCubicMeter] <Double> [[-GravityInMetersPerSecondSquared] <Double>]
 [[-As] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES


## PARAMETERS
### -DisplacedVolumeInCubicMeters
Displaced volume in m³

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
### -FluidDensityInKilogramsPerCubicMeter
Fluid density in kg/m³

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
### -GravityInMetersPerSecondSquared
Gravity in m/s² (default: 9.81)

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
Output unit for force

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

