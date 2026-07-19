# Get-HasCapableGpu

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Bepaalt of er een CUDA-compatibele GPU met voldoende geheugen aanwezig is.

## Description

Controleert het systeem op CUDA-compatibele GPU's met minimaal 4 GB videogeheugen. Het gebruikt Windows Management Instrumentation (WMI) om geïnstalleerde videocontrollers te doorzoeken en hun geheugencapaciteit te verifiëren. Deze controle is essentieel voor AI-workloads die aanzienlijke GPU-geheugen vereisen.

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

Controleert of het systeem een CUDA-capabele GPU heeft met voldoende geheugen.

## Related Links

- [Get-HasCapableGpu on GitHub](https://github.com/genXdev/genXdev)
