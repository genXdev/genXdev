# Get-AudioDeviceNames

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> माइक्रोफोन या डेस्कटॉप ऑडियो कैप्चर के लिए उपलब्ध ऑडियो उपकरणों के नाम प्राप्त करता है।

## Description

उन ऑडियो उपकरणों की गणना करता है जिनका उपयोग अन्य cmdlets के साथ किया जा सकता है जो AudioDevice पैरामीटर स्वीकार करते हैं। यह माइक्रोफ़ोन उपकरणों और डेस्कटॉप ऑडियो कैप्चर उपकरणों दोनों का समर्थन करता है।

## Syntax

```powershell
Get-AudioDeviceNames [-Passthru] [-UseDesktopAudioCapture] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | क्या माइक्रोफोन उपकरणों के बजाय डेस्कटॉप ऑडियो कैप्चर उपकरणों को सूचीबद्ध करना है |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | केवल नामों के बजाय विस्तृत उपकरण ऑब्जेक्ट लौटाता है |

## Examples

### Example 1

```powershell
Get-AudioDeviceNames
```

उपलब्ध माइक्रोफोन डिवाइस नामों की सूची प्राप्त करता है।

### Example 2

```powershell
Get-AudioDeviceNames -UseDesktopAudioCapture
```

उपलब्ध डेस्कटॉप ऑडियो कैप्चर डिवाइस नामों की सूची प्राप्त करता है।

### Example 3

```powershell
Get-AudioDeviceNames -Passthru
```

माइक्रोफ़ोन उपकरणों के बारे में जानकारी वाले विस्तृत ऑब्जेक्ट प्राप्त करता है।

## Parameter Details

### `-UseDesktopAudioCapture`

> क्या माइक्रोफोन उपकरणों के बजाय डेस्कटॉप ऑडियो कैप्चर उपकरणों को सूचीबद्ध करना है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Passthru`

> केवल नामों के बजाय विस्तृत उपकरण ऑब्जेक्ट लौटाता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-CpuAvx.md)
