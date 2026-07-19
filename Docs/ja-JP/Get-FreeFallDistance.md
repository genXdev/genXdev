# Get-FreeFallDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 与えられた時間内での自由落下中の落下距離を計算します。

## Description

空気抵抗と終端速度を考慮した数値的手法を用いて自由落下中の落下距離を計算します。

## Syntax

```powershell
Get-FreeFallDistance [-DurationInSeconds] <double> [[-TerminalVelocityInMetersPerSecond] <double>] [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | 落下の時間（秒） |
| `-TerminalVelocityInMetersPerSecond` | Double | — | — | 1 | `0` | メートル毎秒での終端速度（デフォルト: 53） |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | 重力加速度（m/s²）、デフォルト値：9.81 |
| `-As` | String | — | — | 3 | — | 出力距離の単位 |

## Examples

### Example 1

```powershell
Get-FreeFallDistance -DurationInSeconds 10 -TerminalVelocityInMetersPerSecond 53 -As "feet"
```

10秒間の落下距離をフィートで計算します。

### Example 2

```powershell
Get-FreeFallDistance 5
```

5秒間の距離をメートル単位で計算します。

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
