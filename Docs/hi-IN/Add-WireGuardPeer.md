# Add-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> सर्वर में एक नया WireGuard VPN पीयर (क्लाइंट) कॉन्फ़िगरेशन जोड़ता है।

## Description

यह फ़ंक्शन डॉकर कंटेनर में चल रहे WireGuard VPN सर्वर में एक नया पीयर जोड़ता है। यह एक अद्वितीय IP पते के साथ नया क्लाइंट कॉन्फ़िगरेशन उत्पन्न करता है, आवश्यक क्रिप्टोग्राफ़िक कुंजियाँ बनाता है, और कॉन्फ़िगरेशन विवरण लौटाता है। फ़ंक्शन वैकल्पिक रूप से कॉन्फ़िगरेशन को फ़ाइल में सहेज सकता है या मोबाइल डिवाइस सेटअप के लिए QR कोड उत्पन्न कर सकता है। फ़ंक्शन पीयर नामों को मान्य करता है, डुप्लिकेट की जाँच करता है, और विभिन्न त्रुटि स्थितियों को सहजता से संभालता है।

## Syntax

```powershell
Add-WireGuardPeer -PeerName <String> [[-AllowedIPs] <String>] [[-DNS] <String>] [[-OutputPath] <String>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [-Bottom <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Height <Int32>] [-Left <Int32>] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-Right <Int32>] [-SaveConfig] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowQRCode] [-ShowWindow] [-SideBySide] [-SkipSession] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | पीयर के लिए एक अद्वितीय नाम |
| `-AllowedIPs` | String | — | — | 1 | `'0.0.0.0/0, ::/0'` | वे आईपी रेंज जिन्हें वीपीएन के माध्यम से रूट किया जाएगा |
| `-DNS` | String | — | — | 2 | `'1.1.1.1, 1.0.0.1'` | इस पीयर के लिए उपयोग करने हेतु DNS सर्वर |
| `-OutputPath` | String | — | — | 3 | `"$env:USERPROFILE\WireGuardConfigs"` | वह पथ जहाँ पीयर कॉन्फ़िगरेशन फ़ाइल को सहेजा जाना चाहिए |
| `-ContainerName` | String | — | — | 4 | `'wireguard'` | डॉकर कंटेनर का नाम |
| `-VolumeName` | String | — | — | 5 | `'wireguard_data'` | स्थायी भंडारण के लिए डॉकर वॉल्यूम का नाम |
| `-ServicePort` | Int32 | — | — | 6 | `51839` | वायरगार्ड सेवा के लिए पोर्ट नंबर |
| `-HealthCheckTimeout` | Int32 | — | — | 7 | `60` | सेवा स्वास्थ्य जांच के लिए प्रतीक्षा करने का अधिकतम समय सेकंड में |
| `-HealthCheckInterval` | Int32 | — | — | 8 | `3` | स्वास्थ्य जांच प्रयासों के बीच सेकंड में अंतराल |
| `-ImageName` | String | — | — | 9 | `'linuxserver/wireguard'` | उपयोग करने के लिए कस्टम Docker इमेज का नाम |
| `-PUID` | String | — | — | 10 | `'1000'` | कंटेनर में अनुमतियों के लिए उपयोगकर्ता आईडी |
| `-PGID` | String | — | — | 11 | `'1000'` | कंटेनर में अनुमतियों के लिए समूह आईडी |
| `-TimeZone` | String | — | — | 12 | `'Etc/UTC'` | कंटेनर के लिए उपयोग करने का समय क्षेत्र |
| `-SaveConfig` | SwitchParameter | — | — | Named | — | पीयर कॉन्फ़िगरेशन को फ़ाइल में सहेजें |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | सेवा शुरू करते समय WireGuard विंडो दिखाएं |
| `-NoBorders` | SwitchParameter | — | — | Named | — | सेवा आरंभ करते समय विंडो बॉर्डर हटाएं |
| `-Width` | Int32 | — | — | Named | `-1` | सेवा प्रारंभ करते समय विंडो की चौड़ाई सेट करें |
| `-Height` | Int32 | — | — | Named | `-1` | सेवा आरंभ करते समय विंडो की ऊंचाई सेट करें |
| `-Left` | Int32 | — | — | Named | — | सेवा आरंभ करते समय विंडो की बायां स्थिति सेट करें |
| `-Right` | Int32 | — | — | Named | — | सेवा आरंभ करते समय विंडो की सही स्थिति निर्धारित करें |
| `-Bottom` | Int32 | — | — | Named | — | सेवा प्रारंभ करते समय विंडो की निचली स्थिति सेट करें |
| `-Centered` | SwitchParameter | — | — | Named | — | सेवा आरंभ करते समय विंडो को केंद्र में रखें |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | पूर्ण स्क्रीन मोड में सेवा प्रारंभ करें |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | सेवा प्रारंभ करने के बाद विंडो पर फोकस पुनर्स्थापित करें |
| `-SideBySide` | SwitchParameter | — | — | Named | — | सेवा प्रारंभ करते समय विंडो को साथ-साथ दिखाएं |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | सेवा आरंभ करने के बाद विंडो को फ़ोकस करें |
| `-SetForeground` | SwitchParameter | — | — | Named | — | सेवा आरंभ करने के बाद विंडो को अग्रभूमि पर सेट करें |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | सेवा आरंभ करने के बाद विंडो पर Escape कुंजी भेजें |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | सेवा आरंभ करने के बाद कुंजियाँ भेजते समय कीबोर्ड फ़ोकस बनाए रखें |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | सेवा आरंभ करने के बाद कुंजियाँ भेजते समय Shift+Enter का उपयोग करें |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | सेवा आरंभ करने के बाद कुंजियाँ भेजने में विलंब (मिलीसेकंड में) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | केवल WireGuard सेवा के लिए सत्र का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | सेवा आरंभ करते समय सत्र साफ़ करें |
| `-SkipSession` | SwitchParameter | — | — | Named | — | सेवा प्रारंभ करते समय सत्र छोड़ें |
| `-ShowQRCode` | SwitchParameter | — | — | Named | — | मोबाइल सेटअप को आसान बनाने के लिए QR कोड जनरेट करें |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | डॉकर आरंभीकरण छोड़ें (जब पहले से ही मूल फ़ंक्शन द्वारा कॉल किया गया हो) |
| `-Force` | SwitchParameter | — | — | Named | — | डॉकर कंटेनर का बलपूर्वक पुनर्निर्माण करें और मौजूदा डेटा हटाएं |

## Examples

### Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `     -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `     "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `     -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `     -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `     -PGID "1000" -TimeZone "Etc/UTC"

