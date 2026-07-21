# Get-CpuCore

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Tính toán và trả về tổng số lõi CPU logic trong hệ thống.

## Description

Truy vấn phần cứng hệ thống thông qua Windows Management Instrumentation (WMI) để xác định tổng số lõi CPU logic. Hàm này tính đến siêu phân luồng bằng cách nhân số lõi vật lý với 2.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

Lấy tổng số lõi CPU logic.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-AudioDeviceNames.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Test-CpuAvx.md)
