# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> परीक्षण करता है कि CPU AVX और AVX2 निर्देश सेटों का समर्थन करता है या नहीं।

## Description

* विंडोज API (kernel32.dll IsProcessorFeaturePresent) का उपयोग करके जांचता है कि प्रोसेसर AVX और AVX2 निर्देश सेट का समर्थन करता है या नहीं।
* AVX और AVX2 बूलियन गुणों वाली एक वस्तु लौटाता है।
* AI/ML कार्यभार के लिए हार्डवेयर संगतता निर्धारित करने में उपयोगी।

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

CPU निर्देश सेट समर्थन की जाँच करता है और AVX/AVX2 उपलब्धता लौटाता है।

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-NumberOfCpuCores.md)
