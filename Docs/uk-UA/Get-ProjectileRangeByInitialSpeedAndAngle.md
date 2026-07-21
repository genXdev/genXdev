# Get-ProjectileRangeByInitialSpeedAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Обчислює дальність польоту снаряда.

## Description

Використовує формулу R = (v² sin(2θ)) / g для ідеального руху снаряда.

## Syntax

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle -InitialSpeedInMetersPerSecond <Double> -AngleInDegrees <Double> [[-GravityInMetersPerSecondSquared] <Double>] [[-As] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialSpeedInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Початкова швидкість у м/с |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | Кут запуску в градусах |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Гравітація в м/с² (за замовчуванням: 9,81) |
| `-As` | String | — | — | 3 | — | Одиниця виведення для діапазону |

## Examples

### Example 1

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle -InitialSpeedInMetersPerSecond 20 -AngleInDegrees 45 -As "feet"
```

Обчислює дальність за формулою руху снаряда.

### Example 2

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle 30 30
```

Обчислює діапазон з позиційними параметрами.

## Parameter Details

### `-InitialSpeedInMetersPerSecond <Double>`

> Початкова швидкість у м/с

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AngleInDegrees <Double>`

> Кут запуску в градусах

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GravityInMetersPerSecondSquared <Double>`

> Гравітація в м/с² (за замовчуванням: 9,81)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-As <String>`

> Одиниця виведення для діапазону

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Convert-PhysicsUnit.md)
- [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ApparentSizeAtArmLength.md)
- [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AtEyeLengthSizeInMM.md)
- [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-BuoyantForceByDisplacedVolumeAndDensity.md)
- [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-CentripetalAccelerationByVelocityAndRadius.md)
- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md)
- [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-DragForceByVelocityDensityAreaAndCoefficient.md)
- [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-EscapeVelocityByMassAndRadius.md)
- [Get-FreeFallDistance](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-FreeFallDistance.md)
- [Get-FreeFallHeight](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-FreeFallHeight.md)
- [Get-FreeFallTime](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-FreeFallTime.md)
- [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ImpactVelocityByHeightAndGravity.md)
- [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-KineticEnergyByMassAndVelocity.md)
- [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-LightTravelTimeByDistance.md)
- [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-MagnificationByObjectDistanceAndImageDistance.md)
- [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-MomentumByMassAndVelocity.md)
- [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-OrbitalVelocityByRadiusAndMass.md)
- [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-PotentialEnergyByMassHeightAndGravity.md)
- [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-RefractionAngleByIncidentAngleAndIndices.md)
- [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ResonantFrequencyByLengthAndSpeed.md)
- [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SoundTravelDistanceByTime.md)
- [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-TerminalVelocityByMassGravityDensityAndArea.md)
- [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-TimeOfFlightByInitialVelocityAndAngle.md)
- [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-WaveSpeedByFrequencyAndWavelength.md)
