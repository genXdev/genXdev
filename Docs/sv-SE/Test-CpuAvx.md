# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Testar om processorn stöder AVX- och AVX2-instruktionsuppsättningar.

## Description

* Kontrollerar om processorn stöder AVX- och AVX2-instruktionsuppsättningar med hjälp av Windows API (kernel32.dll IsProcessorFeaturePresent).
* Returnerar ett objekt med booleska egenskaper för AVX och AVX2.
* Användbart för att avgöra hårdvarukompatibilitet för AI/ML-arbetsbelastningar.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

Kontrollerar stöd för CPU-instruktionsuppsättning och returnerar tillgängligheten för AVX/AVX2.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-NumberOfCpuCores.md)
