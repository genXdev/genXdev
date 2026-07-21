# Get-NumberOfCpuCores

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Sistemdeki mantıksal CPU çekirdeklerinin toplam sayısını hesaplar ve döndürür.

## Description

Windows Yönetim Araçları (WMI) aracılığıyla sistem donanımını sorgulayarak toplam mantıksal CPU çekirdeği sayısını belirler. Cmdlet, fiziksel çekirdek sayısını 2 ile çarparak hyperthreading'i hesaba katar. Bu bilgi, paralel işleme görevlerini optimize etmek ve sistem yeteneklerini anlamak için kullanışlıdır.

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

Sistemde bulunan toplam mantıksal CPU çekirdeği sayısını alır.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-MonitorCount.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-CpuAvx.md)
