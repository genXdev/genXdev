# Get-DesktopScalingFactor

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 指定されたモニターのWindows表示スケーリング係数（DPI設定）を取得します。

## Description

* システム内のモニターに設定されている現在のWindows表示スケーリング率を取得します。
* スケーリング率はパーセンテージで表され、100は標準スケーリング（96 DPI）を示します。一般的な値は100、125、150、200です。
* モニターが指定されていない場合は、プライマリディスプレイのスケーリング率を返します。

## Syntax

```powershell
Get-DesktopScalingFactor [[-Monitor] <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Monitor` | Int32 | — | — | 0 | `0` | 確認するモニターのインデックス（0 = プライマリモニター） |

## Examples

### Example 1

```powershell
Get-DesktopScalingFactor -Monitor 0
```

プライマリモニターのスケーリング率（パーセント）を返します。

### Example 2

```powershell
Get-DesktopScalingFactor 1
```

位置パラメータを使用して、2番目のモニターの拡大縮小率を返します。

## Related Links

- [Get-DesktopScalingFactor on GitHub](https://github.com/genXdev/genXdev)
