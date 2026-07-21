# Get-MonitorCount

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> सिस्टम से जुड़े डिस्प्ले मॉनिटरों की कुल संख्या प्राप्त करता है।

## Description

* सिस्टम से वर्तमान में कनेक्टेड भौतिक डिस्प्ले मॉनिटरों की संख्या सटीक रूप से निर्धारित करने के लिए विंडोज प्रेजेंटेशन फाउंडेशन (WPF) स्क्रीन हेल्पर क्लास का उपयोग करता है।
* इसमें सक्रिय और पता लगाए गए लेकिन अक्षम किए गए दोनों मॉनिटर शामिल हैं।

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

जुड़े हुए मॉनिटरों की कुल संख्या लौटाता है (जैसे, 2)।

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

विस्तृत आउटपुट के साथ मॉनिटर गणना लौटाता है जो पहचान प्रक्रिया दिखाता है।

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-CpuAvx.md)
