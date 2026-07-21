# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> تحديد ما إذا كانت وحدة معالجة رسوميات (GPU) تدعم CUDA وتحتوي على ذاكرة كافية موجودة.

## Description

يتحقق من النظام لوجود وحدات معالجة رسومية متوافقة مع CUDA بسعة ذاكرة فيديو لا تقل عن 4 جيجابايت. يستخدم أداة إدارة ويندوز (WMI) للاستعلام عن وحدات التحكم في الفيديو المثبتة والتحقق من سعة ذاكرتها. هذا الفحص ضروري لأعباء العمل الخاصة بالذكاء الاصطناعي التي تتطلب ذاكرة كبيرة لوحدة معالجة الرسوميات.

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

يتحقق مما إذا كان النظام يحتوي على وحدة معالجة رسومات تدعم CUDA مع ذاكرة كافية.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-CpuAvx.md)
