# Unregister-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> DeepStack फेस रिकॉग्निशन सिस्टम से सभी पंजीकृत चेहरों को हटाता है।

## Description

यह फ़ंक्शन डेटास्टोर निर्देशिका से सभी फेस फ़ाइलों को हटाकर और एक खाली फेस रजिस्ट्री को पुनः लोड करने के लिए सेवा को पुनरारंभ करके डीपस्टैक फेस पहचान डेटाबेस से सभी पंजीकृत चेहरों को साफ़ करता है। यह एक विनाशकारी कार्रवाई है जिसे पूर्ववत नहीं किया जा सकता है और यह सभी पंजीकृत चेहरे डेटा को स्थायी रूप से हटा देगा।

## Syntax

```powershell
Unregister-AllFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | सभी पंजीकृत चेहरों को हटाते समय पुष्टि संकेत को छोड़ें |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | डॉकर डेस्कटॉप इनिशियलाइज़ेशन को छोड़ें (जब पहले ही मूल फ़ंक्शन द्वारा कॉल किया गया हो तो उपयोग किया जाता है) |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | डॉकर कंटेनर का बलपूर्वक पुनर्निर्माण करें और मौजूदा डेटा हटाएं |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPU-त्वरित संस्करण का उपयोग करें (NVIDIA GPU आवश्यक है) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | डॉकर कंटेनर का नाम |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | स्थायी भंडारण के लिए डॉकर वॉल्यूम का नाम |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | डीपस्टैक सेवा के लिए पोर्ट नंबर |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | सेवा स्वास्थ्य जांच के लिए प्रतीक्षा करने का अधिकतम समय सेकंड में |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | स्वास्थ्य जांच प्रयासों के बीच सेकंड में अंतराल |
| `-ImageName` | String | — | — | 5 | — | उपयोग करने के लिए कस्टम Docker इमेज का नाम |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | आरंभीकरण के दौरान Docker Desktop विंडो दिखाएं |

## Examples

### Unregister-AllFaces

```powershell
Unregister-AllFaces
```

पुष्टि प्रॉम्प्ट के साथ सभी पंजीकृत चेहरों को हटाता है।

### Unregister-AllFaces -Force

```powershell
Unregister-AllFaces -Force
```

पुष्टि संकेत के बिना सभी पंजीकृत चेहरों को हटाता है।

### unregall -Force

```powershell
unregall -Force
```

बिना पुष्टि के सभी चेहरों को हटाने के लिए उपनाम का उपयोग करता है।

## Parameter Details

### `-Force`

> सभी पंजीकृत चेहरों को हटाते समय पुष्टि संकेत को छोड़ें

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

> डॉकर डेस्कटॉप इनिशियलाइज़ेशन को छोड़ें (जब पहले ही मूल फ़ंक्शन द्वारा कॉल किया गया हो तो उपयोग किया जाता है)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceRebuild`

> डॉकर कंटेनर का बलपूर्वक पुनर्निर्माण करें और मौजूदा डेटा हटाएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-ContainerName <String>`

> डॉकर कंटेनर का नाम

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
| **Position?** | 1 |
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
| **Position?** | 2 |
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
| **Position?** | 3 |
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
| **Position?** | 4 |
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
| **Position?** | 5 |
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
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Register-Face.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Unregister-Face.md)
