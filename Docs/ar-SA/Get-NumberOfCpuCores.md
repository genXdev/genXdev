# Get-NumberOfCpuCores

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> يقوم بحساب وإرجاع العدد الإجمالي للنوى المنطقية لوحدة المعالجة المركزية في النظام.

## Description

يستعلم عن أجهزة النظام من خلال Windows Management Instrumentation (WMI) لتحديد العدد الإجمالي لنوى المعالجة المنطقية. يقوم الأمر بحساب التقنية الفائقة (Hyper-Threading) بضرب عدد النوى المادية في 2. هذه المعلومات مفيدة لتحسين مهام المعالجة المتوازية وفهم قدرات النظام.

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

يسترد العدد الإجمالي للنوى المنطقية للمعالج المتاحة في النظام.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-MonitorCount.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-CpuAvx.md)
