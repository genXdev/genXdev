# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Menentukan apakah GPU yang mendukung CUDA dengan memori yang memadai tersedia.

## Description

Memeriksa sistem untuk GPU yang kompatibel dengan CUDA dengan setidaknya 4GB RAM video. Ini menggunakan Windows Management Instrumentation (WMI) untuk mengkueri pengontrol video yang terpasang dan memverifikasi kapasitas memorinya. Pemeriksaan ini penting untuk beban kerja AI yang membutuhkan memori GPU yang signifikan.

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

Memeriksa apakah sistem memiliki GPU yang mendukung CUDA dengan memori yang memadai.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Test-CpuAvx.md)
