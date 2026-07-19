# Get-ApparentSizeAtArmLength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет видимый размер объекта на расстоянии вытянутой руки.

## Description

Вычисляет видимый размер с использованием аппроксимации малых углов.

## Syntax

```powershell
Get-ApparentSizeAtArmLength [-DistanceInMeters] <double> [-SizeInMeters] <double> [[-ArmLengthInMeters] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | Расстояние до объекта в метрах |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | Фактический размер объекта в метрах |
| `-ArmLengthInMeters` | Double | — | — | 2 | `0` | Длина руки в метрах (по умолчанию: 0.7) |
| `-As` | String | — | — | 3 | — | Единица измерения выходного размера |

## Examples

### Example 1

```powershell
Get-ApparentSizeAtArmLength -DistanceInMeters 10 -SizeInMeters 1 -As "centimeters"
```

Вычисляет видимый размер объекта высотой 1 метр на расстоянии 10 метров.

### Example 2

```powershell
Get-ApparentSizeAtArmLength 10 1
```

Вычисляет видимый размер с использованием позиционных параметров.

## Related Links

- [Get-ApparentSizeAtArmLength on GitHub](https://github.com/genXdev/genXdev)
