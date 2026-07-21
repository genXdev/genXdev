# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Avgör om en CUDA-kompatibel GPU med tillräckligt minne finns.

## Description

Kontrollerar systemet efter CUDA-kompatibla GPU:er med minst 4 GB videominne. Den använder Windows Management Instrumentation (WMI) för att fråga installerade videokontroller och verifiera deras minneskapacitet. Denna kontroll är avgörande för AI-arbetsbelastningar som kräver betydande GPU-minne.

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

Kontrollerar om systemet har en CUDA-kompatibel GPU med tillräckligt minne.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Test-CpuAvx.md)
