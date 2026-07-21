# Get-NumberOfCpuCores

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> คำนวณและส่งกลับจำนวนรวมของคอร์ซีพียูเชิงตรรกะในระบบ

## Description

สอบถามฮาร์ดแวร์ระบบผ่าน Windows Management Instrumentation (WMI) เพื่อกำหนดจำนวนคอร์ซีพียูตรรกะทั้งหมด cmdlet จะพิจารณาไฮเปอร์เธรดดิ้งโดยการคูณจำนวนคอร์จริงด้วย 2 ข้อมูลนี้มีประโยชน์สำหรับการปรับกระบวนการทำงานแบบขนานให้เหมาะสมและทำความเข้าใจความสามารถของระบบ

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

ดึงจำนวนคอร์ประมวลผลแบบลอจิคัลทั้งหมดที่มีในระบบ

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-MonitorCount.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-CpuAvx.md)
