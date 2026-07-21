# Get-NumberOfCpuCores

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Tính toán và trả về tổng số lõi CPU logic trong hệ thống.

## Description

Truy vấn phần cứng hệ thống thông qua Windows Management Instrumentation (WMI) để xác định tổng số lõi CPU logic. Lệnh ghép này tính đến siêu phân luồng bằng cách nhân số lõi vật lý với 2. Thông tin này hữu ích cho việc tối ưu hóa các tác vụ xử lý song song và hiểu khả năng của hệ thống.

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

Truy xuất tổng số lõi CPU logic có sẵn trên hệ thống.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-MonitorCount.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Test-CpuAvx.md)
