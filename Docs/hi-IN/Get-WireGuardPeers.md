# Get-WireGuardPeers

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> सिस्टम पर कॉन्फ़िगर किए गए सभी WireGuard VPN पीयर्स के बारे में जानकारी प्राप्त करता है।

## Description

यह फ़ंक्शन Docker कंटेनर में चल रहे सर्वर पर कॉन्फ़िगर किए गए सभी WireGuard VPN पीयर के बारे में विस्तृत जानकारी प्राप्त करता है। यह पीयर नाम, सार्वजनिक कुंजी, अनुमत IP पते, कनेक्शन एंडपॉइंट, हैंडशेक स्थिति, डेटा स्थानांतरण आँकड़े और वर्तमान कनेक्शन स्थिति सहित विस्तृत जानकारी प्रदान करता है। यह फ़ंक्शन पैरेंट फ़ंक्शन के साथ मिलकर या स्वतंत्र रूप से Docker कंटेनर आरंभीकरण प्रबंधित कर सकता है।

## Syntax

```powershell
Get-WireGuardPeers [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | डॉकर आरंभीकरण छोड़ें (जब पहले से ही मूल फ़ंक्शन द्वारा कॉल किया गया हो) |
| `-Force` | SwitchParameter | — | — | Named | — | डॉकर कंटेनर का बलपूर्वक पुनर्निर्माण करें और मौजूदा डेटा हटाएं |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | डॉकर कंटेनर का नाम |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | स्थायी भंडारण के लिए डॉकर वॉल्यूम का नाम |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | वायरगार्ड सेवा के लिए पोर्ट नंबर |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | सेवा स्वास्थ्य जांच के लिए प्रतीक्षा करने का अधिकतम समय सेकंड में |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | स्वास्थ्य जांच प्रयासों के बीच सेकंड में अंतराल |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | उपयोग करने के लिए कस्टम Docker इमेज का नाम |
| `-PUID` | String | — | — | 6 | `'1000'` | कंटेनर में अनुमतियों के लिए उपयोगकर्ता आईडी |
| `-PGID` | String | — | — | 7 | `'1000'` | कंटेनर में अनुमतियों के लिए समूह आईडी |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | कंटेनर के लिए उपयोग करने का समय क्षेत्र |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | WireGuard चलाते समय Docker विंडो दिखाएँ |
| `-NoBorders` | SwitchParameter | — | — | Named | — | डॉकर विंडो के लिए विंडो बॉर्डर हटाएं |
| `-Width` | Int32 | — | — | 9 | `-1` | डॉकर विंडो की चौड़ाई सेट करें |
| `-Height` | Int32 | — | — | 10 | `-1` | डॉकर विंडो की ऊंचाई सेट करें |
| `-Left` | Int32 | — | — | 11 | — | डॉकर विंडो की बाईं स्थिति सेट करें |
| `-Right` | Int32 | — | — | 12 | — | डॉकर विंडो की सही स्थिति सेट करें |
| `-Bottom` | Int32 | — | — | 13 | — | Docker विंडो की निचली स्थिति सेट करें |
| `-Centered` | SwitchParameter | — | — | Named | — | डॉकर विंडो को स्क्रीन के केंद्र में रखें |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | डॉकर विंडो को फ़ुलस्क्रीन मोड में चलाएँ |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | डॉकर चलाने के बाद पिछली विंडो पर फोकस पुनर्स्थापित करें |
| `-SideBySide` | SwitchParameter | — | — | Named | — | डॉकर विंडो को अन्य विंडो के साथ अगल-बगल दिखाएं |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | डॉकर विंडो लॉन्च करने के बाद फोकस करें |
| `-SetForeground` | SwitchParameter | — | — | Named | — | डॉकर विंडो को अग्रभूमि विंडो के रूप में सेट करें |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | लॉन्च के बाद Docker विंडो पर Escape कुंजी भेजें |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | लॉन्च के बाद डॉकर विंडो में कीबोर्ड फोकस रखें |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | डॉकर विंडो में कुंजियाँ भेजते समय Shift+Enter का उपयोग करें |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | डॉकर विंडो पर कुंजी भेजने के बीच मिलीसेकंड में विलंब |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | केवल डॉकर विंडो के लिए सत्र का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | चलाने से पहले डॉकर विंडो के लिए सत्र साफ़ करें |
| `-SkipSession` | SwitchParameter | — | — | Named | — | डॉकर विंडो के लिए सत्र छोड़ें |

## Examples

### Get-WireGuardPeers

```powershell
Get-WireGuardPeers
```

### Get-WireGuardPeers -NoDockerInitialize -ContainerName "custom_wireguard" `                    -ServicePort 55555

```powershell
Get-WireGuardPeers -NoDockerInitialize -ContainerName "custom_wireguard" `
                   -ServicePort 55555
```

## Parameter Details

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
### `-ContainerName <String>`

> डॉकर कंटेनर का नाम

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'wireguard'` |
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
| **Default value** | `'wireguard_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> वायरगार्ड सेवा के लिए पोर्ट नंबर

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `51839` |
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
| **Default value** | `'linuxserver/wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PUID <String>`

> कंटेनर में अनुमतियों के लिए उपयोगकर्ता आईडी

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PGID <String>`

> कंटेनर में अनुमतियों के लिए समूह आईडी

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 7 |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeZone <String>`

> कंटेनर के लिए उपयोग करने का समय क्षेत्र

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 8 |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> WireGuard चलाते समय Docker विंडो दिखाएँ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> डॉकर विंडो के लिए विंडो बॉर्डर हटाएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> डॉकर विंडो की चौड़ाई सेट करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 9 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> डॉकर विंडो की ऊंचाई सेट करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 10 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> डॉकर विंडो की बाईं स्थिति सेट करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 11 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right <Int32>`

> डॉकर विंडो की सही स्थिति सेट करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 12 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom <Int32>`

> Docker विंडो की निचली स्थिति सेट करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 13 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> डॉकर विंडो को स्क्रीन के केंद्र में रखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Fullscreen`

> डॉकर विंडो को फ़ुलस्क्रीन मोड में चलाएँ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> डॉकर चलाने के बाद पिछली विंडो पर फोकस पुनर्स्थापित करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> डॉकर विंडो को अन्य विंडो के साथ अगल-बगल दिखाएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> डॉकर विंडो लॉन्च करने के बाद फोकस करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> डॉकर विंडो को अग्रभूमि विंडो के रूप में सेट करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> लॉन्च के बाद Docker विंडो पर Escape कुंजी भेजें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> लॉन्च के बाद डॉकर विंडो में कीबोर्ड फोकस रखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> डॉकर विंडो में कुंजियाँ भेजते समय Shift+Enter का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> डॉकर विंडो पर कुंजी भेजने के बीच मिलीसेकंड में विलंब

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 14 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> केवल डॉकर विंडो के लिए सत्र का उपयोग करें

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

> चलाने से पहले डॉकर विंडो के लिए सत्र साफ़ करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> डॉकर विंडो के लिए सत्र छोड़ें

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

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Reset-WireGuardConfiguration.md)
