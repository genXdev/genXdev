# Get-ResonantFrequencyByLengthAndSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-SpeedInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]

Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LengthInMeters` | Double | ✅ | — | 0 | `0` | 长度（米） |
| `-SpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | 波速（米/秒） *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | 媒介 *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | 赫兹 (Hz) |

## Related Links

- [Get-ResonantFrequencyByLengthAndSpeed on GitHub](https://github.com/genXdev/genXdev)
