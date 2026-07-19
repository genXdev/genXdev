# Get-AtEyeLengthSizeInMM

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 팔 길이만큼 떨어진 물체의 겉보기 크기를 mm 단위로 계산합니다.

## Description

평균 성인 팔 길이(약 0.7미터)에서 보았을 때 물체의 겉보기 크기를 계산합니다. 실제 크기와 거리가 주어집니다. 계산은 각크기에 대한 작은 각 근사를 사용합니다.

## Syntax

```powershell
Get-AtEyeLengthSizeInMM [-DistanceInMeters] <double> [-SizeInMeters] <double> [-EyeToArmLengthInMeters <double>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | 물체까지의 거리(미터). |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | 미터 단위의 실제 객체 크기입니다. |
| `-EyeToArmLengthInMeters` | Double | — | — | Named | `0` | 팔 길이 거리(미터)입니다. 기본값은 0.7입니다. |

## Examples

### Example 1

```powershell
Get-AtEyeLengthSizeInMM -DistanceInMeters 10 -SizeInMeters 1
```

팔 길이에서 10미터 거리에 있는 1미터 크기의 물체에 대한 겉보기 크기를 계산합니다.

## Related Links

- [Get-AtEyeLengthSizeInMM on GitHub](https://github.com/genXdev/genXdev)
