# Get-MonitorCount

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Lấy tổng số màn hình hiển thị được kết nối với hệ thống.

## Description

* Sử dụng lớp trợ giúp Màn hình Windows Presentation Foundation (WPF) để
  xác định chính xác số lượng màn hình hiển thị vật lý hiện đang kết nối
  với hệ thống.
* Điều này bao gồm cả màn hình đang hoạt động và màn hình đã được phát hiện nhưng bị vô hiệu hóa.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Trả về tổng số màn hình được kết nối (ví dụ: 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Trả về số lượng màn hình với đầu ra chi tiết hiển thị quá trình phát hiện.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Test-CpuAvx.md)
