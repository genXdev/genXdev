# Get-MonitorCount

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Mendapatkan jumlah total monitor tampilan yang terhubung ke sistem.

## Description

* Menggunakan kelas pembantu Screen dari Windows Presentation Foundation (WPF) untuk
  menentukan secara akurat jumlah monitor tampilan fisik yang saat ini
  terhubung ke sistem.
* Ini termasuk monitor yang aktif dan yang terdeteksi tetapi dinonaktifkan.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Mengembalikan jumlah total monitor yang terhubung (misalnya 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Mengembalikan jumlah monitor dengan output verbose yang menunjukkan proses deteksi.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Test-CpuAvx.md)
