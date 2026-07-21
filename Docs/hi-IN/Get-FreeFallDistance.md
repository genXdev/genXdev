# Get-FreeFallDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> दिए गए समय अवधि के लिए मुक्त गिरावट के दौरान गिरी गई दूरी की गणना करता है।

## Description

एक संख्यात्मक विधि का उपयोग करके मुक्त गिरावट के दौरान गिरी गई दूरी की गणना करता है जो वायु प्रतिरोध और टर्मिनल वेग को ध्यान में रखता है।

## Syntax

```powershell
Get-FreeFallDistance -DurationInSeconds <Double> [[-TerminalVelocityInMetersPerSecond] <Double>] [[-GravityInMetersPerSecondSquared] <Double>] [[-As] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | सेकंड में गिरावट की समय अवधि |
| `-TerminalVelocityInMetersPerSecond` | Double | — | — | 1 | `0` | मीटर प्रति सेकंड में टर्मिनल वेग (डिफ़ॉल्ट: 53) |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | गुरुत्वीय त्वरण m/s² में (डिफ़ॉल्ट: 9.81) |
| `-As` | String | — | — | 3 | — | आउटपुट दूरी के लिए इकाई |

## Examples

### Example 1

```powershell
Get-FreeFallDistance -DurationInSeconds 10 -TerminalVelocityInMetersPerSecond 53 -As "feet"
```

10 सेकंड में गिरी दूरी की गणना फीट में करता है।

### Example 2

```powershell
Get-FreeFallDistance 5
```

5 सेकंड में मीटर में दूरी की गणना करता है।

## Parameter Details

### `-DurationInSeconds <Double>`

> सेकंड में गिरावट की समय अवधि

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TerminalVelocityInMetersPerSecond <Double>`

> मीटर प्रति सेकंड में टर्मिनल वेग (डिफ़ॉल्ट: 53)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GravityInMetersPerSecondSquared <Double>`

> गुरुत्वीय त्वरण m/s² में (डिफ़ॉल्ट: 9.81)

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

> आउटपुट दूरी के लिए इकाई

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

- [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Convert-PhysicsUnit.md)
- [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ApparentSizeAtArmLength.md)
- [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AtEyeLengthSizeInMM.md)
- [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-BuoyantForceByDisplacedVolumeAndDensity.md)
- [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-CentripetalAccelerationByVelocityAndRadius.md)
- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md)
- [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-DragForceByVelocityDensityAreaAndCoefficient.md)
- [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-EscapeVelocityByMassAndRadius.md)
- [Get-FreeFallHeight](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-FreeFallHeight.md)
- [Get-FreeFallTime](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-FreeFallTime.md)
- [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ImpactVelocityByHeightAndGravity.md)
- [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-KineticEnergyByMassAndVelocity.md)
- [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-LightTravelTimeByDistance.md)
- [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-MagnificationByObjectDistanceAndImageDistance.md)
- [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-MomentumByMassAndVelocity.md)
- [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-OrbitalVelocityByRadiusAndMass.md)
- [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-PotentialEnergyByMassHeightAndGravity.md)
- [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ProjectileRangeByInitialSpeedAndAngle.md)
- [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-RefractionAngleByIncidentAngleAndIndices.md)
- [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ResonantFrequencyByLengthAndSpeed.md)
- [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SoundTravelDistanceByTime.md)
- [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-TerminalVelocityByMassGravityDensityAndArea.md)
- [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-TimeOfFlightByInitialVelocityAndAngle.md)
- [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-WaveSpeedByFrequencyAndWavelength.md)
