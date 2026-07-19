# Get-NumberOfCpuCores

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> システム内の論理CPUコアの総数を計算して返します。

## Description

Windows Management Instrumentation (WMI) を使用してシステムのハードウェアを照会し、論理CPUコアの総数を特定します。このコマンドレットは、物理コア数を2倍にすることでハイパースレッディングを考慮します。この情報は、並列処理タスクの最適化やシステムの能力を理解するのに役立ちます。

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

システム上で利用可能な論理CPUコアの総数を取得します。

## Related Links

- [Get-NumberOfCpuCores on GitHub](https://github.com/genXdev/genXdev)
