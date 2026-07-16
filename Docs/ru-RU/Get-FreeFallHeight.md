# Get-FreeFallHeight

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-FreeFallHeight [-DurationInSeconds] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | Время падения в секундах |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | Конечная скорость в метрах в секунду (по умолчанию: 53 м/с для человека) |
| `-As` | String | — | — | 2 | — | Единица измерения выходной высоты |

## Related Links

- [Get-FreeFallHeight on GitHub](https://github.com/genXdev/genXdev)
