# Get-MonitorCount

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> ดึงจำนวนจอภาพทั้งหมดที่เชื่อมต่อกับระบบ

## Description

* ใช้คลาสตัวช่วย Windows Presentation Foundation (WPF) Screen เพื่อ
  ระบุจำนวนจอภาพจริงที่เชื่อมต่อกับระบบได้อย่างแม่นยำ
* ซึ่งรวมถึงจอภาพที่ทำงานอยู่และจอภาพที่ตรวจพบแต่ถูกปิดใช้งาน

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

คืนค่าจำนวนจอภาพที่เชื่อมต่อทั้งหมด (เช่น 2)

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

ส่งคืนจำนวนมอนิเตอร์พร้อมเอาต์พุตแบบละเอียดที่แสดงกระบวนการตรวจจับ

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-CpuAvx.md)
