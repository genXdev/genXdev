# Get-ImpactVelocityByHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula a velocidade de impacto a partir da altura.

## Description

Usa v = sqrt(2 g h) ignorando a resistência do ar.

## Syntax

```powershell
Get-ImpactVelocityByHeightAndGravity -HeightInMeters <Double> [[-GravityInMetersPerSecondSquared] <Double>] [[-As] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | Altura em metros |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | Gravidade em m/s². Padrão 9,81. |
| `-As` | String | — | — | 2 | — | Unidade de saída para velocidade. Padrão 'm/s'. |

## Examples

### Example 1

```powershell
Get-ImpactVelocityByHeightAndGravity -HeightInMeters 100 -As "km/h"
```

Calcula a velocidade de impacto para uma queda de 100 metros e exibe o resultado em km/h.

### Example 2

```powershell
Get-ImpactVelocityByHeightAndGravity 50
```

Calcula a velocidade de impacto para uma queda de 50 metros usando unidades padrão.

## Parameter Details

### `-HeightInMeters <Double>`

> Altura em metros

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GravityInMetersPerSecondSquared <Double>`

> Gravidade em m/s². Padrão 9,81.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-As <String>`

> Unidade de saída para velocidade. Padrão 'm/s'.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Convert-PhysicsUnit.md)
- [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-ApparentSizeAtArmLength.md)
- [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-AtEyeLengthSizeInMM.md)
- [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-BuoyantForceByDisplacedVolumeAndDensity.md)
- [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-CentripetalAccelerationByVelocityAndRadius.md)
- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md)
- [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-DragForceByVelocityDensityAreaAndCoefficient.md)
- [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-EscapeVelocityByMassAndRadius.md)
- [Get-FreeFallDistance](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-FreeFallDistance.md)
- [Get-FreeFallHeight](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-FreeFallHeight.md)
- [Get-FreeFallTime](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-FreeFallTime.md)
- [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-KineticEnergyByMassAndVelocity.md)
- [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-LightTravelTimeByDistance.md)
- [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-MagnificationByObjectDistanceAndImageDistance.md)
- [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-MomentumByMassAndVelocity.md)
- [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-OrbitalVelocityByRadiusAndMass.md)
- [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-PotentialEnergyByMassHeightAndGravity.md)
- [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-ProjectileRangeByInitialSpeedAndAngle.md)
- [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-RefractionAngleByIncidentAngleAndIndices.md)
- [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-ResonantFrequencyByLengthAndSpeed.md)
- [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-SoundTravelDistanceByTime.md)
- [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-TerminalVelocityByMassGravityDensityAndArea.md)
- [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-TimeOfFlightByInitialVelocityAndAngle.md)
- [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-WaveSpeedByFrequencyAndWavelength.md)
