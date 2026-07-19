# Get-MagnificationByObjectDistanceAndImageDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算透镜的放大率。

## Description

使用 m = -(像距/物距)。

## Syntax

```powershell
Get-MagnificationByObjectDistanceAndImageDistance [-ObjectDistanceInMeters] <double> [-ImageDistanceInMeters] <double> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ObjectDistanceInMeters` | Double | ✅ | — | 0 | `0` | 物体距离（米） |
| `-ImageDistanceInMeters` | Double | ✅ | — | 1 | `0` | Image distance in meters |

## Examples

### Example 1

```powershell
Get-MagnificationByObjectDistanceAndImageDistance -ObjectDistanceInMeters 0.5 -ImageDistanceInMeters 1
```

Magnification = image distance / object distance = 1 m / 0.5 m = 2.

### Example 2

```powershell
Get-MagnificationByObjectDistanceAndImageDistance 0.3 0.6
```

使用位置参数计算放大率。

## Related Links

- [Get-MagnificationByObjectDistanceAndImageDistance on GitHub](https://github.com/genXdev/genXdev)