```powershell
Add-WireGuardPeer -PeerName "MyPhone" -AllowedIPs "0.0.0.0/0, ::/0" `
    -DNS "1.1.1.1, 1.0.0.1" -SaveConfig -OutputPath `
    "$env:USERPROFILE\WireGuardConfigs" -ShowQRCode -ContainerName "wireguard" `
    -VolumeName "wireguard_data" -ServicePort 51839 -HealthCheckTimeout 60 `
    -HealthCheckInterval 3 -ImageName "linuxserver/wireguard" -PUID "1000" `
    -PGID "1000" -TimeZone "Etc/UTC"
```

### Add-WireGuardPeer "MyTablet" -ShowQRCode

```powershell
Add-WireGuardPeer "MyTablet" -ShowQRCode
```

## Parameter Details

### `-PeerName <String>`

> पीयर के लिए एक अद्वितीय नाम

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowedIPs <String>`

> वे आईपी रेंज जिन्हें वीपीएन के माध्यम से रूट किया जाएगा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'0.0.0.0/0, ::/0'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DNS <String>`

> इस पीयर के लिए उपयोग करने हेतु DNS सर्वर

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `'1.1.1.1, 1.0.0.1'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputPath <String>`

> वह पथ जहाँ पीयर कॉन्फ़िगरेशन फ़ाइल को सहेजा जाना चाहिए

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `"$env:USERPROFILE\WireGuardConfigs"` |
| **Accept pipeline input?** | False |
| **Aliases** | `outfile`, `OutputFile` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> डॉकर कंटेनर का नाम

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
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
| **Position?** | 5 |
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
| **Position?** | 6 |
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
| **Position?** | 7 |
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
| **Position?** | 8 |
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
| **Position?** | 9 |
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
| **Position?** | 10 |
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
| **Position?** | 11 |
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
| **Position?** | 12 |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SaveConfig`

> पीयर कॉन्फ़िगरेशन को फ़ाइल में सहेजें

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

> सेवा शुरू करते समय WireGuard विंडो दिखाएं

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

> सेवा आरंभ करते समय विंडो बॉर्डर हटाएं

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

> सेवा प्रारंभ करते समय विंडो की चौड़ाई सेट करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> सेवा आरंभ करते समय विंडो की ऊंचाई सेट करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> सेवा आरंभ करते समय विंडो की बायां स्थिति सेट करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right <Int32>`

> सेवा आरंभ करते समय विंडो की सही स्थिति निर्धारित करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom <Int32>`

> सेवा प्रारंभ करते समय विंडो की निचली स्थिति सेट करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> सेवा आरंभ करते समय विंडो को केंद्र में रखें

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

> पूर्ण स्क्रीन मोड में सेवा प्रारंभ करें

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

> सेवा प्रारंभ करने के बाद विंडो पर फोकस पुनर्स्थापित करें

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

> सेवा प्रारंभ करते समय विंडो को साथ-साथ दिखाएं

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

> सेवा आरंभ करने के बाद विंडो को फ़ोकस करें

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

> सेवा आरंभ करने के बाद विंडो को अग्रभूमि पर सेट करें

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

> सेवा आरंभ करने के बाद विंडो पर Escape कुंजी भेजें

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

> सेवा आरंभ करने के बाद कुंजियाँ भेजते समय कीबोर्ड फ़ोकस बनाए रखें

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

> सेवा आरंभ करने के बाद कुंजियाँ भेजते समय Shift+Enter का उपयोग करें

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

> सेवा आरंभ करने के बाद कुंजियाँ भेजने में विलंब (मिलीसेकंड में)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> केवल WireGuard सेवा के लिए सत्र का उपयोग करें

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

> सेवा आरंभ करते समय सत्र साफ़ करें

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

> सेवा प्रारंभ करते समय सत्र छोड़ें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowQRCode`

> मोबाइल सेटअप को आसान बनाने के लिए QR कोड जनरेट करें

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
## Related Links

- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-WireGuardPeers.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Reset-WireGuardConfiguration.md)
