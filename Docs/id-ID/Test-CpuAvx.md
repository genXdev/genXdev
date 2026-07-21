# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Menguji apakah CPU mendukung set instruksi AVX dan AVX2.

## Description

* Memeriksa apakah prosesor mendukung set instruksi AVX dan AVX2 menggunakan
  Windows API (kernel32.dll IsProcessorFeaturePresent).
* Mengembalikan objek dengan properti boolean AVX dan AVX2.
* Berguna untuk menentukan kompatibilitas perangkat keras untuk beban kerja AI/ML.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

Memeriksa dukungan set instruksi CPU dan mengembalikan ketersediaan AVX/AVX2.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-NumberOfCpuCores.md)
