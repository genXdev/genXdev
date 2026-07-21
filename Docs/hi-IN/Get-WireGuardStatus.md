# Get-WireGuardStatus

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> WireGuard VPN सर्वर के बारे में विस्तृत स्थिति जानकारी प्राप्त करता है।

## Description

यह फ़ंक्शन Docker कंटेनर में चल रहे WireGuard VPN सर्वर के बारे में विस्तृत स्थिति जानकारी प्राप्त करता है, जिसमें इंटरफ़ेस विवरण, सुनने का पोर्ट, जुड़े पीयर और सर्वर स्वास्थ्य शामिल हैं। यह सर्वर स्थिति, पीयर गणना, अपटाइम और नेटवर्क कॉन्फ़िगरेशन विवरण सहित WireGuard सेवा के बारे में व्यापक जानकारी प्रदान करता है।

## Syntax

```powershell
Get-WireGuardStatus [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
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
| `-ShowWindow` | SwitchParameter | — | — | Named | — | कंटेनर चलाने पर विंडो दिखाएं (पास-थ्रू) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | विंडो बॉर्डर हटाएं (पास-थ्रू) |
| `-Width` | Int32 | — | — | 9 | `-1` | विंडो की चौड़ाई वर्णों या पिक्सेल में (पास-थ्रू) |
| `-Height` | Int32 | — | — | 10 | `-1` | विंडो की ऊंचाई वर्णों या पिक्सल में (पास-थ्रू) |
| `-Left` | Int32 | — | — | 11 | — | विंडो बाईं स्थिति (पास-थ्रू) |
| `-Right` | Int32 | — | — | 12 | — | विंडो दाईं स्थिति (पास-थ्रू) |
| `-Bottom` | Int32 | — | — | 13 | — | विंडो नीचे की स्थिति (पास-थ्रू) |
| `-Centered` | SwitchParameter | — | — | Named | — | विंडो को केंद्रित करें (पास-थ्रू) |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | पूर्ण स्क्रीन मोड में विंडो खोलें (पास-थ्रू) |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | ऑपरेशन के बाद विंडो पर फ़ोकस पुनर्स्थापित करें (पास-थ्रू) |
| `-SideBySide` | SwitchParameter | — | — | Named | — | साथ-साथ विंडो दिखाएं (पास-थ्रू) |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | खोलने के बाद विंडो पर फोकस करें (पास-थ्रू) |
| `-SetForeground` | SwitchParameter | — | — | Named | — | विंडो को अग्रभूमि पर सेट करें (पास-थ्रू) |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | एस्केप कुंजी विंडो पर भेजें (पास-थ्रू) |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | कुंजियाँ भेजते समय कीबोर्ड फ़ोकस बनाए रखें (पास-थ्रू) |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | कुंजियाँ भेजते समय Shift+Enter का उपयोग करें (पास-थ्रू) |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | कीज़ भेजने के बीच मिलीसेकंड में विलंब (पास-थ्रू) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | केवल सत्र मोड (पास-थ्रू) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | सत्र डेटा साफ़ करें (पास-थ्रू) |
| `-SkipSession` | SwitchParameter | — | — | Named | — | सत्र आरंभीकरण छोड़ें (पास-थ्रू) |

## Examples

### Get-WireGuardStatus

```powershell
Get-WireGuardStatus
```

डिफ़ॉल्ट सेटिंग्स के साथ WireGuard सर्वर की स्थिति लौटाता है।

### Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"

```powershell
Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"
```

डॉकर को आरंभ किए बिना कस्टम कंटेनर की स्थिति प्राप्त करता है।

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

> कंटेनर चलाने पर विंडो दिखाएं (पास-थ्रू)

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

> विंडो बॉर्डर हटाएं (पास-थ्रू)

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

> विंडो की चौड़ाई वर्णों या पिक्सेल में (पास-थ्रू)

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

> विंडो की ऊंचाई वर्णों या पिक्सल में (पास-थ्रू)

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

> विंडो बाईं स्थिति (पास-थ्रू)

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

> विंडो दाईं स्थिति (पास-थ्रू)

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

> विंडो नीचे की स्थिति (पास-थ्रू)

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

> विंडो को केंद्रित करें (पास-थ्रू)

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

> पूर्ण स्क्रीन मोड में विंडो खोलें (पास-थ्रू)

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

> ऑपरेशन के बाद विंडो पर फ़ोकस पुनर्स्थापित करें (पास-थ्रू)

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

> साथ-साथ विंडो दिखाएं (पास-थ्रू)

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

> खोलने के बाद विंडो पर फोकस करें (पास-थ्रू)

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

> विंडो को अग्रभूमि पर सेट करें (पास-थ्रू)

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

> एस्केप कुंजी विंडो पर भेजें (पास-थ्रू)

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

> कुंजियाँ भेजते समय कीबोर्ड फ़ोकस बनाए रखें (पास-थ्रू)

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

> कुंजियाँ भेजते समय Shift+Enter का उपयोग करें (पास-थ्रू)

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

> कीज़ भेजने के बीच मिलीसेकंड में विलंब (पास-थ्रू)

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

> केवल सत्र मोड (पास-थ्रू)

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

> सत्र डेटा साफ़ करें (पास-थ्रू)

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

> सत्र आरंभीकरण छोड़ें (पास-थ्रू)

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
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-WireGuardPeers.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Reset-WireGuardConfiguration.md)
