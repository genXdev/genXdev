# Get-TimeOfFlightByInitialVelocityAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Beräknar flygtiden för en projektil.

## Description

Använder T = (2 v sinθ) / g för ideal rörelse.

## Syntax

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle -InitialVelocityInMetersPerSecond <Double> -AngleInDegrees <Double> [[-GravityInMetersPerSecondSquared] <Double>] [[-As] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialVelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Initial hastighet i m/s |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | Utkastningsvinkel i grader |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Gravitation i m/s² (standard: 9,81) |
| `-As` | String | — | — | 3 | — | Tidsenhet för utdata |

## Examples

### Example 1

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle -InitialVelocityInMetersPerSecond 20 -AngleInDegrees 45 -As "minutes"
```

Beräknar flygtiden för en projektil som avfyras med 20 m/s i 45 graders vinkel, resultat i minuter.

### Example 2

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle 30 30
```

Beräknar flygtid för en projektil som avfyras med 30 m/s i 30 graders vinkel.

## Parameter Details

### `-InitialVelocityInMetersPerSecond <Double>`

> Initial hastighet i m/s

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

> Utkastningsvinkel i grader

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

> Gravitation i m/s² (standard: 9,81)

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

> Tidsenhet för utdata

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

- [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Convert-PhysicsUnit.md)
- [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ApparentSizeAtArmLength.md)
- [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-AtEyeLengthSizeInMM.md)
- [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-BuoyantForceByDisplacedVolumeAndDensity.md)
- [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-CentripetalAccelerationByVelocityAndRadius.md)
- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md)
- [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-DragForceByVelocityDensityAreaAndCoefficient.md)
- [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-EscapeVelocityByMassAndRadius.md)
- [Get-FreeFallDistance](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-FreeFallDistance.md)
- [Get-FreeFallHeight](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-FreeFallHeight.md)
- [Get-FreeFallTime](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-FreeFallTime.md)
- [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ImpactVelocityByHeightAndGravity.md)
- [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-KineticEnergyByMassAndVelocity.md)
- [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-LightTravelTimeByDistance.md)
- [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-MagnificationByObjectDistanceAndImageDistance.md)
- [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-MomentumByMassAndVelocity.md)
- [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-OrbitalVelocityByRadiusAndMass.md)
- [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-PotentialEnergyByMassHeightAndGravity.md)
- [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ProjectileRangeByInitialSpeedAndAngle.md)
- [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-RefractionAngleByIncidentAngleAndIndices.md)
- [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ResonantFrequencyByLengthAndSpeed.md)
- [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SoundTravelDistanceByTime.md)
- [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-TerminalVelocityByMassGravityDensityAndArea.md)
- [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-WaveSpeedByFrequencyAndWavelength.md)
