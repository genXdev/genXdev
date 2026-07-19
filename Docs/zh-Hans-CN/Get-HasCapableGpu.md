# Get-HasCapableGpu

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 检测是否存在具备足够内存的CUDA兼容GPU。

## Description

检查系统中是否有至少4GB显存的CUDA兼容GPU。它使用Windows管理规范（WMI）查询已安装的显卡控制器并验证其内存容量。此检查对于需要大量GPU内存的AI工作负载至关重要。

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

检查系统是否具有足够内存的CUDA兼容GPU。

## Related Links

- [Get-HasCapableGpu on GitHub](https://github.com/genXdev/genXdev)
