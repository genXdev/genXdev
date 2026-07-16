# Get-ApparentSizeAtArmLength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-ApparentSizeAtArmLength on GitHub](https://github.com/genXdev/genXdev)
