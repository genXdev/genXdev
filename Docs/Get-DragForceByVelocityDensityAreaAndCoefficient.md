---
external help file: GenXdev.dll-Help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Get-DragForceByVelocityDensityAreaAndCoefficient

## SYNOPSIS


## SYNTAX

```
Get-DragForceByVelocityDensityAreaAndCoefficient [-VelocityInMetersPerSecond] <Double>
 [-DensityInKilogramsPerCubicMeter] <Double> [-AreaInSquareMeters] <Double> [-Coefficient] <Double>
 [[-As] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES


## PARAMETERS
### -VelocityInMetersPerSecond
Velocity in m/s

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
### -DensityInKilogramsPerCubicMeter
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
### -AreaInSquareMeters
Cross-sectional area in m²

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
### -Coefficient
Drag coefficient

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
### -As
Output unit for force

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

