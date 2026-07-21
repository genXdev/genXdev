# Get-CpuCore

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> सिस्टम में तार्किक CPU कोर की कुल संख्या की गणना करता है और लौटाता है।

## Description

Windows प्रबंधन इंस्ट्रुमेंटेशन (WMI) के माध्यम से सिस्टम हार्डवेयर से पूछताछ करके लॉजिकल CPU कोर की कुल संख्या निर्धारित करता है। फ़ंक्शन भौतिक कोर गणना को 2 से गुणा करके हाइपरथ्रेडिंग को ध्यान में रखता है।

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

तार्किक CPU कोर की कुल संख्या प्राप्त करता है।

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AudioDeviceNames.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-CpuAvx.md)
