# Get-MonitorCount

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> システムに接続されているディスプレイモニターの総数を取得します。

## Description

* Windows Presentation Foundation (WPF) の Screen ヘルパークラスを使用して、
  現在システムに接続されている物理ディスプレイモニターの数を正確に判断します。
* これには、アクティブなモニターと検出済みだが無効になっているモニターの両方が含まれます。

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

接続されているモニターの総数を返します（例：2）。

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

検出プロセスを示す詳細出力でモニター数を返します。

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Test-CpuAvx.md)
