# Get-HasCapableGpu

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Determines if a CUDA-capable GPU with sufficient memory is present.

## Description

Checks the system for CUDA-compatible GPUs with at least 4GB of video RAM. It uses Windows Management Instrumentation (WMI) to query installed video controllers and verify their memory capacity. This check is essential for AI workloads that require significant GPU memory.

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

Checks if the system has a CUDA-capable GPU with sufficient memory.

## Related Links

- [Get-HasCapableGpu on GitHub](https://github.com/genXdev/genXdev)
