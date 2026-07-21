# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Kiểm tra xem CPU có hỗ trợ tập lệnh AVX và AVX2 hay không.

## Description

* Kiểm tra xem bộ xử lý có hỗ trợ tập lệnh AVX và AVX2 hay không bằng cách sử dụng
  Windows API (kernel32.dll IsProcessorFeaturePresent).
* Trả về một đối tượng với các thuộc tính boolean AVX và AVX2.
* Hữu ích để xác định khả năng tương thích phần cứng cho khối lượng công việc AI/ML.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

Kiểm tra hỗ trợ tập lệnh CPU và trả về khả năng AVX/AVX2.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-NumberOfCpuCores.md)
