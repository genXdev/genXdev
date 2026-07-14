---
external help file: GenXdev.dll-Help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Get-TerminalVelocityByMassGravityDensityAndArea

## SYNOPSIS


## SYNTAX

```
Get-TerminalVelocityByMassGravityDensityAndArea [-MassInKilograms] <Double>
 [[-GravityInMetersPerSecondSquared] <Double>] [-DensityInKilogramsPerCubicMeter] <Double>
 [-AreaInSquareMeters] <Double> [[-DragCoefficient] <Double>] [[-As] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES


## PARAMETERS
### -MassInKilograms
Mass in kg

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
### -GravityInMetersPerSecondSquared
Gravity in m/s² (default: 9.81)

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
### -DensityInKilogramsPerCubicMeter
Fluid density in kg/m³

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
### -AreaInSquareMeters
Cross-sectional area in m²

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`
### -DragCoefficient
Drag coefficient (default: 0.5)

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
### -As
Output unit for velocity

`yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 5
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
`

