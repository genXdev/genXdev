# Get-CpuCore

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> يقوم بحساب وإرجاع العدد الإجمالي للنوى المنطقية لوحدة المعالجة المركزية في النظام.

## Description

استعلام عن أجهزة النظام من خلال أداة إدارة نظام التشغيل Windows (WMI) لتحديد العدد الإجمالي لنوى وحدة المعالجة المركزية المنطقية. تأخذ الوظيفة في الاعتبار خاصية hyperthreading عن طريق ضرب عدد النوى الفعلية في 2.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

يحصل على العدد الإجمالي لنوى المعالجة المنطقية.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AudioDeviceNames.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-CpuAvx.md)
