# Get-AtEyeLengthSizeInMM

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 腕の長さにある物体の見かけのサイズをmm単位で計算します。

## Description

物体の実際のサイズと距離が与えられたとき、それを平均的な成人の腕の長さ（約0.7メートル）で見た場合の見かけのサイズを計算します。この計算では、角度サイズの小角近似を用います。

## Syntax

```powershell
Get-AtEyeLengthSizeInMM [-DistanceInMeters] <double> [-SizeInMeters] <double> [-EyeToArmLengthInMeters <double>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | 物体までの距離（メートル）。 |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | メートル単位のオブジェクトの実際のサイズ。 |
| `-EyeToArmLengthInMeters` | Double | — | — | Named | `0` | 腕の長さの距離をメートル単位で指定します。デフォルト値は0.7です。 |

## Examples

### Example 1

```powershell
Get-AtEyeLengthSizeInMM -DistanceInMeters 10 -SizeInMeters 1
```

腕の長さでの見かけの大きさを、10メートル先にある1メートルの物体について計算します。

## Related Links

- [Get-AtEyeLengthSizeInMM on GitHub](https://github.com/genXdev/genXdev)
