# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces`

## Synopsis

> फेस डायरेक्टरी में छवि फ़ाइलों से सभी चेहरा पहचान प्रोफ़ाइल को अपडेट करता है।

## Description

यह फ़ंक्शन निर्दिष्ट फेस निर्देशिका में पाए गए सभी चित्रों के साथ फेस रिकॉग्निशन डेटाबेस को अपडेट करता है। इस प्रक्रिया में शामिल हैं:
1. सुनिश्चित करना कि फेस रिकॉग्निशन सेवा चल रही है
2. प्रत्येक व्यक्ति के फ़ोल्डर में सभी चित्रों को संसाधित करना, उस व्यक्ति के सभी चेहरों को एक बैच ऑपरेशन में एकल पहचानकर्ता (फ़ोल्डर का नाम) के साथ पंजीकृत करना
3. असफल पंजीकरणों के लिए पुनः प्रयास तर्क का समर्थन करना

प्रत्येक व्यक्ति के फ़ोल्डर में कई चित्र हो सकते हैं, और सभी चित्र एक ही API कॉल में एक ही पहचानकर्ता (व्यक्ति का नाम) के तहत पंजीकृत होंगे, जिससे _1, _2 आदि प्रत्ययों की आवश्यकता समाप्त हो जाती है।

## Syntax

```powershell
Register-AllFaces [[-FacesDirectory] <String>] [[-MaxRetries] <Int32>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-ClearSession] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-PreferencesDatabasePath <String>] [-RenameFailed] [-SessionOnly] [-ShowWindow] [-SkipSession] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | व्यक्तिगत फ़ोल्डरों द्वारा व्यवस्थित चेहरे की छवियों वाली निर्देशिका। यदि निर्दिष्ट नहीं है, तो कॉन्फ़िगर की गई फ़ेस डायरेक्ट्री प्राथमिकता का उपयोग करता है। |
| `-MaxRetries` | Int32 | — | — | 1 | `3` | असफल पंजीकरणों के लिए पुनः प्रयास के प्रयासों की अधिकतम संख्या |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | डॉकर कंटेनर का नाम |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | स्थायी भंडारण के लिए डॉकर वॉल्यूम का नाम |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | डीपस्टैक सेवा के लिए पोर्ट नंबर |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | सेवा स्वास्थ्य जांच के लिए प्रतीक्षा करने का अधिकतम समय सेकंड में |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | स्वास्थ्य जांच प्रयासों के बीच सेकंड में अंतराल |
| `-ImageName` | String | — | — | 7 | — | उपयोग करने के लिए कस्टम Docker इमेज का नाम |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | डॉकर डेस्कटॉप इनिशियलाइज़ेशन को छोड़ें (जब पहले ही मूल फ़ंक्शन द्वारा कॉल किया गया हो तो उपयोग किया जाता है) |
| `-Force` | SwitchParameter | — | — | Named | — | सभी चेहरों का पुनः पंजीकरण बलपूर्वक करें |
| `-RenameFailed` | SwitchParameter | — | — | Named | — | उन विफल छवि फ़ाइलों का नाम बदलें जिन्हें कोई चेहरा न मिलने के कारण संसाधित नहीं किया जा सका |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | डॉकर कंटेनर का बलपूर्वक पुनर्निर्माण करें और मौजूदा डेटा हटाएं |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPU-त्वरित संस्करण का उपयोग करें (NVIDIA GPU आवश्यक है) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | आरंभीकरण के दौरान Docker Desktop विंडो दिखाएं |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | यदि निर्दिष्ट किया गया है, तो केवल सत्र का उपयोग करें (प्राथमिकता डेटाबेस में परिवर्तन स्थायी न करें)। |
| `-ClearSession` | SwitchParameter | — | — | Named | — | यदि निर्दिष्ट किया गया है, तो उपयोग से पहले वर्तमान सत्र प्राथमिकताएँ साफ़ करें। |
| `-PreferencesDatabasePath` | String | — | — | Named | — | ज्ञात चेहरों के रूट पथ के लिए प्राथमिकता डेटाबेस का पथ। |
| `-SkipSession` | SwitchParameter | — | — | Named | — | यदि निर्दिष्ट किया गया है, तो ज्ञात चेहरों का मूल पथ प्राप्त करते समय सत्र तर्क को छोड़ दें। |

## Examples

### Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `     -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `     -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3

```powershell
Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `
    -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `
    -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3
```

### Register-AllFaces Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"

```powershell
Register-AllFaces
Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"
```

### updatefaces -RenameFailed ##############################################################################

```powershell
updatefaces -RenameFailed
##############################################################################
```

## Parameter Details

### `-FacesDirectory <String>`

> व्यक्तिगत फ़ोल्डरों द्वारा व्यवस्थित चेहरे की छवियों वाली निर्देशिका। यदि निर्दिष्ट नहीं है, तो कॉन्फ़िगर की गई फ़ेस डायरेक्ट्री प्राथमिकता का उपयोग करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRetries <Int32>`

> असफल पंजीकरणों के लिए पुनः प्रयास के प्रयासों की अधिकतम संख्या

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `3` |
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
| **Position?** | 7 |
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
### `-Force`

> सभी चेहरों का पुनः पंजीकरण बलपूर्वक करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RenameFailed`

> उन विफल छवि फ़ाइलों का नाम बदलें जिन्हें कोई चेहरा न मिलने के कारण संसाधित नहीं किया जा सका

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
### `-SessionOnly`

> यदि निर्दिष्ट किया गया है, तो केवल सत्र का उपयोग करें (प्राथमिकता डेटाबेस में परिवर्तन स्थायी न करें)।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> यदि निर्दिष्ट किया गया है, तो उपयोग से पहले वर्तमान सत्र प्राथमिकताएँ साफ़ करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> ज्ञात चेहरों के रूट पथ के लिए प्राथमिकता डेटाबेस का पथ।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> यदि निर्दिष्ट किया गया है, तो ज्ञात चेहरों का मूल पथ प्राप्त करते समय सत्र तर्क को छोड़ दें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-ImageEnhancement.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Unregister-Face.md)
