# Get-WireGuardPeerQRCode

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> WireGuard VPN सहकर्मी कॉन्फ़िगरेशन के लिए एक QR कोड उत्पन्न करता है।

## Description

यह फ़ंक्शन एक WireGuard VPN पीयर कॉन्फ़िगरेशन के लिए QR कोड उत्पन्न करता है जिसे मोबाइल उपकरणों द्वारा आसान सेटअप के लिए स्कैन किया जा सकता है। QR कोड कंसोल में प्रदर्शित होता है और इसका उपयोग स्मार्टफ़ोन और टैबलेट पर WireGuard क्लाइंट को तुरंत कॉन्फ़िगर करने के लिए किया जा सकता है। यह फ़ंक्शन linuxserver/wireguard डॉकर कंटेनर के साथ इंटरैक्ट करता है ताकि पीयर कॉन्फ़िगरेशन के लिए QR कोड उत्पन्न किया जा सके।

## Syntax

```powershell
Get-WireGuardPeerQRCode -PeerName <String> [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-ServicePort <Int32>] [-TimeZone <String>] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | QR कोड उत्पन्न करने के लिए पीयर का नाम |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | डॉकर आरंभीकरण छोड़ें (जब पहले से ही मूल फ़ंक्शन द्वारा कॉल किया गया हो) |
| `-Force` | SwitchParameter | — | — | Named | — | डॉकर कंटेनर का बलपूर्वक पुनर्निर्माण करें और मौजूदा डेटा हटाएं |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | डॉकर कंटेनर का नाम |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | स्थायी भंडारण के लिए डॉकर वॉल्यूम का नाम |
| `-ServicePort` | Int32 | — | — | Named | `51839` | वायरगार्ड सेवा के लिए पोर्ट नंबर |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | सेवा स्वास्थ्य जांच के लिए प्रतीक्षा करने का अधिकतम समय सेकंड में |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | स्वास्थ्य जांच प्रयासों के बीच सेकंड में अंतराल |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | उपयोग करने के लिए कस्टम Docker इमेज का नाम |
| `-PUID` | String | — | — | Named | `'1000'` | कंटेनर में अनुमतियों के लिए उपयोगकर्ता आईडी |
| `-PGID` | String | — | — | Named | `'1000'` | कंटेनर में अनुमतियों के लिए समूह आईडी |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | कंटेनर के लिए उपयोग करने का समय क्षेत्र |

## Examples

### Get-WireGuardPeerQRCode -PeerName "MyPhone"

```powershell
Get-WireGuardPeerQRCode -PeerName "MyPhone"
```

### Get-WireGuardPeerQRCode -PeerName "Tablet" -NoDockerInitialize

```powershell
Get-WireGuardPeerQRCode -PeerName "Tablet" -NoDockerInitialize
```

## Parameter Details

### `-PeerName <String>`

> QR कोड उत्पन्न करने के लिए पीयर का नाम

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
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
### `-ContainerName <String>`

> डॉकर कंटेनर का नाम

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/EnsureWireGuard.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-WireGuardPeers.md)
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-WireGuardStatus.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Reset-WireGuardConfiguration.md)
