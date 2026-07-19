# Get-ApparentSizeAtArmLength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 팔 길이에서 물체의 겉보기 크기를 계산합니다.

## Description

작은 각도 근사를 사용하여 겉보기 크기를 계산합니다.

## Syntax

```powershell
Get-ApparentSizeAtArmLength [-DistanceInMeters] <double> [-SizeInMeters] <double> [[-ArmLengthInMeters] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | 물체까지의 거리(미터) |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | 객체의 실제 크기(미터 단위) |
| `-ArmLengthInMeters` | Double | — | — | 2 | `0` | 팔 길이(미터 단위, 기본값: 0.7) |
| `-As` | String | — | — | 3 | — | 출력 크기의 단위 |

## Examples

### Example 1

```powershell
Get-ApparentSizeAtArmLength -DistanceInMeters 10 -SizeInMeters 1 -As "centimeters"
```

10미터 거리에 있는 1미터 물체의 겉보기 크기를 계산합니다.

### Example 2

```powershell
Get-ApparentSizeAtArmLength 10 1
```

위치 매개변수를 사용하여 겉보기 크기를 계산합니다.

## Related Links

- [Get-ApparentSizeAtArmLength on GitHub](https://github.com/genXdev/genXdev)
