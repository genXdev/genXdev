# Get-HasCapableGpu

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Bestimmt, ob eine CUDA-fähige GPU mit ausreichendem Speicher vorhanden ist.

## Description

Überprüft das System auf CUDA-kompatible GPUs mit mindestens 4 GB Videospeicher. Dabei wird die Windows-Verwaltungsinstrumentation (WMI) verwendet, um installierte Videocontroller abzufragen und deren Speicherkapazität zu überprüfen. Diese Prüfung ist für KI-Workloads unerlässlich, die einen erheblichen GPU-Speicher benötigen.

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

Überprüft, ob das System eine CUDA-fähige GPU mit ausreichendem Speicher besitzt.

## Related Links

- [Get-HasCapableGpu on GitHub](https://github.com/genXdev/genXdev)
