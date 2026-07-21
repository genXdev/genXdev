# Get-CpuCore

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Sistemdeki mantıksal CPU çekirdeklerinin toplam sayısını hesaplar ve döndürür.

## Description

Windows Yönetim Araçları (WMI) aracılığıyla sistem donanımını sorgulayarak toplam mantıksal CPU çekirdeği sayısını belirler. İşlev, fiziksel çekirdek sayısını 2 ile çarparak hiper iş parçacığını (hyperthreading) hesaba katar.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

Mantıksal CPU çekirdeklerinin toplam sayısını alır.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AudioDeviceNames.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-CpuAvx.md)
