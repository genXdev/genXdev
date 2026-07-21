# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Xác định xem có GPU hỗ trợ CUDA với bộ nhớ đủ hay không.

## Description

Kiểm tra hệ thống để tìm GPU tương thích CUDA có ít nhất 4GB RAM video. Nó sử dụng Windows Management Instrumentation (WMI) để truy vấn các bộ điều khiển video đã cài đặt và xác minh dung lượng bộ nhớ của chúng. Kiểm tra này rất cần thiết cho các khối lượng công việc AI yêu cầu bộ nhớ GPU đáng kể.

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

Kiểm tra xem hệ thống có GPU hỗ trợ CUDA với bộ nhớ đủ không.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Test-CpuAvx.md)
