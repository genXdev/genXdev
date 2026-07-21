# Get-NumberOfCpuCores

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> システム内の論理CPUコアの総数を計算して返します。

## Description

Windows Management Instrumentation (WMI) を使用してシステムハードウェアを照会し、論理CPUコアの総数を特定します。このコマンドレットは、ハイパースレッディングを考慮し、物理コア数に2を掛けます。この情報は、並列処理タスクの最適化やシステム機能の理解に役立ちます。

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

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-MonitorCount.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Test-CpuAvx.md)
