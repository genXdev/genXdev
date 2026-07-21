# Get-CpuCore

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> คำนวณและส่งกลับจำนวนรวมของคอร์ซีพียูเชิงตรรกะในระบบ

## Description

ค้นหาข้อมูลฮาร์ดแวร์ของระบบผ่าน Windows Management Instrumentation (WMI) เพื่อกำหนดจำนวนทั้งหมดของแกนประมวลผลแบบลอจิคัล ฟังก์ชันนี้จะคำนึงถึงไฮเปอร์เทรดดิ้งโดยการคูณจำนวนแกนทางกายภาพด้วย 2

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

รับจำนวนคอร์ CPU แบบลอจิคอลทั้งหมด

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AudioDeviceNames.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-CpuAvx.md)
