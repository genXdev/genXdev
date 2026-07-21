# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Yeterli belleğe sahip CUDA uyumlu bir GPU'nun mevcut olup olmadığını belirler.

## Description

Sistemi, en az 4GB video RAM'e sahip CUDA uyumlu GPU'lar için kontrol eder. Windows Yönetim Araçları'nı (WMI) kullanarak yüklü video denetleyicilerini sorgular ve bellek kapasitelerini doğrular. Bu kontrol, önemli GPU belleği gerektiren AI iş yükleri için gereklidir.

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

Sistemin yeterli belleğe sahip CUDA destekli bir GPU'ya sahip olup olmadığını kontrol eder.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-CpuAvx.md)
