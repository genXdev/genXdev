# Get-NumberOfCpuCores

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> सिस्टम में तार्किक CPU कोर की कुल संख्या की गणना करता है और लौटाता है।

## Description

विंडोज मैनेजमेंट इंस्ट्रुमेंटेशन (WMI) के माध्यम से सिस्टम हार्डवेयर से पूछताछ करके तार्किक CPU कोरों की कुल संख्या निर्धारित करता है। कमांडलेट भौतिक कोर गणना को 2 से गुणा करके हाइपरथ्रेडिंग को ध्यान में रखता है। यह जानकारी समानांतर प्रसंस्करण कार्यों को अनुकूलित करने और सिस्टम क्षमताओं को समझने के लिए उपयोगी है।

## Syntax

```powershell
Get-NumberOfCpuCores [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$cores = Get-NumberOfCpuCores
Write-Host "System has $cores logical CPU cores available"
```

सिस्टम पर उपलब्ध तार्किक CPU कोर की कुल संख्या प्राप्त करता है।

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-MonitorCount.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-CpuAvx.md)
