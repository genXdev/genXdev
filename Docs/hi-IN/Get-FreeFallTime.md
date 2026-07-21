# Get-FreeFallTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> मुक्त पतन में किसी वस्तु को दी गई ऊंचाई से गिरने में लगने वाले समय की गणना करता है।

## Description

वायु प्रतिरोध और टर्मिनल वेग को ध्यान में रखते हुए एक संख्यात्मक विधि का उपयोग करके किसी वस्तु को एक निर्दिष्ट ऊंचाई से गिरने के लिए आवश्यक समय अवधि की गणना करता है। गणना वास्तविक टर्मिनल वेग बाधाओं के साथ गिरती वस्तुओं के भौतिकी को सटीक रूप से मॉडल करने के लिए छोटे समय चरणों का उपयोग करती है।

## Syntax

```powershell
Get-FreeFallTime -HeightInMeters <Double> [[-TerminalVelocityInMs] <Double>] [[-As] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | गिरने की ऊंचाई (मीटर में) |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | मीटर प्रति सेकंड में टर्मिनल वेग (डिफ़ॉल्ट: मनुष्य के लिए 53 मीटर/सेकंड) |
| `-As` | String | — | — | 2 | — | आउटपुट समय के लिए इकाई |

## Examples

### Example 1

```powershell
Get-FreeFallTime -HeightInMeters 100 -TerminalVelocityInMs 53
```

डिफ़ॉल्ट मानव टर्मिनल वेग के साथ 100 मीटर गिरने में लगने वाले समय की गणना करता है।

### Example 2

```powershell
Get-FreeFallTime 50
```

पोजीशनल पैरामीटर और डिफ़ॉल्ट टर्मिनल वेलोसिटी का उपयोग करके 50 मीटर गिरने में लगने वाले समय की गणना करता है।

### Example 3

```powershell
Get-FreeFallTime -HeightInMeters 100 -As "minutes"
```

100 मीटर गिरने में लगने वाले समय की गणना करता है और परिणाम मिनटों में लौटाता है।

## Parameter Details

### `-HeightInMeters <Double>`

> गिरने की ऊंचाई (मीटर में)

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TerminalVelocityInMs <Double>`

> मीटर प्रति सेकंड में टर्मिनल वेग (डिफ़ॉल्ट: मनुष्य के लिए 53 मीटर/सेकंड)

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

> आउटपुट समय के लिए इकाई

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

- [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Convert-PhysicsUnit.md)
- [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ApparentSizeAtArmLength.md)
- [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AtEyeLengthSizeInMM.md)
- [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-BuoyantForceByDisplacedVolumeAndDensity.md)
- [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-CentripetalAccelerationByVelocityAndRadius.md)
- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md)
- [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-DragForceByVelocityDensityAreaAndCoefficient.md)
- [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-EscapeVelocityByMassAndRadius.md)
- [Get-FreeFallDistance](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-FreeFallDistance.md)
- [Get-FreeFallHeight](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-FreeFallHeight.md)
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
