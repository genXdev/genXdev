# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> ตรวจสอบว่ามี GPU ที่รองรับ CUDA และมีหน่วยความจำเพียงพอหรือไม่

## Description

ตรวจสอบระบบสำหรับ GPU ที่รองรับ CUDA โดยมี RAM วิดีโออย่างน้อย 4GB โดยใช้ Windows Management Instrumentation (WMI) ในการสอบถามตัวควบคุมวิดีโอที่ติดตั้งและตรวจสอบความจุหน่วยความจำ การตรวจสอบนี้จำเป็นสำหรับภาระงาน AI ที่ต้องการหน่วยความจำ GPU จำนวนมาก

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

ตรวจสอบว่าระบบมี GPU ที่รองรับ CUDA และมีหน่วยความจำเพียงพอ

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-CpuAvx.md)
