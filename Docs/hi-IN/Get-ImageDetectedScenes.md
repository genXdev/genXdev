# Get-ImageDetectedScenes

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> DeepStack का उपयोग करके एक छवि को 365 दृश्य श्रेणियों में से एक में वर्गीकृत करता है।

## Description

यह फ़ंक्शन किसी इमेज फ़ाइल का विश्लेषण करता है ताकि इसे 365 विभिन्न दृश्य श्रेणियों में से एक में वर्गीकृत किया जा सके। यह एक कॉन्फ़िगरेबल पोर्ट पर चलने वाले स्थानीय DeepStack दृश्य पहचान API का उपयोग करता है और विश्वास स्कोर के साथ दृश्य वर्गीकरण लौटाता है। यह फ़ंक्शन GPU त्वरण और Docker कंटेनर प्रबंधन का समर्थन करता है।

## Syntax

```powershell
Get-ImageDetectedScenes -ImagePath <String> [[-ConfidenceThreshold] <Double>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [-Force] [-ImageName <String>] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | विश्लेषण करने के लिए छवि फ़ाइल का स्थानीय पथ |
| `-ConfidenceThreshold` | Double | — | — | 1 | `0.0` | न्यूनतम विश्वास सीमा (0.0-1.0)। डिफ़ॉल्ट 0.0 है |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | डॉकर कंटेनर का नाम |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | स्थायी भंडारण के लिए डॉकर वॉल्यूम का नाम |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | डीपस्टैक सेवा के लिए पोर्ट नंबर |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | सेवा स्वास्थ्य जांच के लिए प्रतीक्षा करने का अधिकतम समय सेकंड में |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | स्वास्थ्य जांच प्रयासों के बीच सेकंड में अंतराल |
| `-ImageName` | String | — | — | Named | — | उपयोग करने के लिए कस्टम Docker इमेज का नाम |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | डॉकर आरंभीकरण छोड़ें (जब पहले से ही मूल फ़ंक्शन द्वारा कॉल किया गया हो) |
| `-Force` | SwitchParameter | — | — | Named | — | डॉकर कंटेनर का बलपूर्वक पुनर्निर्माण करें और मौजूदा डेटा हटाएं |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPU-त्वरित संस्करण का उपयोग करें (NVIDIA GPU आवश्यक है) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | आरंभीकरण के दौरान Docker Desktop विंडो दिखाएं |

## Examples

### Get-ImageDetectedScenes -ImagePath "C:\Users\YourName\landscape.jpg" Classifies the scene in the specified image using default settings.

```powershell
Get-ImageDetectedScenes -ImagePath "C:\Users\YourName\landscape.jpg"
Classifies the scene in the specified image using default settings.
```

### Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -ConfidenceThreshold 0.6 -UseGPU Classifies the scene using GPU acceleration and only accepts results with confidence >= 60%.

```powershell
Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -ConfidenceThreshold 0.6 -UseGPU
Classifies the scene using GPU acceleration and only accepts results with confidence >= 60%.
```

### Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -UseGPU Classifies the scene using GPU acceleration for faster processing.

```powershell
Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -UseGPU
Classifies the scene using GPU acceleration for faster processing.
```

### "C:\Users\YourName\beach.jpg" | Get-ImageDetectedScenes Pipeline support for processing multiple images.

```powershell
"C:\Users\YourName\beach.jpg" | Get-ImageDetectedScenes
Pipeline support for processing multiple images.
```

## Parameter Details

### `-ImagePath <String>`

> विश्लेषण करने के लिए छवि फ़ाइल का स्थानीय पथ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConfidenceThreshold <Double>`

> न्यूनतम विश्वास सीमा (0.0-1.0)। डिफ़ॉल्ट 0.0 है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `0.0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> डॉकर कंटेनर का नाम

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `'deepstack_face_recognition'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VolumeName <String>`

> स्थायी भंडारण के लिए डॉकर वॉल्यूम का नाम

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `'deepstack_face_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> डीपस्टैक सेवा के लिए पोर्ट नंबर

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `5000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckTimeout <Int32>`

> सेवा स्वास्थ्य जांच के लिए प्रतीक्षा करने का अधिकतम समय सेकंड में

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | `60` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckInterval <Int32>`

> स्वास्थ्य जांच प्रयासों के बीच सेकंड में अंतराल

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageName <String>`

> उपयोग करने के लिए कस्टम Docker इमेज का नाम

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> डॉकर आरंभीकरण छोड़ें (जब पहले से ही मूल फ़ंक्शन द्वारा कॉल किया गया हो)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> डॉकर कंटेनर का बलपूर्वक पुनर्निर्माण करें और मौजूदा डेटा हटाएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ForceRebuild` |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseGPU`

> GPU-त्वरित संस्करण का उपयोग करें (NVIDIA GPU आवश्यक है)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> आरंभीकरण के दौरान Docker Desktop विंडो दिखाएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sw` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ImageDetectedObjects.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Unregister-Face.md)
