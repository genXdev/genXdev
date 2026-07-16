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
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | De tijdsduur van de val in seconden |
| `-TerminalVelocityInMetersPerSecond` | Double | — | — | 1 | `0` | De eindsnelheid in meter per seconde (standaard: 53) |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | De versnelling door de zwaartekracht in m/s² (standaard: 9,81) |
| `-As` | String | — | — | 3 | — | De eenheid voor de uitvoerafstand |

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
