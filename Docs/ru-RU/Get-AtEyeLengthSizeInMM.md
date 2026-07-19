# Get-AtEyeLengthSizeInMM

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет видимый размер объекта на расстоянии вытянутой руки в миллиметрах.

## Description

Вычисляет размер, который объект имел бы на расстоянии вытянутой руки среднего взрослого человека (приблизительно 0,7 метра), исходя из его фактического размера и расстояния. В расчете используется приближение малых углов для углового размера.

## Syntax

```powershell
Get-AtEyeLengthSizeInMM [-DistanceInMeters] <double> [-SizeInMeters] <double> [-EyeToArmLengthInMeters <double>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | Расстояние до объекта в метрах. |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | Фактический размер объекта в метрах. |
| `-EyeToArmLengthInMeters` | Double | — | — | Named | `0` | Расстояние вытянутой руки в метрах. Значение по умолчанию — 0,7. |

## Examples

### Example 1

```powershell
Get-AtEyeLengthSizeInMM -DistanceInMeters 10 -SizeInMeters 1
```

Вычисляет видимый размер на расстоянии вытянутой руки для объекта размером 1 метр на расстоянии 10 метров.

## Related Links

- [Get-AtEyeLengthSizeInMM on GitHub](https://github.com/genXdev/genXdev)
