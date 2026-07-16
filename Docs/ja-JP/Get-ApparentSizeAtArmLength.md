# Get-ApparentSizeAtArmLength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ApparentSizeAtArmLength [-DistanceInMeters] <double> [-SizeInMeters] <double> [[-ArmLengthInMeters] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | 物体までの距離（メートル） |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | オブジェクトの実際のサイズ（メートル） |
| `-ArmLengthInMeters` | Double | — | — | 2 | `0` | アームの長さ（メートル、デフォルト：0.7） |
| `-As` | String | — | — | 3 | — | 出力サイズの単位 |

## Related Links

- [Get-ApparentSizeAtArmLength on GitHub](https://github.com/genXdev/genXdev)
