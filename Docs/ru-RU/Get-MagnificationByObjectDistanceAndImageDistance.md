# Get-MagnificationByObjectDistanceAndImageDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет увеличение для линзы.

## Description

Используется m = - (расстояние до изображения / расстояние до объекта).

## Syntax

```powershell
Get-MagnificationByObjectDistanceAndImageDistance [-ObjectDistanceInMeters] <double> [-ImageDistanceInMeters] <double> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ObjectDistanceInMeters` | Double | ✅ | — | 0 | `0` | Расстояние до объекта в метрах |
| `-ImageDistanceInMeters` | Double | ✅ | — | 1 | `0` | Расстояние до изображения в метрах |

## Examples

### Example 1

```powershell
Get-MagnificationByObjectDistanceAndImageDistance -ObjectDistanceInMeters 0.5 -ImageDistanceInMeters 1
```

Вычисляет увеличение при расстоянии до объекта 0.5 м и расстоянии до изображения 1 м.

### Example 2

```powershell
Get-MagnificationByObjectDistanceAndImageDistance 0.3 0.6
```

Вычисляет увеличение, используя позиционные параметры.

## Related Links

- [Get-MagnificationByObjectDistanceAndImageDistance on GitHub](https://github.com/genXdev/genXdev)
