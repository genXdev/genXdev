# Get-FreeFallDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-FreeFallDistance [-DurationInSeconds] <double> [[-TerminalVelocityInMetersPerSecond] <double>] [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | Время падения в секундах |
| `-TerminalVelocityInMetersPerSecond` | Double | — | — | 1 | `0` | Конечная скорость в метрах в секунду (по умолчанию: 53) |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Ускорение свободного падения в м/с² (по умолчанию: 9,81) |
| `-As` | String | — | — | 3 | — | Единица измерения выходного расстояния |

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
