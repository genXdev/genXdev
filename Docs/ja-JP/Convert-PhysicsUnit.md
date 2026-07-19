# Convert-PhysicsUnit

> **Module:** GenXdev.Helpers.Physics | **Type:** Function | **Aliases:** —

## Synopsis

> 物理単位を同じカテゴリ内で別の単位に変換します。

## Description

この関数は、長さ、時間、速度などのカテゴリにおいて、互換性のある単位間で物理量を変換します。単位からカテゴリを推測し、互換性のない変換ではエラーをスローします。

## Syntax

```powershell
Convert-PhysicsUnit -Value <Double> -FromUnit <String> -ToUnit <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Value` | Double | ✅ | — | 0 | — | 変換する数値 |
| `-FromUnit` | String | ✅ | — | 1 | — | 入力値の単位 |
| `-ToUnit` | String | ✅ | — | 2 | — | 目的の出力単位 |

## Examples

### Convert-PhysicsUnit -Value 100 -FromUnit "meters" -ToUnit "feet"

```powershell
Convert-PhysicsUnit -Value 100 -FromUnit "meters" -ToUnit "feet"
```

100メートルをフィートに変換します。

### Convert-PhysicsUnit 10 "seconds" "minutes"

```powershell
Convert-PhysicsUnit 10 "seconds" "minutes"
```

秒を分に変換します: 10 / 60 = 0.1667 分

## Outputs

- `Double`

## Related Links

- [Convert-PhysicsUnit on GitHub](https://github.com/genXdev/genXdev)
