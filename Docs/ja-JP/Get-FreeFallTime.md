# Get-FreeFallTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 物体が自由落下中に与えられた高さから落下するのに必要な時間を計算します。

## Description

空気抵抗と終端速度を考慮した数値的手法を用いて、物体が指定された高さから落下するのに必要な時間を計算します。この計算では、終端速度に制約のある落下物体の物理を正確にモデル化するために、小さな時間ステップを使用します。

## Syntax

```powershell
Get-FreeFallTime [-HeightInMeters] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | 落下高さ（メートル） |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | 終端速度（メートル毎秒、デフォルト：人間の場合53 m/s） |
| `-As` | String | — | — | 2 | — | 出力時間の単位 |

## Examples

### Example 1

```powershell
Get-FreeFallTime -HeightInMeters 100 -TerminalVelocityInMs 53
```

デフォルトの人間の終端速度で100メートル落下するのに必要な時間を計算します。

### Example 2

```powershell
Get-FreeFallTime 50
```

位置パラメータとデフォルトの終端速度を使って、50メートル落下するのに必要な時間を計算します。

### Example 3

```powershell
Get-FreeFallTime -HeightInMeters 100 -As "minutes"
```

100メートル落下するのに必要な時間を計算し、結果を分単位で返します。

## Related Links

- [Get-FreeFallTime on GitHub](https://github.com/genXdev/genXdev)
