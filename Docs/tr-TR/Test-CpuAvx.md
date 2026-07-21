# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> CPU'nun AVX ve AVX2 komut kümelerini destekleyip desteklemediğini test eder.

## Description

* İşlemcinin AVX ve AVX2 komut kümelerini destekleyip desteklemediğini Windows API (kernel32.dll IsProcessorFeaturePresent) kullanarak kontrol eder.
* AVX ve AVX2 boolean özelliklerine sahip bir nesne döndürür.
* Yapay zeka/ML iş yükleri için donanım uyumluluğunu belirlemede kullanışlıdır.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

CPU komut seti desteğini kontrol eder ve AVX/AVX2 kullanılabilirliğini döndürür.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-NumberOfCpuCores.md)
