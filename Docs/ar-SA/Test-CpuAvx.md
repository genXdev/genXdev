# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> يختبر ما إذا كانت وحدة المعالجة المركزية تدعم مجموعتي التعليمات AVX و AVX2.

## Description

* يتحقق مما إذا كان المعالج يدعم مجموعتي تعليمات AVX وAVX2 باستخدام
  Windows API (kernel32.dll IsProcessorFeaturePresent).
* يُرجع كائنًا بخصائص منطقية AVX و AVX2.
* مفيد لتحديد توافق الأجهزة لأعباء عمل الذكاء الاصطناعي/التعلم الآلي.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

يتحقق من دعم مجموعة تعليمات وحدة المعالجة المركزية ويعيد توفر AVX/AVX2.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-NumberOfCpuCores.md)
