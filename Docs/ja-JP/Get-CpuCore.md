# Get-CpuCore

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> システム内の論理CPUコアの総数を計算して返します。

## Description

Windows Management Instrumentation (WMI) を通じてシステムのハードウェアを照会し、論理CPUコアの総数を特定します。この関数は、物理コア数に2を掛けることでハイパースレッディングを考慮します。

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

論理CPUコアの総数を取得します。

## Related Links

- [Get-CpuCore on GitHub](https://github.com/genXdev/genXdev)
