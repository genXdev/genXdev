# Get-FreeFallTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-FreeFallTime [-HeightInMeters] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | Высота падения в метрах |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | Конечная скорость в метрах в секунду (по умолчанию: 53 м/с для человека) |
| `-As` | String | — | — | 2 | — | Единица измерения времени вывода |

## Related Links

- [Get-FreeFallTime on GitHub](https://github.com/genXdev/genXdev)
