# Get-EscapeVelocityByMassAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Kaçış hızını hesaplar.

## Description

v = sqrt(2 G M / r) ifadesini kullanır.

## Syntax

```powershell
Get-EscapeVelocityByMassAndRadius -MassInKilograms <Double> -RadiusInMeters <Double> [[-As] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Vücudun kilogram cinsinden kütlesi |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | Metre cinsinden yarıçap |
| `-As` | String | — | — | 2 | — | Hız için çıktı birimi |

## Examples

### Example 1

```powershell
Get-EscapeVelocityByMassAndRadius -MassInKilograms 5.972e24 -RadiusInMeters 6371000 -As "km/h"
```

Dünya'nın kütlesi ve yarıçapına sahip bir cisim için kaçış hızını hesaplar.

### Example 2

```powershell
Get-EscapeVelocityByMassAndRadius 1e26 10000000
```

Varsayılan m/s birimlerini kullanarak kaçış hızını hesaplar.

## Parameter Details

### `-MassInKilograms <Double>`

> Vücudun kilogram cinsinden kütlesi

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RadiusInMeters <Double>`

> Metre cinsinden yarıçap

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-As <String>`

> Hız için çıktı birimi

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

- [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Convert-PhysicsUnit.md)
- [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ApparentSizeAtArmLength.md)
- [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AtEyeLengthSizeInMM.md)
- [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-BuoyantForceByDisplacedVolumeAndDensity.md)
- [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-CentripetalAccelerationByVelocityAndRadius.md)
- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md)
- [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-DragForceByVelocityDensityAreaAndCoefficient.md)
- [Get-FreeFallDistance](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-FreeFallDistance.md)
- [Get-FreeFallHeight](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-FreeFallHeight.md)
- [Get-FreeFallTime](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-FreeFallTime.md)
- [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImpactVelocityByHeightAndGravity.md)
- [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-KineticEnergyByMassAndVelocity.md)
- [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-LightTravelTimeByDistance.md)
- [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-MagnificationByObjectDistanceAndImageDistance.md)
- [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-MomentumByMassAndVelocity.md)
- [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-OrbitalVelocityByRadiusAndMass.md)
- [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-PotentialEnergyByMassHeightAndGravity.md)
- [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ProjectileRangeByInitialSpeedAndAngle.md)
- [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-RefractionAngleByIncidentAngleAndIndices.md)
- [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ResonantFrequencyByLengthAndSpeed.md)
- [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SoundTravelDistanceByTime.md)
- [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-TerminalVelocityByMassGravityDensityAndArea.md)
- [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-TimeOfFlightByInitialVelocityAndAngle.md)
- [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WaveSpeedByFrequencyAndWavelength.md)
