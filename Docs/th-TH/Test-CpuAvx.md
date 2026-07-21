# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> ทดสอบว่า CPU รองรับชุดคำสั่ง AVX และ AVX2 หรือไม่

## Description

* ตรวจสอบว่าโปรเซสเซอร์รองรับชุดคำสั่ง AVX และ AVX2 หรือไม่ โดยใช้ Windows API (kernel32.dll IsProcessorFeaturePresent)
* ส่งคืนออบเจกต์ที่มีคุณสมบัติบูลีน AVX และ AVX2
* มีประโยชน์สำหรับการพิจารณาความเข้ากันได้ของฮาร์ดแวร์สำหรับงาน AI/ML

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

ตรวจสอบการรองรับชุดคำสั่ง CPU และส่งคืนความพร้อมใช้งานของ AVX/AVX2

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-NumberOfCpuCores.md)
