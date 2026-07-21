# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Określa, czy jest dostępny procesor graficzny obsługujący technologię CUDA z wystarczającą ilością pamięci.

## Description

Sprawdza system pod kątem kart graficznych kompatybilnych z CUDA z co najmniej 4 GB pamięci VRAM. Używa Instrumentacji Zarządzania Windows (WMI) do odpytywania zainstalowanych kontrolerów wideo i weryfikacji ich pojemności pamięci. To sprawdzenie jest niezbędne dla obciążeń AI wymagających znacznej pamięci GPU.

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

Sprawdza, czy system posiada procesor graficzny obsługujący technologię CUDA z wystarczającą ilością pamięci.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-CpuAvx.md)
