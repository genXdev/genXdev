# Get-MagnificationByObjectDistanceAndImageDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 렌즈의 배율을 계산합니다.

## Description

m = - (상(image distance) / 물체 거리(object distance))를 사용합니다.

## Syntax

```powershell
Get-MagnificationByObjectDistanceAndImageDistance [-ObjectDistanceInMeters] <double> [-ImageDistanceInMeters] <double> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ObjectDistanceInMeters` | Double | ✅ | — | 0 | `0` | 객체 거리(미터) |
| `-ImageDistanceInMeters` | Double | ✅ | — | 1 | `0` | 이미지 거리(미터) |

## Examples

### Example 1

```powershell
Get-MagnificationByObjectDistanceAndImageDistance -ObjectDistanceInMeters 0.5 -ImageDistanceInMeters 1
```

물체 거리 0.5m와 상 거리 1m로 배율을 계산합니다.

### Example 2

```powershell
Get-MagnificationByObjectDistanceAndImageDistance 0.3 0.6
```

위치 매개변수를 사용하여 배율을 계산합니다.

## Related Links

- [Get-MagnificationByObjectDistanceAndImageDistance on GitHub](https://github.com/genXdev/genXdev)
