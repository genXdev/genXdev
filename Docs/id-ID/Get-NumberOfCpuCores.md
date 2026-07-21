# Get-NumberOfCpuCores

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Menghitung dan mengembalikan jumlah total inti CPU logis dalam sistem.

## Description

Mengkueri perangkat keras sistem melalui Windows Management Instrumentation (WMI) untuk menentukan jumlah total inti CPU logis. Cmdlet ini memperhitungkan hyperthreading dengan mengalikan jumlah inti fisik dengan 2. Informasi ini berguna untuk mengoptimalkan tugas pemrosesan paralel dan memahami kemampuan sistem.

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

Mengambil jumlah total inti CPU logis yang tersedia pada sistem.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-MonitorCount.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Test-CpuAvx.md)
