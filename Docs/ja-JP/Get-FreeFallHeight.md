# Get-FreeFallHeight

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 与えられた時間における自由落下の落下距離を計算します。

## Description

空気抵抗と終端速度を考慮した数値的手法を用いて自由落下中の落下距離を計算します。

## Syntax

```powershell
Get-FreeFallHeight [-DurationInSeconds] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | 落下の時間（秒） |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | 終端速度（メートル毎秒、デフォルト：人間の場合53 m/s） |
| `-As` | String | — | — | 2 | — | 出力高さの単位 |

## Examples

### Example 1

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -TerminalVelocityInMs 53
```

人間の終端速度をデフォルト値として、10秒間に落下する高さを計算します。

### Example 2

```powershell
Get-FreeFallHeight 5
```

位置パラメータとデフォルトの終端速度を用いて、5秒間で落下した高さを計算します。

### Example 3

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -As "feet"
```

10秒間に落下する高さを計算し、その結果をフィートで返します。

## Related Links

- [Get-FreeFallHeight on GitHub](https://github.com/genXdev/genXdev)
