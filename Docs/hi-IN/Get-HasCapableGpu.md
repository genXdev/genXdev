# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> यह निर्धारित करता है कि पर्याप्त मेमोरी वाला CUDA-सक्षम GPU मौजूद है या नहीं।

## Description

सिस्टम में कम से कम 4GB वीडियो रैम वाले CUDA-संगत GPUs की जाँच करता है। यह विंडोज मैनेजमेंट इंस्ट्रुमेंटेशन (WMI) का उपयोग करके स्थापित वीडियो नियंत्रकों को क्वेरी करता है और उनकी मेमोरी क्षमता सत्यापित करता है। यह जाँच AI कार्यभार के लिए आवश्यक है जिसमें महत्वपूर्ण GPU मेमोरी की आवश्यकता होती है।

## Syntax

```powershell
Get-HasCapableGpu [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$hasGpu = Get-HasCapableGpu
Write-Host "System has capable GPU: $hasGpu"
```

जांचता है कि सिस्टम में पर्याप्त मेमोरी वाला CUDA-सक्षम GPU है या नहीं।

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-CpuAvx.md)
